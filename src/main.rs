pub mod ai;
pub mod board;
pub mod notation;

// use ai::*;
// use board::*;
use notation::*;

// use board::Color::*;
// use board::Move::*;

pub fn main() {
	let pgn_example = concat!(
		"1. 1一5五 1九3五\n",
		"2. 1二3四 2九2五\n",
		"3. 3二3六* 3九3七\n",
		"4. 1四5八 2八4八\n",
		"5. 1三5九 9一7五\n",
		"1-0\n"
	);

	let capture_and_convert_example = "3五3一*3二";

	let illegal_move_example = "3一4一";

	println!("{:?}", parse_lines(pgn_example));
	println!("{:?}", parse_white_move(capture_and_convert_example));
	println!("{:?}", parse_white_move(illegal_move_example));
}
