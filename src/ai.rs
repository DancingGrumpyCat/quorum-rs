use crate::board::*;
use std::cmp;
use std::collections::BinaryHeap;
use std::sync::RwLock;

type Valuation = i32;

pub trait Heuristic {
	fn heuristic(&self, board: &Board) -> Valuation;
}

pub const TRANSPOSITION_TABLE_SIZE: usize = 1048576;

pub struct TranspositionTable {
	contents: Vec<Vec<(u64, Valuation)>>
}

impl TranspositionTable {
	pub fn new() -> TranspositionTable {
		let mut contents = Vec::with_capacity(TRANSPOSITION_TABLE_SIZE);
		for _ in 0..TRANSPOSITION_TABLE_SIZE {
			contents.push(vec![]);
		}
		TranspositionTable { contents }
	}

	pub fn add(&mut self, board: &Board, value: Valuation) {
		self.contents[board.zobrist_hash as usize % TRANSPOSITION_TABLE_SIZE].push((board.zobrist_hash, value));
	}

	pub fn get(&self, board: &Board) -> Option<Valuation> {
		self.contents[board.zobrist_hash as usize % TRANSPOSITION_TABLE_SIZE]
			.iter()
			.find(|(hash, _)| *hash == board.zobrist_hash)
			.map(|(_, value)| *value)
	}
}

impl Default for TranspositionTable {
	fn default() -> Self {
		Self::new()
	}
}

pub static TRANSPOSITION_TABLE: RwLock<TranspositionTable> = RwLock::new(TranspositionTable { contents: vec![] });

pub fn minimax_eval<H: Heuristic>(board: &Board, depth: usize, heuristic: &H, mut alpha: Valuation, mut beta: Valuation) -> Valuation {
	if let Some(value) = TRANSPOSITION_TABLE.read().unwrap().get(board) {
		return value;
	} else if depth == 0 {
		return heuristic.heuristic(board)
	} else if let Some(Color::White) = board.winner() {
		return Valuation::MAX;
	} else if let Some(Color::Black) = board.winner() {
		return Valuation::MIN;
	}
	match board.whose_move {
		Color::White => {
			let mut value = Valuation::MIN;

			let mut moves: Vec<_> = board.moves().collect();
			moves.sort_by_cached_key(|x| PieceCountHeuristic{}.heuristic(&board.apply(&x)));

			for mov in moves {
				value = cmp::max(value, minimax_eval(&board.apply(&mov), depth-1, heuristic, alpha, beta));
				if value >= beta { break; }
				alpha = cmp::max(alpha, value)
			}
			TRANSPOSITION_TABLE.write().unwrap().add(board, value);
			value
		},

		Color::Black => {
			let mut value = Valuation::MAX;

			let mut moves: Vec<_> = board.moves().collect();
			moves.sort_by_cached_key(|x| -PieceCountHeuristic{}.heuristic(&board.apply(&x)));

			for mov in moves {
				value = cmp::min(value, minimax_eval(&board.apply(&mov), depth-1, heuristic, alpha, beta));
				if value <= alpha { break; }
				beta = cmp::min(beta, value)
			}
			TRANSPOSITION_TABLE.write().unwrap().add(board, value);
			value
		}
	}
}

pub fn best_move<H: Heuristic>(board: &Board, depth: usize, heuristic: &H) -> Option<Move> {
	match board.whose_move {
		Color::White => board.moves().max_by_key(|mov| minimax_eval(&board.apply(mov), depth-1, heuristic, Valuation::MIN, Valuation::MAX)),
		Color::Black => board.moves().min_by_key(|mov| minimax_eval(&board.apply(mov), depth-1, heuristic, Valuation::MIN, Valuation::MAX))
	}
}

pub struct PieceCountHeuristic {}

impl Heuristic for PieceCountHeuristic {
	fn heuristic(&self, board: &Board) -> Valuation {
		(board.white.len() as Valuation) - (board.black.len() as Valuation)
	}
}

pub struct LegalMovesHeuristic {}

impl Heuristic for LegalMovesHeuristic {
	fn heuristic(&self, board: &Board) -> Valuation {
		let white_moves: Vec<_> = board.moves_of(Color::White).collect();
		let black_moves: Vec<_> = board.moves_of(Color::Black).collect();
		(white_moves.len() as Valuation) - (black_moves.len() as Valuation)
	}
}

pub struct CentroidDistanceHeuristic { pub power: f32 }

impl Heuristic for CentroidDistanceHeuristic {
	fn heuristic(&self, board: &Board) -> Valuation {
		let white_centroid = board.white.iter().cloned().map(|Coord(x,y)|
			(x as f32 / board.white.len() as f32,
			 y as f32 / board.white.len() as f32)
		).reduce(|(ax, ay), (bx, by)| (ax + bx, ay + by)).unwrap_or((0.0, 0.0));
		let black_centroid = board.black.iter().cloned().map(|Coord(x,y)|
			(x as f32 / board.black.len() as f32,
			 y as f32 / board.black.len() as f32)
		).reduce(|(ax, ay), (bx, by)| (ax + bx, ay + by)).unwrap_or((0.0, 0.0));

		let white_cum_distance: f32 = board.white.iter().cloned().map(
			|Coord(x, y)| ((x as f32 - white_centroid.0).abs() + (y as f32 - white_centroid.1).abs()).powf(self.power)
		).sum();

		let black_cum_distance: f32 = board.black.iter().cloned().map(
			|Coord(x, y)| ((x as f32 - black_centroid.0).abs() + (y as f32 - black_centroid.1).abs()).powf(self.power)
		).sum();

		((black_cum_distance - white_cum_distance) * 1000.0) as Valuation
	}
}

pub struct ConnectedComponentsHeuristic {}

impl Heuristic for ConnectedComponentsHeuristic {
	fn heuristic(&self, board: &Board) -> Valuation {
		let mut white_pieces = board.white.clone();
		let mut n_white_components = 0;
		while !white_pieces.is_empty() {
			let source = *white_pieces.iter().next().unwrap();
			n_white_components += 1;
			white_pieces = white_pieces.difference(board.flood_fill(Color::White, source));
		}
		let mut black_pieces = board.black.clone();
		let mut n_black_components = 0;
		while !black_pieces.is_empty() {
			let source = *black_pieces.iter().next().unwrap();
			n_black_components += 1;
			black_pieces = black_pieces.difference(board.flood_fill(Color::Black, source));
		}

		n_black_components as Valuation - n_white_components as Valuation
	}
}

pub struct NthSmallestStringHeuristic { pub n: usize }

impl Heuristic for NthSmallestStringHeuristic {
	fn heuristic(&self, board: &Board) -> Valuation {
		let mut white_sizes = BinaryHeap::new();
		let mut white_pieces = board.white.clone();
		while !white_pieces.is_empty() {
			let source = *white_pieces.iter().next().unwrap();
			let string = board.flood_fill(Color::White, source);
			white_sizes.push(string.len());
			white_pieces = white_pieces.difference(string);
		}
		for _ in 0..(self.n as Valuation - 1) {
			white_sizes.pop();
		}
		let white_nth_smallest = white_sizes.pop().unwrap_or(0);

		let mut black_sizes = BinaryHeap::new();
		let mut black_pieces = board.black.clone();
		while !black_pieces.is_empty() {
			let source = *black_pieces.iter().next().unwrap();
			let string = board.flood_fill(Color::Black, source);
			black_sizes.push(string.len());
			black_pieces = black_pieces.difference(string);
		}
		for _ in 0..(self.n as Valuation - 1) {
			black_sizes.pop();
		}
		let black_nth_smallest = black_sizes.pop().unwrap_or(0);

		black_nth_smallest as Valuation - white_nth_smallest as Valuation
	}
}

pub struct LinearCombinationHeuristic {
	pub terms: Vec<(Valuation, Box<dyn Heuristic>)>
}

impl Heuristic for LinearCombinationHeuristic {
	fn heuristic(&self, board: &Board) -> Valuation {
		let mut sum = 0;
		for (weight, subheuristic) in self.terms.iter() {
			sum += weight * subheuristic.heuristic(board);
		}
		sum
	}
}

pub fn playout<H: Heuristic>(heuristic: H, root: &Board) -> Option<Color> {
	// from root
	// get legal moves
	// choose one
	// repeat until no children (until winner)
	//
	let mut board = root.clone();
	let mut ply = 0;
	while board.winner().is_none() {
		let mut moves: Vec<_> = board.moves().collect();
		let goal = match board.whose_move { Color::White => 1, Color::Black => -1 };
		moves.sort_by_cached_key(|x| goal * -heuristic.heuristic(&board.apply(x)));
		if moves.is_empty() {
			println!("Board with no winner and no moves, on {:?}'s turn with max gap {:?}", board.whose_move, board.max_gap);
			board.show_board();
			panic!();
		}
		board = board.apply(&moves[0]);

		ply += 1;
		#[allow(clippy::modulo_one)]
		if ply % 1 == 0 {
			println!("Turn {} Heuristic {}", ply, heuristic.heuristic(&board));
			board.show_board();
		}
		if ply > 1000 { break; }
	}
	println!("{}", ply);
	board.show_board();
	board.winner()
}
