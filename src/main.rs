pub mod ai;
pub mod board;
pub mod notation;
pub mod hashes;

use ai::*;
use board::*;

pub fn main() {
	let mut board = Board::start_position(9);
	let heuristic = LinearCombinationHeuristic{terms: vec![
		(1, Box::new(CentroidDistanceHeuristic {power: 2.0})),
		(1, Box::new(PieceCountHeuristic {})),
		(5, Box::new(ConnectedComponentsHeuristic {}))
	]};
	{
		let mut tt = TRANSPOSITION_TABLE.write().unwrap();
		*tt = TranspositionTable::new();
	}
	board.show_board();
	for ply in 0..50 {
		let next_move = best_move(&board, 3, &heuristic).unwrap();
		board = board.apply(&next_move);
		println!("{ply} {}", heuristic.heuristic(&board));
		board.show_board();
		if board.winner().is_some() {
			break;
		}
	}
}
