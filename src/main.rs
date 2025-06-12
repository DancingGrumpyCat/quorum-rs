pub mod board;
pub mod ai;

use board::*;
use ai::*;

use board::Color::*;
use board::Move::*;

pub fn main() {
	let heuristic = LinearCombinationHeuristic { terms: vec![
		(1, Box::new(NthSmallestStringHeuristic{n: 0})),
		(1, Box::new(ConnectedComponentsHeuristic{})),
		(6, Box::new(CentroidDistanceHeuristic{power: 2.0}))
	]};
	let mut board = Board::start_position(9,2);
	let moves = vec![Move::movement(White, (1,0), (2,1)),
Movement { color: Black, active: (8, 0), pivot: (7, 2), conversions: vec![] },
Move::movement(White, (8,7), (7,6)),
Movement { color: Black, active: (0, 8), pivot: (2, 7), conversions: vec![] },
Move::movement(White, (3,0), (3,2)),
Movement { color: Black, active: (7, 0), pivot: (7, 2), conversions: vec![] },
Move::movement(White, (0,1), (3,2)),
Movement { color: Black, active: (1, 8), pivot: (2, 7), conversions: vec![] },
Move::movement(White, (0,0), (3,2)),
Movement { color: Black, active: (0, 7), pivot: (2, 7), conversions: vec![] },
Move::movement(White, (0,2), (3,4)),
Movement { color: Black, active: (2, 8), pivot: (3, 6), conversions: vec![] },
Move::movement(White, (7,8), (6,6)),
Movement { color: Black, active: (8, 1), pivot: (6, 1), conversions: vec![] },
Move::movement(White, (2,0), (3,2)),
Movement { color: Black, active: (2, 7), pivot: (3, 6), conversions: vec![] },
Move::movement(White, (8,8), (6,8)),
Movement { color: Black, active: (3, 8), pivot: (4, 5), conversions: vec![] },
Move::movement(White, (2,1), (3,2)),
Movement { color: Black, active: (1, 6), pivot: (3, 6), conversions: vec![] },
Move::movement(White, (1,1), (1,2)),
Movement { color: Black, active: (1, 7), pivot: (3, 6), conversions: vec![] },
Move::movement(White, (1,2), (4,3)),
Movement { color: Black, active: (7, 1), pivot: (5, 2), conversions: vec![(4, 4)] },
Move::Movement { color: White, active: (0,3), pivot: (1,3), conversions: vec![(3,3)] },
Placement { color: Black, at: (5, 3) },
Move::movement(White, (8,6), (6,4)),
Movement { color: Black, active: (6, 0), pivot: (6, 1), conversions: vec![] },
Move::movement(White, (1,3), (3,3)),
Movement { color: Black, active: (8, 2), pivot: (5, 2), conversions: vec![(3, 3)] },
Move::Movement { color: White, active: (8,5), pivot: (5,3), conversions: vec![(2,2)] },
Placement { color: Black, at: (1, 2) },
Move::Movement { color: White, active: (2,2), pivot: (2,3), conversions: vec![] },
Movement { color: Black, active: (0, 6), pivot: (0, 5), conversions: vec![] },
Movement { color: White, active: (7, 7), pivot: (7, 6), conversions: vec![] },
Movement { color: Black, active: (4, 7), pivot: (3, 6), conversions: vec![] },
Movement { color: White, active: (7, 5), pivot: (6, 3), conversions: vec![] },
Movement { color: Black, active: (3, 6), pivot: (4, 4), conversions: vec![(5, 1)] },
Placement { color: White, at: (5,3) },
Placement { color: Black, at: (2, 2) },
Movement { color: White, active: (4,8), pivot: (6,6), conversions: vec![] },
Movement { color: Black, active: (0, 5), pivot: (0, 4), conversions: vec![] },
Movement { color: White, active: (2,1), pivot: (5,3), conversions: vec![] },
Movement { color: Black, active: (5, 1), pivot: (6, 2), conversions: vec![(6, 4)] },
Placement { color: White, at: (3,3) },

	];
	for mov in moves {
		board = board.apply(&mov);
	}
	board.show_board();
	let next_move = best_move(&board, 3, &heuristic).unwrap();
	println!("{}", format!("{:?},", next_move).replace("[", "vec!["));
	board.apply(&next_move).show_board();
}
