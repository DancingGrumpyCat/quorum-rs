use board::*;

pub fn main() {
	let board = Board::start_position(9, 2);
	board.show_board();
}
