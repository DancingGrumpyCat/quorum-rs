pub mod board;
pub mod ai;

use board::*;
use ai::*;

pub fn main() {
	let mut board = Board::start_position(9, 2);
	let heuristic = LinearCombinationHeuristic { terms: vec![
		(1, Box::new(NthSmallestStringHeuristic{n: 0})),
		(1, Box::new(ConnectedComponentsHeuristic{})),
		(6, Box::new(CentroidDistanceHeuristic{power: 2.0}))
	]};
	for ply in 0..200 {
		let mut board = Board::start_position(9,2);
		let moves = vec![Move::movement(Color::White, (1,0), (2,1))];
		for mov in moves {
			board = board.apply(&mov);
		}
		board.show_board();
	}
}
