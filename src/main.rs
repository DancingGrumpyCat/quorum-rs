mod board;

pub fn main() {
	let board = board::Board::start_position(9, 2);
	board.show_board();
}
