use crate::board::{Coord, Color};

include!(concat!(env!("OUT_DIR"), "/precomputed_hashes.rs"));

fn color_to_num(color: Color) -> usize {
	match color {
		Color::White => 1,
		Color::Black => 0
	}
}

pub fn piece_hash(color: Color, coord: Coord) -> u64 {
	assert!(0 <= coord.0);
	assert!(0 <= coord.1);
	PIECE_HASHES[81*color_to_num(color) + 9*(coord.0 as usize) + (coord.1 as usize)]
}

pub fn reserve_hash(color: Color, reserve: i32) -> u64 {
	assert!(0 <= reserve);
	RESERVE_HASHES[20*color_to_num(color) + (reserve as usize)]
}

pub fn turn_hash(color: Color) -> u64 {
	TURN_HASHES[color_to_num(color)]
}
