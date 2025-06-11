use crate::board::*;

pub trait Heuristic {
	fn heuristic(&self, board: &Board) -> f32;
}

pub struct PieceCountHeuristic {}

impl Heuristic for PieceCountHeuristic {
	fn heuristic(&self, board: &Board) -> f32 {
		(board.white.len() - board.black.len()) as f32
	}
}
