use im::HashSet;
use std::cmp;

type Coord = (i32, i32);

#[derive(Copy, Clone, PartialEq, Eq, Debug, Hash)]
pub enum Color { Black, White }

impl Color {
	fn opponent(&self) -> Color {
		match &self {
			Color::White => Color::Black,
			Color::Black => Color::White
		}
	}
}

#[derive(Copy, Clone, PartialEq, Eq, Debug, Hash)]
pub struct Move {
	color: Color,
	active: Coord,
	pivot: Coord
}

#[derive(Clone, PartialEq, Eq, Debug, Hash)]
pub struct Board {
	board_size: i32,
	max_gap: i32,
	white: HashSet<Coord>,
	black: HashSet<Coord>
}

#[derive(Debug, PartialEq, Eq)]
pub enum IllegalMoveReason {
	ActiveNotOwned, PivotNotOwned, DestNotEmpty, DestNotInBounds, GapTooBig
}

pub fn move_dest(active: Coord, pivot: Coord) -> Coord {
	let dx = pivot.0 - active.0;
	let dy = pivot.1 - active.1;
	(pivot.0 + dx, pivot.1 + dy)
}

impl Board {
	pub fn all_pieces(&self) -> HashSet<Coord> {
		&self.white + &self.black
	}

	pub fn in_bounds(&self, coord: Coord) -> bool {
		0 <= coord.0 && coord.0 < self.board_size &&
		0 <= coord.1 && coord.1 < self.board_size
	}

	pub fn start_position(board_size: i32, max_gap: i32) -> Board {
		assert!(board_size >= 8);

		let mut black = HashSet::new();
		let mut white = HashSet::new();
		for x in 0..board_size {
			for y in 0..board_size {
				if x + y < 4 || x + y > 2*board_size - 6 {
					black.insert((x,y));
				}
				else if board_size - x + y < 5 || board_size - x + y > 2*board_size - 5 {
					white.insert((x,y));
				}
			}
		}

		Board { board_size, max_gap, white, black }
	}

	pub fn show_board(&self) {
		for y in (0..self.board_size).rev() {
			for x in 0..self.board_size {
				if self.white.contains(&(x,y)) && self.black.contains(&(x,y)) {
					print!("☯");
				} else if self.white.contains(&(x,y)) {
					print!("●");
				} else if self.black.contains(&(x,y)) {
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

	pub fn valid_move(&self, mov: Move) -> Option<IllegalMoveReason> {
		let Move { color, active, pivot } = mov;
		fn gap(active: Coord, end: Coord) -> i32 {
			assert!(active != end);
			cmp::max((active.0 - end.0 - 1).abs(), (active.1 - end.1 - 1).abs())
		}

		let pieces = if color == Color::Black { &self.black } else { &self.white };
		if !pieces.contains(&active) {
			return Some(IllegalMoveReason::ActiveNotOwned);
		}
		if !pieces.contains(&pivot) {
			return Some(IllegalMoveReason::PivotNotOwned);
		}
		let dest = move_dest(active, pivot);
		if self.all_pieces().contains(&dest) {
			return Some(IllegalMoveReason::DestNotEmpty);
		}
		if !self.in_bounds(dest) {
			return Some(IllegalMoveReason::DestNotInBounds);
		}
		if gap(active, pivot) > self.max_gap {
			return Some(IllegalMoveReason::GapTooBig);
		}
		None
	}

	pub fn get_color(&self, color: Color) -> &HashSet<Coord> {
		match color {
			Color::White => &self.white,
			Color::Black => &self.black
		}
	}

	pub fn get_color_mut(&mut self, color: Color) -> &mut HashSet<Coord> {
		match color {
			Color::White => &mut self.white,
			Color::Black => &mut self.black
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
		let (x, y) = coord;
		let mut neighbors = vec![];
		for dx in -1..=1 {
			for dy in -1..=1 {
				if dx == 0 && dy == 0 { continue; }
				let position = (x+dx, y+dy);
				if !self.in_bounds(position) {
					continue;
				}
				neighbors.push(position);
			}
		}
		neighbors
	}

	pub fn orthogonal_neighborhood(&self, coord: Coord) -> Vec<Coord> {
		let (x,y) = coord;
		vec![(x+1, y), (x-1, y), (x, y+1), (x, y-1)]
	}

	pub fn flood_fill(&self, color: Color, source: Coord) -> HashSet<Coord> {
		let mut visited = HashSet::from(vec![source]);
		let mut queued: HashSet<Coord> = self.orthogonal_neighborhood(source).into_iter().collect();
		println!("Starting with {:?}", source);
		while !queued.is_empty() {
			println!("QUEUE {:?}", queued);
			let mut next_queued: HashSet<Coord> = HashSet::new();
			for neighbor in queued {
				if self.get_color(color).contains(&neighbor) && !visited.contains(&neighbor) {
					visited.insert(neighbor);
					println!("Queueing {:?}", neighbor);
					next_queued.extend(self.orthogonal_neighborhood(neighbor));
				} else { println!("not queueing {:?}", neighbor); }
			}
			queued = next_queued;
		}
		println!("SIZE {:?}", visited.len());
		println!("VISITED {:?}", visited);
		visited
	}

	pub fn color_connected(&self, color: Color) -> bool {
		let source: Coord = self.get_color(color).iter().next().unwrap().clone();
		self.flood_fill(color, source).len() == self.get_color(color).len()
	}

	pub fn convertible_around(&self, color: Color, active: Coord ) -> Vec<Coord> {
		let mut convertibles = vec![];
		for neighbor in self.neighborhood(active) {
			let flanker_x = (neighbor.0 - active.0) * 2 + active.0;
			let flanker_y = (neighbor.1 - active.1) * 2 + active.1;
			let flanker = (flanker_x, flanker_y);

			if self.get_color(color.opponent()).contains(&neighbor) && self.get_color(color).contains(&flanker)  {
				convertibles.push(neighbor)
			}
		}
		convertibles
	}

	pub fn capturable_around(&self, color: Color, active: Coord) -> Vec<Coord> {
		let mut capturables = vec![];
		for maybe_captured in self.neighborhood(active) {
			if self.neighborhood(maybe_captured).into_iter().all(|coord| self.all_pieces().contains(&coord))
			   && self.get_color(color.opponent()).contains(&maybe_captured) {
				capturables.push(maybe_captured)
			}
		}
		capturables
	}

	pub fn moves(&self, color: Color) -> Vec<(Coord, Coord)> {
		let friendly_pieces = self.get_color(color);
		let mut generated_moves: Vec<Move> = vec![];

		for active in self.get_color(color).iter().cloned() {
			for pivot in self.get_color(color).iter().cloned() {
				if self.valid_move(Move { color, active, pivot }).is_none() {
					unimplemented!();
				}
			}
		}

		unimplemented!();
	}

	pub fn apply(&self, mov: Move) -> Board {
		let Move { color, active, pivot } = mov;
		assert_eq!(None, self.valid_move(mov));

		let dest = move_dest(active, pivot);
		let mut new_board = self.clone();
		new_board.get_color_mut(color).insert(dest);
		new_board.get_color_mut(color).remove(&active);

		for opp_coord in self.convertible_around(color, dest) {
			new_board.get_color_mut(color.opponent()).remove(&opp_coord);
			new_board.get_color_mut(color).insert(opp_coord);
		}

		for opp_coord in self.capturable_around(color, dest) {
			new_board.get_color_mut(color.opponent()).remove(&opp_coord);
		}
		new_board
	}
}

#[cfg(test)]
mod tests {
	use super::*;

	#[test]
	fn test_valid_move() {
		const BOARD_SIZE: i32 = 9;
		let mut board = Board::start_position(BOARD_SIZE, 2);
		board.black.insert((4,3));

		assert_eq!(None, board.valid_move(Move { color: Color::Black, active: (0,0), pivot: (1,1) }));

		assert_eq!(IllegalMoveReason::GapTooBig,
			board.valid_move(Move { color: Color::Black, active: (0,2), pivot: (4,3) }).expect("GapTooBig not illegal"));

		assert_eq!(IllegalMoveReason::DestNotEmpty, board.valid_move(Move { color: Color::Black, active: (0,0), pivot: (3,0) })
			.expect("DestNotEmpty not illegal"));
		assert_eq!(IllegalMoveReason::PivotNotOwned, board.valid_move(Move { color: Color::Black, active: (0,0), pivot: (2,2) })
			.expect("PivotNotOwned not illegal"));
		assert_eq!(IllegalMoveReason::ActiveNotOwned, board.valid_move(Move { color: Color::Black, active: (2,2), pivot: (4,4) })
			.expect("ActiveNotOwned not illegal"));
		assert_eq!(IllegalMoveReason::PivotNotOwned, board.valid_move(Move { color: Color::Black, active: (0,0), pivot: (3,3) })
			.expect("PivotNotOwned not illegal"));
		assert_eq!(IllegalMoveReason::DestNotInBounds, board.valid_move(Move { color: Color::Black, active: (1,1), pivot: (1,0) })
			.expect("DestNotInBounds not illegal"));

		fn hvflip(coord: Coord) -> Coord {
			(BOARD_SIZE - coord.0 - 1, BOARD_SIZE - coord.1 - 1)
		}
		assert_eq!(IllegalMoveReason::DestNotEmpty,
			board.valid_move(Move { color: Color::Black, active: hvflip((0,0)), pivot: hvflip((3,0)) })
			.expect("DestNotEmpty not illegal"));
		assert_eq!(IllegalMoveReason::PivotNotOwned,
			board.valid_move(Move { color: Color::Black, active: hvflip((0,0)), pivot: hvflip((2,2)) })
			.expect("PivotNotOwned not illegal"));
		assert_eq!(IllegalMoveReason::ActiveNotOwned,
			board.valid_move(Move { color: Color::Black, active: hvflip((2,2)), pivot: hvflip((4,4)) })
			.expect("ActiveNotOwned not illegal"));
		assert_eq!(IllegalMoveReason::PivotNotOwned,
			board.valid_move(Move { color: Color::Black, active: hvflip((0,0)), pivot: hvflip((3,3)) })
			.expect("PivotNotOwned not illegal"));
		assert_eq!(IllegalMoveReason::DestNotInBounds,
			board.valid_move(Move { color: Color::Black, active: hvflip((1,1)), pivot: hvflip((1,0)) })
			.expect("DestNotInBounds not illegal"));

		fn hflip(coord: Coord) -> Coord {
			(BOARD_SIZE - coord.0 - 1, coord.1)
		}
		assert_eq!(IllegalMoveReason::DestNotEmpty,
			board.valid_move(Move { color: Color::White, active: hflip((0,0)), pivot: hflip((3,0)) })
			.expect("DestNotEmpty not illegal"));
		assert_eq!(IllegalMoveReason::PivotNotOwned,
			board.valid_move(Move { color: Color::White, active: hflip((0,0)), pivot: hflip((2,2)) })
			.expect("PivotNotOwned not illegal"));
		assert_eq!(IllegalMoveReason::ActiveNotOwned,
			board.valid_move(Move { color: Color::White, active: hflip((2,2)), pivot: hflip((4,4)) })
			.expect("ActiveNotOwned not illegal"));
		assert_eq!(IllegalMoveReason::PivotNotOwned,
			board.valid_move(Move { color: Color::White, active: hflip((0,0)), pivot: hflip((3,3)) })
			.expect("PivotNotOwned not illegal"));
		assert_eq!(IllegalMoveReason::DestNotInBounds,
			board.valid_move(Move { color: Color::White, active: hflip((1,1)), pivot: hflip((1,0)) })
			.expect("DestNotInBounds not illegal"));

		fn vflip(coord: Coord) -> Coord {
			(coord.0, BOARD_SIZE - coord.1 - 1)
		}
		assert_eq!(IllegalMoveReason::DestNotEmpty,
			board.valid_move(Move { color: Color::White, active: vflip((0,0)), pivot: vflip((3,0)) })
			.expect("DestNotEmpty not illegal"));
		assert_eq!(IllegalMoveReason::PivotNotOwned,
			board.valid_move(Move { color: Color::White, active: vflip((0,0)), pivot: vflip((2,2)) })
			.expect("PivotNotOwned not illegal"));
		assert_eq!(IllegalMoveReason::ActiveNotOwned,
			board.valid_move(Move { color: Color::White, active: vflip((2,2)), pivot: vflip((4,4)) })
			.expect("ActiveNotOwned not illegal"));
		assert_eq!(IllegalMoveReason::PivotNotOwned,
			board.valid_move(Move { color: Color::White, active: vflip((0,0)), pivot: vflip((3,3)) })
			.expect("PivotNotOwned not illegal"));
		assert_eq!(IllegalMoveReason::DestNotInBounds,
			board.valid_move(Move { color: Color::White, active: vflip((1,1)), pivot: vflip((1,0)) })
			.expect("DestNotInBounds not illegal"));
	}

	#[test]
	fn test_convertibles() {
		let black = HashSet::from(vec![(3,3), (5,3), (5,5), (6,5)]);
		let white = HashSet::from(vec![(4,4), (5,4), (4,5)]);
		let board = Board { board_size: 9, max_gap: 2, white, black };
		let expected = vec![(4,4), (5,4)];
		let actual = board.convertible_around(Color::Black, (5,5));
		assert_eq!(HashSet::<Coord>::from(expected), HashSet::<Coord>::from(actual));
	}

	#[test]
	fn test_capturables() {
		let black = HashSet::<Coord>::from(vec![(1,1), (1,2), (1,3), (2,1), (3,1), (3,3), (4,2), (4,3)]);
		let white = HashSet::<Coord>::from(vec![(2,2), (2,3), (3,2), (4,1)]);
		let board = Board { board_size: 9, max_gap: 2, white, black };
		let expected = vec![(2,2), (3,2)];
		let actual = board.capturable_around(Color::Black, (3,3));
		assert_eq!(HashSet::<Coord>::from(expected), HashSet::<Coord>::from(actual));
	}

	#[test]
	fn test_capturables_on_board_edge() {
		let black = HashSet::<Coord>::from(vec![(0,0), (0,1), (1,2)]);
		let white = HashSet::<Coord>::from(vec![(0,2), (0,3), (1,0), (1,1), (1,3), (2,0), (2,1)]);
		let board = Board { board_size: 9, max_gap: 2, white, black };
		let expected = vec![(0,2), (1,0)];
		let actual = board.capturable_around(Color::Black, (0,1));
		assert_eq!(HashSet::<Coord>::from(expected), HashSet::<Coord>::from(actual));
	}

	#[test]
	fn test_flood_fill() {
		let black = HashSet::<Coord>::from(vec![(1,2), (1,3), (2,1), (2,3), (3,1)]);
		let white = HashSet::<Coord>::from(vec![(2,2), (3,2), (3,3), (4,3)]);
		let board = Board { board_size: 9, max_gap: 2, white, black };
		assert!(!board.color_connected(Color::Black));
		assert!(board.color_connected(Color::White));
	}
}

pub fn main() {
}
