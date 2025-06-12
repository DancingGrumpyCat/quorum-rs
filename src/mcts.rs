use crate::board::*;

pub trait Heuristic {
	fn heuristic(&self, board: &Board) -> i32;
}

pub struct PieceCountHeuristic {}

impl Heuristic for PieceCountHeuristic {
	fn heuristic(&self, board: &Board) -> i32 {
		(board.white.len() as i32) - (board.black.len() as i32)
	}
}

pub struct LegalMovesHeuristic {}

impl Heuristic for LegalMovesHeuristic {
	fn heuristic(&self, board: &Board) -> i32 {
		let white_moves: Vec<_> = board.moves_of(Color::White);
		let black_moves: Vec<_> = board.moves_of(Color::Black);
		(white_moves.len() as i32) - (black_moves.len() as i32)
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
		moves.sort_by_key(|&x| goal * -heuristic.heuristic(&board.apply(x)));
		if moves.len() == 0 {
			println!("Board with no winner and no moves, on {:?}'s turn with max gap {:?}", board.whose_move, board.max_gap);
			board.show_board();
			panic!();
		}
		board = board.apply(moves[0]);

		ply += 1;
		if ply % 1 == 0 { board.show_board(); }
		if ply > 200 { break; }
	}
	println!("{}", ply);
	board.show_board();
	board.winner()
}
