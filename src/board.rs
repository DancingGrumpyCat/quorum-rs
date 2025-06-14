use im::HashSet;
use std::cmp;
use itertools::Itertools;

#[derive(Copy, Clone, PartialEq, Eq, PartialOrd, Ord, Debug, Hash)]
pub struct Coord(pub i32, pub i32);

#[derive(Copy, Clone, PartialEq, Eq, PartialOrd, Ord, Debug, Hash)]
pub enum Color { Black, White }

impl Color {
	fn opponent(&self) -> Color {
		match &self {
			Color::White => Color::Black,
			Color::Black => Color::White
		}
	}
}

#[derive(Clone, PartialEq, Eq, PartialOrd, Ord, Debug, Hash)]
pub enum Move {
	Movement { color: Color, active: Coord, pivot: Coord, conversions: Vec<Coord> },
	Placement { color: Color, at: Coord }
}

impl Move {
	pub fn dest(&self) -> Coord {
		match self {
			Move::Movement { active, pivot, .. } => {
				let dx = pivot.0 - active.0;
				let dy = pivot.1 - active.1;
				Coord(pivot.0 + dx, pivot.1 + dy)
			},
			Move::Placement { at, .. } => at.clone()
		}
	}

	pub fn gap(&self) -> i32 {
		match self {
			Move::Movement { active, pivot, .. } => {
				assert!(active != pivot);
				cmp::max((active.0 - pivot.0).abs() - 1, (active.1 - pivot.1).abs() - 1)
			},
			Move::Placement { .. } => 0
		}
	}

	pub fn movement(color: Color, active: Coord, pivot: Coord) -> Move {
		Move::Movement { color, active, pivot, conversions: vec![] }
	}
}

#[derive(Debug, PartialEq, Eq)]
pub enum IllegalMoveReason {
	ActiveNotOwned, PivotNotOwned, DestNotEmpty, DestNotInBounds, GapTooBig, EmptyReserve
}


#[derive(Clone, PartialEq, Eq, Debug, Hash)]
pub struct Board {
	pub board_size: i32,
	pub max_gap: i32,
	pub white: HashSet<Coord>,
	pub black: HashSet<Coord>,
	pub white_reserve: i32,
	pub black_reserve: i32,
	pub whose_move: Color
}

impl Board {
	pub fn from_position(board_size: i32, whose_move: Color, white: HashSet<Coord>, black: HashSet<Coord>) -> Board {
		let white_illegals: Vec<_> = white.iter().cloned().filter(|&Coord(x, y)| x < 0 || y < 0 || x >= board_size || y >= board_size).collect();
		if white_illegals.len() > 0 {
			panic!("White pieces out of bounds for {board_size:?}x{board_size:?} board: {:?}", white);
		}
		let black_illegals: Vec<_> = black.iter().cloned().filter(|&Coord(x, y)| x < 0 || y < 0 || x >= board_size || y >= board_size).collect();
		if black_illegals.len() > 0 {
			panic!("Black pieces out of bounds for {board_size:?}x{board_size:?} board: {:?}", black);
		}
		Board { board_size, whose_move, white, black, white_reserve: 0, black_reserve: 0, max_gap: 2 }
	}

	pub fn all_pieces(&self) -> HashSet<Coord> {
		&self.white + &self.black
	}

	pub fn all_coords<'a>(&'a self) -> impl Iterator<Item=Coord> + 'a {
		(0..self.board_size).into_iter().flat_map(|x| (0..self.board_size).into_iter().map(move |y| Coord(x,y)))
	}

	pub fn in_bounds(&self, coord: Coord) -> bool {
		0 <= coord.0 && coord.0 < self.board_size &&
		0 <= coord.1 && coord.1 < self.board_size
	}

	pub fn start_position(board_size: i32) -> Board {
		assert!(board_size >= 8);

		let mut black = HashSet::new();
		let mut white = HashSet::new();
		for x in 0..board_size {
			for y in 0..board_size {
				if x + y < 4 || x + y > 2*board_size - 6 {
					white.insert(Coord(x,y));
				}
				else if board_size - x + y < 5 || board_size - x + y > 2*board_size - 5 {
					black.insert(Coord(x,y));
				}
			}
		}

		Board::from_position(board_size, Color::White, white, black)
	}

	pub fn show_board(&self) {
		for y in (0..self.board_size).rev() {
			for x in 0..self.board_size {
				if self.white.contains(&Coord(x,y)) && self.black.contains(&Coord(x,y)) {
					print!("☯");
				} else if self.white.contains(&Coord(x,y)) {
					print!("●");
				} else if self.black.contains(&Coord(x,y)) {
					print!("○");
				} else if ((x as f32) + 0.5 - ((self.board_size as f32) / 2.0)).abs() < 1.0
				           && ((y as f32) + 0.5 - ((self.board_size as f32) / 2.0)).abs() < 1.0 {
					print!("+");
				} else {
					print!("·");
				}
				print!(" ");
			}
			println!("");
		}
	}

	pub fn valid_move(&self, mov: &Move) -> Option<IllegalMoveReason> {
		match mov {
			Move::Movement { color, active, pivot, .. } => {
				let pieces = if *color == Color::Black { &self.black } else { &self.white };
				if !pieces.contains(&active) {
					return Some(IllegalMoveReason::ActiveNotOwned);
				}
				if !pieces.contains(&pivot) {
					return Some(IllegalMoveReason::PivotNotOwned);
				}
				let dest = mov.dest();
				if self.all_pieces().contains(&dest) {
					return Some(IllegalMoveReason::DestNotEmpty);
				}
				if !self.in_bounds(dest) {
					return Some(IllegalMoveReason::DestNotInBounds);
				}
				if mov.gap() > self.max_gap {
					return Some(IllegalMoveReason::GapTooBig);
				}
				None
			},
			Move::Placement { color, at } => {
				if self.all_pieces().contains(&at) {
					Some(IllegalMoveReason::DestNotEmpty)
				} else if self.reserve_of(*color) <= 0 {
					Some(IllegalMoveReason::EmptyReserve)
				} else {
					None
				}
			}
		}
	}

	pub fn pieces_of(&self, color: Color) -> &HashSet<Coord> {
		match color {
			Color::White => &self.white,
			Color::Black => &self.black
		}
	}

	pub fn pieces_of_mut(&mut self, color: Color) -> &mut HashSet<Coord> {
		match color {
			Color::White => &mut self.white,
			Color::Black => &mut self.black
		}
	}

	pub fn reserve_of(&self, color: Color) -> i32 {
		match color {
			Color::White => self.white_reserve,
			Color::Black => self.black_reserve
		}
	}

	pub fn reserve_of_mut(&mut self, color: Color) -> &mut i32 {
		match color {
			Color::White => &mut self.white_reserve,
			Color::Black => &mut self.black_reserve
		}
	}

	pub fn insert_for(&self, color: Color, coord: Coord) -> Option<Coord> {
		match color {
			Color::White => self.white.clone().insert(coord),
			Color::Black => self.black.clone().insert(coord)
		}
	}

	pub fn remove_for(&self, color: Color, coord: Coord) -> Option<Coord> {
		match color {
			Color::White => self.white.clone().remove(&coord),
			Color::Black => self.black.clone().insert(coord)
		}
	}

	pub fn neighborhood(&self, coord: Coord) -> Vec<Coord> {
		let Coord(x, y) = coord;
		let mut neighbors = vec![];
		for dx in -1..=1 {
			for dy in -1..=1 {
				if dx == 0 && dy == 0 { continue; }
				let position = Coord(x+dx, y+dy);
				if !self.in_bounds(position) {
					continue;
				}
				neighbors.push(position);
			}
		}
		neighbors
	}

	pub fn orthogonal_neighborhood(&self, coord: Coord) -> Vec<Coord> {
		let Coord(x,y) = coord;
		vec![Coord(x+1, y), Coord(x-1, y), Coord(x, y+1), Coord(x, y-1)]
	}

	pub fn flood_fill(&self, color: Color, source: Coord) -> HashSet<Coord> {
		let mut visited = HashSet::from(vec![source]);
		let mut queued: HashSet<Coord> = self.orthogonal_neighborhood(source).into_iter().collect();
		while !queued.is_empty() {
			let mut next_queued: HashSet<Coord> = HashSet::new();
			for neighbor in queued {
				if self.pieces_of(color).contains(&neighbor) && !visited.contains(&neighbor) {
					visited.insert(neighbor);
					next_queued.extend(self.orthogonal_neighborhood(neighbor));
				}
			}
			queued = next_queued;
		}
		visited
	}

	pub fn color_connected(&self, color: Color) -> bool {
		let source: Coord = self.pieces_of(color).iter().next().unwrap().clone();
		self.flood_fill(color, source).len() == self.pieces_of(color).len()
	}

	pub fn winner(&self) -> Option<Color> {
		if self.color_connected(Color::Black) { Some(Color::Black) }
		else if self.color_connected(Color::White) { Some(Color::White) }
		else { None }
	}

	pub fn capturable_around<'a>(&'a self, color: Color, active: Coord, dest: Coord) -> impl Iterator<Item=Coord> + 'a {
		self.neighborhood(dest).into_iter().filter(move |&maybe_captured| {
			self.pieces_of(color.opponent()).contains(&maybe_captured)
				&& self.neighborhood(maybe_captured).into_iter().all(|liberty|
					(self.all_pieces().contains(&liberty) || liberty == dest)
					&& !self.neighborhood(dest).contains(&active))
		})
	}

	pub fn convertible_around<'a>(&'a self, color: Color, active: Coord, dest: Coord ) -> impl Iterator<Item=Coord> + 'a {
		self.neighborhood(dest).into_iter().filter(move |neighbor| {
			let flanker_x = (neighbor.0 - dest.0) * 2 + dest.0;
			let flanker_y = (neighbor.1 - dest.1) * 2 + dest.1;
			let flanker = Coord(flanker_x, flanker_y);

			flanker != active
				&& self.pieces_of(color.opponent()).contains(&neighbor)
				&& self.pieces_of(color).contains(&flanker)
				&& !self.capturable_around(color, active, dest).collect::<Vec<_>>().contains(&active)
		})
	}

	pub fn moves_of<'a>(&'a self, color: Color) -> impl Iterator<Item=Move> + 'a {
		let mut mvmts: Vec<Move> = vec![];

		for active in self.pieces_of(color).iter().cloned() {
			for pivot in self.pieces_of(color).iter().cloned() {
				if self.valid_move(&Move::movement(color, active, pivot)).is_none() {
					if self.reserve_of(color) < 0 {
						panic!("Negative reserve for {:?}: {} on board with {} in reserve",
							color, self.pieces_of(color).len(), self.reserve_of(color));
					}
					let base_mvmt = Move::movement(color, active, pivot);
					let conversions: Vec<_> = self.convertible_around(color, active, base_mvmt.dest())
						.collect();
					if conversions.len() as i32 <= self.reserve_of(color) {
						mvmts.push(Move::Movement { color, active, pivot, conversions });
					} else {
						for combination in conversions.into_iter().combinations(self.reserve_of(color) as usize) {
								mvmts.push(Move::Movement { color, active, pivot, conversions: combination.into() });
						}
					}
				}
			}
		}

		let placements = self.all_coords()
			// TODO calculate reserve_of ahead of time
			.filter(move |coord| self.reserve_of(color) > 0 && !self.all_pieces().contains(&coord))
			.map(move |coord| Move::Placement { color: color, at: coord });

		mvmts.into_iter().filter(|x| self.valid_move(x).is_none())
			.chain(placements)
	}

	pub fn moves<'a>(&'a self) -> impl Iterator<Item=Move> + 'a {
		self.moves_of(self.whose_move)
	}

	pub fn apply(&self, mov: &Move) -> Board {
		assert_eq!(None, self.valid_move(&mov));
		let mut new_board = self.clone();
		match mov {
			Move::Movement { color, active, conversions, .. } => {
				let dest = mov.dest();
				new_board.pieces_of_mut(*color).insert(dest);
				new_board.pieces_of_mut(*color).remove(&active);

				for opp_coord in self.capturable_around(*color, *active, dest) {
					new_board.pieces_of_mut(color.opponent()).remove(&opp_coord);
					*new_board.reserve_of_mut(color.opponent()) += 1;
				}
				for opp_coord in self.convertible_around(*color, *active, dest) {
					new_board.pieces_of_mut(color.opponent()).remove(&opp_coord);
					*new_board.reserve_of_mut(color.opponent()) += 1;
					if conversions.contains(&opp_coord) {
						new_board.pieces_of_mut(*color).insert(opp_coord);
						*new_board.reserve_of_mut(*color) -= 1;
					}
				}
			},
			Move::Placement { color, at } => {
				new_board.pieces_of_mut(*color).insert(*at);
				*new_board.reserve_of_mut(*color) -= 1;
			}
		}
		new_board.whose_move = new_board.whose_move.opponent();
		new_board
	}
}

#[cfg(test)]
mod tests {
	use super::*;

	#[test]
	fn test_valid_move() {
		const BOARD_SIZE: i32 = 9;
		let mut board = Board::start_position(BOARD_SIZE);
		board.white.insert((4,3));

		assert_eq!(None, board.valid_move(&Move::movement(Color::White, (0,0), (1,1))));

		assert_eq!(IllegalMoveReason::GapTooBig,
			board.valid_move(&Move::movement(Color::White, (0,2), (4,3)))
			.expect("GapTooBig not illegal"));
		assert_eq!(IllegalMoveReason::DestNotEmpty,
			board.valid_move(&Move::movement(Color::White, (0,0), (3,0)))
			.expect("DestNotEmpty not illegal"));
		assert_eq!(IllegalMoveReason::PivotNotOwned,
			board.valid_move(&Move::movement(Color::White, (0,0), (2,2)))
			.expect("PivotNotOwned not illegal"));
		assert_eq!(IllegalMoveReason::ActiveNotOwned,
			board.valid_move(&Move::movement(Color::White, (2,2), (4,4)))
			.expect("ActiveNotOwned not illegal"));
		assert_eq!(IllegalMoveReason::PivotNotOwned,
			board.valid_move(&Move::movement(Color::White, (0,0), (3,3)))
			.expect("PivotNotOwned not illegal"));
		assert_eq!(IllegalMoveReason::DestNotInBounds,
			board.valid_move(&Move::movement(Color::White, (1,1), (1,0)))
			.expect("DestNotInBounds not illegal"));

		fn hvflip(coord: Coord) -> Coord {
			(BOARD_SIZE - coord.0 - 1, BOARD_SIZE - coord.1 - 1)
		}
		assert_eq!(IllegalMoveReason::DestNotEmpty,
			board.valid_move(&Move::movement(Color::White, hvflip((0,0)), hvflip((3,0))))
			.expect("DestNotEmpty not illegal"));
		assert_eq!(IllegalMoveReason::PivotNotOwned,
			board.valid_move(&Move::movement(Color::White, hvflip((0,0)), hvflip((2,2))))
			.expect("PivotNotOwned not illegal"));
		assert_eq!(IllegalMoveReason::ActiveNotOwned,
			board.valid_move(&Move::movement(Color::White, hvflip((2,2)), hvflip((4,4))))
			.expect("ActiveNotOwned not illegal"));
		assert_eq!(IllegalMoveReason::PivotNotOwned,
			board.valid_move(&Move::movement(Color::White, hvflip((0,0)), hvflip((3,3))))
			.expect("PivotNotOwned not illegal"));
		assert_eq!(IllegalMoveReason::DestNotInBounds,
			board.valid_move(&Move::movement(Color::White, hvflip((1,1)), hvflip((1,0))))
			.expect("DestNotInBounds not illegal"));

		fn hflip(coord: Coord) -> Coord {
			(BOARD_SIZE - coord.0 - 1, coord.1)
		}
		assert_eq!(IllegalMoveReason::DestNotEmpty,
			board.valid_move(&Move::movement(Color::Black, hflip((0,0)), hflip((3,0))))
			.expect("DestNotEmpty not illegal"));
		assert_eq!(IllegalMoveReason::PivotNotOwned,
			board.valid_move(&Move::movement(Color::Black, hflip((0,0)), hflip((2,2))))
			.expect("PivotNotOwned not illegal"));
		assert_eq!(IllegalMoveReason::ActiveNotOwned,
			board.valid_move(&Move::movement(Color::Black, hflip((2,2)), hflip((4,4))))
			.expect("ActiveNotOwned not illegal"));
		assert_eq!(IllegalMoveReason::PivotNotOwned,
			board.valid_move(&Move::movement(Color::Black, hflip((0,0)), hflip((3,3))))
			.expect("PivotNotOwned not illegal"));
		assert_eq!(IllegalMoveReason::DestNotInBounds,
			board.valid_move(&Move::movement(Color::Black, hflip((1,1)), hflip((1,0))))
			.expect("DestNotInBounds not illegal"));

		fn vflip(coord: Coord) -> Coord {
			(coord.0, BOARD_SIZE - coord.1 - 1)
		}
		assert_eq!(IllegalMoveReason::DestNotEmpty,
			board.valid_move(&Move::movement(Color::Black, vflip((0,0)), vflip((3,0))))
			.expect("DestNotEmpty not illegal"));
		assert_eq!(IllegalMoveReason::PivotNotOwned,
			board.valid_move(&Move::movement(Color::Black, vflip((0,0)), vflip((2,2))))
			.expect("PivotNotOwned not illegal"));
		assert_eq!(IllegalMoveReason::ActiveNotOwned,
			board.valid_move(&Move::movement(Color::Black, vflip((2,2)), vflip((4,4))))
			.expect("ActiveNotOwned not illegal"));
		assert_eq!(IllegalMoveReason::PivotNotOwned,
			board.valid_move(&Move::movement(Color::Black, vflip((0,0)), vflip((3,3))))
			.expect("PivotNotOwned not illegal"));
		assert_eq!(IllegalMoveReason::DestNotInBounds,
			board.valid_move(&Move::movement(Color::Black, vflip((1,1)), vflip((1,0))))
			.expect("DestNotInBounds not illegal"));
	}

	#[test]
	fn test_convertibles() {
		let black = HashSet::from(vec![(3,3), (5,3), (7,5), (6,5)]);
		let white = HashSet::from(vec![(4,4), (5,4), (4,5)]);
		let board = Board::from_position(9, Color::White, white, black);
		let expected = vec![(4,4), (5,4)];
		let actual: Vec<_> = board.convertible_around(Color::Black, (7,5), (5,5)).collect();
		assert_eq!(HashSet::<Coord>::from(expected), HashSet::<Coord>::from(actual));
	}

	#[test]
	fn test_capturables() {
		let black = HashSet::<Coord>::from(vec![(1,1), (1,2), (1,3), (2,1), (3,1), (3,4), (3,5), (4,2), (4,3)]);
		let white = HashSet::<Coord>::from(vec![(2,2), (2,3), (3,2), (4,1)]);
		let board = Board::from_position(9, Color::White, white, black);
		let expected = vec![(2,2), (3,2)];
		let actual: Vec<_> = board.capturable_around(Color::Black, (3,5), (3,3)).collect();
		assert_eq!(HashSet::<Coord>::from(expected), HashSet::<Coord>::from(actual));
	}

	#[test]
	fn test_capturables_on_board_edge() {
		let black = HashSet::<Coord>::from(vec![(0,0), (2,3), (1,2)]);
		let white = HashSet::<Coord>::from(vec![(0,2), (0,3), (1,0), (1,1), (1,3), (2,0), (2,1)]);
		let board = Board::from_position(9, Color::White, white, black);
		let expected = vec![(0,2), (1,0)];
		let actual: Vec<_> = board.capturable_around(Color::Black, (2,3), (0,1)).collect();
		assert_eq!(HashSet::<Coord>::from(expected), HashSet::<Coord>::from(actual));
	}

	#[test]
	fn test_flood_fill() {
		let black = HashSet::<Coord>::from(vec![(1,2), (1,3), (2,1), (2,3), (3,1)]);
		let white = HashSet::<Coord>::from(vec![(2,2), (3,2), (3,3), (4,3)]);
		let board = Board::from_position(9, Color::White, white, black);
		assert!(!board.color_connected(Color::Black));
		assert!(board.color_connected(Color::White));
	}

	#[test]
	fn test_available_moves_from_start() {
		let board = Board::start_position(9);

		let mut white_moves: Vec<_> = board.moves_of(Color::White).collect();
		let mut black_moves: Vec<_> = board.moves_of(Color::Black).collect();

		white_moves.sort();
		for mov in white_moves.iter() {
			println!("WHITE {:?}", mov);
		}
		black_moves.sort();
		for mov in black_moves.iter() {
			println!("BLACK {:?}", mov);
		}

		assert_eq!(17*2, white_moves.len());
		assert_eq!(17*2, black_moves.len());
	}

	#[test]
	fn test_available_moves_with_placement() {
		let mut board = Board::start_position(9);
		board.white.remove(&(3,0));
		board.black.remove(&(5,0));
		board.white_reserve += 1;
		board.black_reserve += 1;

		let mut white_moves: Vec<_> = board.moves_of(Color::White).collect();
		let mut black_moves: Vec<_> = board.moves_of(Color::Black).collect();

		white_moves.sort();
		for mov in white_moves.iter() {
			println!("WHITE {:?}", mov);
		}
		black_moves.sort();
		for mov in black_moves.iter() {
			println!("BLACK {:?}", mov);
		}

		assert_eq!(17 + 18 + 43, white_moves.len());
		assert_eq!(17 + 18 + 43, black_moves.len());
	}

	#[test]
	#[should_panic]
	fn from_position_out_of_bounds_panic() {
		let mut white = HashSet::new();
		white.insert((10,1));
		Board::from_position(9, Color::White, white, HashSet::new());
	}
}
