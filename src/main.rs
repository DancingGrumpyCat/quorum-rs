pub mod board;
pub mod mcts;

use board::*;
use mcts::*;

pub fn main() {
	let mut board = Board::start_position(9, 2);
	board.white.insert((2,2));
	board.show_board();
	playout(LegalMovesHeuristic{}, &board);
}
