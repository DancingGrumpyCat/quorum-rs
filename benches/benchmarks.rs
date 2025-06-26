use criterion::{criterion_group, criterion_main, Criterion};

use quorum::ai;
use quorum::board::Board;

pub fn criterion_benchmark(c: &mut Criterion) -> &mut Criterion {
	{
		let mut tt = ai::TRANSPOSITION_TABLE.write().unwrap();
		*tt = ai::TranspositionTable::new();
	}

	let board = Board::start_position(9);
	let heuristic = ai::LinearCombinationHeuristic{terms: vec![
		(1, Box::new(ai::CentroidDistanceHeuristic {power: 2.0})),
		(1, Box::new(ai::PieceCountHeuristic {})),
		(5, Box::new(ai::ConnectedComponentsHeuristic {}))
	]};
	c.bench_function("minimax_eval depth 2", |b| b.iter(|| ai::best_move(&board, 2, &heuristic))
	)
}

criterion_group!(benches, criterion_benchmark);
criterion_main!(benches);
