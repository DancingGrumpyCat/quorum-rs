use crate::board::*;

use nom::{
	IResult,
	Parser,
	branch::alt,
	bytes::complete::{tag},
	character::complete::{char, one_of, multispace0},
	combinator::{recognize, map_res, opt},
	multi::many0,
	sequence::{pair,preceded},
};

#[derive(PartialEq, Eq, Debug, Copy, Clone)]
pub enum MoveType { Placement, Movement }

#[derive(Debug, Clone)]
pub struct MoveBuilder {
	move_type: MoveType,
	color: Option<Color>,
	placement_at: Option<Coord>,
	movement_active: Option<Coord>,
	movement_pivot: Option<Coord>,
	movement_conversions: Option<Vec<Coord>>
}

impl MoveBuilder {
	fn new(move_type: MoveType) -> MoveBuilder {
		MoveBuilder {
			move_type,
			color: None,
			placement_at: None,
			movement_active: None,
			movement_pivot: None,
			movement_conversions: None
		}
	}

	fn placement(self) -> Move {
		match self {
			MoveBuilder { color: Some(color), placement_at: Some(at), .. } =>
				Move::Placement { color, at },
			_ => panic!("Error while parsing placement")
		}
	}

	fn movement(self) -> Move {
		match self {
			MoveBuilder {
				color: Some(color), movement_active: Some(active), movement_pivot: Some(pivot), movement_conversions: Some(conversions), .. } =>
				Move::Movement { color, active, pivot, conversions },
			_ => panic!("Error while parsing movement")
		}
	}

	fn finish(self) -> Move {
		match self.move_type {
			MoveType::Placement => self.placement(),
			MoveType::Movement => self.movement()
		}
	}
}

// pub fn pgn(i: &str) -> IResult<&str, &str> {
// 	recognize((parse_lines, multispace0, opt(game_result), opt(char('\n')))).parse(i)
// }

pub fn parse_lines(i: &str) -> IResult<&str, Vec<(i32, Move, Move)>> {
	many0(parse_line).parse(i)
}

pub fn parse_line(i: &str) -> IResult<&str, (i32, Move, Move)> {
	(preceded(multispace0,
		parse_full_move_number),
	preceded((char('.'), multispace0,),
		parse_white_move),
	preceded(multispace0,
		parse_black_move)
	).parse(i)
}

pub fn parse_full_move_number(i: &str) -> IResult<&str, i32> {
	map_res(
		recognize((
				one_of("123456789"),
				many0(one_of("0123456789"))
		)),
		|out: &str| out.parse()
	).parse(i)
}

pub fn parse_white_move(i: &str) -> IResult<&str, Move> {
	parse_move_uncolored.map(|mut builder| {
		builder.color = Some(Color::White);
		builder.finish()
	}).parse(i)
}

pub fn parse_black_move(i: &str) -> IResult<&str, Move> {
	parse_move_uncolored.map(|mut builder| {
		builder.color = Some(Color::Black);
		builder.finish()
	}).parse(i)
}

pub fn parse_move_uncolored(i: &str) -> IResult<&str, MoveBuilder> {
	alt((parse_movement, parse_placement)).parse(i)
}

fn calculate_pivot(active: Coord, dest: Coord) -> Option<Coord> {
	let dx = dest.0 - active.0;
	let dy = dest.1 - active.1;
	if dx % 2 == 0 && dy % 2 == 0 {
		Some(Coord(active.0 + dx / 2, active.1 + dy / 2))
	} else {
		None
	}
}

pub fn parse_movement(i: &str) -> IResult<&str, MoveBuilder> {
	(parse_active, parse_dest, preceded(opt(char('*')), parse_conversions))
		.map(|(active, dest, conversions): (Coord, Coord, Vec<Coord>)| {
			let mut builder = MoveBuilder::new(MoveType::Movement);
			builder.movement_active = Some(active);
			builder.movement_conversions = Some(conversions);
			builder.movement_pivot = Some(calculate_pivot(active, dest)
				.expect(format!("{:?} cannot move to {:?} because the pivot would not align to the grid", active, dest)
					.as_str()));
			builder
		}).parse(i)
}

pub fn parse_placement(i: &str) -> IResult<&str, MoveBuilder> {
	preceded(tag("->"), parse_coord)
		.map(|at| {
			let mut builder = MoveBuilder::new(MoveType::Placement);
			builder.placement_at = Some(at);
			builder
		}).parse(i)
}

pub fn parse_active(i: &str) -> IResult<&str, Coord> {
	parse_coord(i)
}

pub fn parse_dest(i: &str) -> IResult<&str, Coord> {
	parse_coord(i)
}

pub fn parse_conversions(i: &str) -> IResult<&str, Vec<Coord>> {
	many0(parse_coord).parse(i)
}

pub fn parse_coord(i: &str) -> IResult<&str, Coord> {
	pair(parse_file, parse_rank).map(|(file, rank)| Coord(file, rank)).parse(i)
}

const CJK_NUMERALS: [char; 9] = ['一', '二', '三', '四', '五', '六', '七', '八', '九'];

pub fn parse_file(i: &str) -> IResult<&str, i32> {
	// Unlike human notation, computer starts at (0,0) not (1,1)
	one_of("123456789")
		.map_res(|c: char| c.to_string().parse())
		.map(|file: i32| file-1)
		.parse(i)
}

pub fn parse_rank(i: &str) -> IResult<&str, i32> {
	one_of("一二三四五六七八九").map(|res: char|
		// Unlike human notation, computer starts at (0,0) not (1,1)
		CJK_NUMERALS.iter().position(|&numeral| numeral == res).unwrap()
		as i32
	).parse(i)
}

pub fn game_result(i: &str) -> IResult<&str, &str> {
	alt((tag("1-0"), tag("0-1"))).parse(i)
}

#[cfg(test)]
mod tests {
	use super::*;

	#[test]
	#[should_panic]
	fn illegal_pivot_point () {
		let illegal_move_example = "3一4一";
		// Should either panic during evaluation or return None
		assert!(parse_white_move(illegal_move_example).is_err());
	}

	#[test]
	fn example_game_1() {
		let pgn_example = concat!(
			"1. 1一5三 1九3五\n",
			"2. 1二3四 2九2五\n",
			"3. 3二3六* 3九3七\n",
			"4. 1四5八 2八4八\n",
			"5. 1三5九 9一7五\n",
			"6. 9九7七 9四5六\n",
			"7. 3六3二 9二7四\n",
			"8. 4一6五 9三5五*6五\n",
			"9. 8八6六 ->4六\n",
			"10. 7八7六 7四3六\n",
			"11. 3一3三 5六5四\n",
			"12. 9六5六 8一6三\n",
			"13. 3二7四*7五 8三4三\n",
			"14. 7九3九* 8二6二\n",
			"15. ->4五 ->3五\n",
			"16. 8七2五* 4八4四*4五\n",
			"0-1"
		);
		let moves = parse_lines(pgn_example).unwrap().1;

		let mut board = Board::start_position(9);
		board.show_board();
		for (turn_num, white_move, black_move) in moves {
			println!("{turn_num}, white reserve {}, black reserve {}", board.white_reserve, board.black_reserve);
			board = board.apply(&white_move);
			println!("{white_move:?}");
			board.show_board();
			board = board.apply(&black_move);
			println!("{turn_num}, white reserve {}, black reserve {}", board.white_reserve, board.black_reserve);
			println!("...{black_move:?}");
			board.show_board();
		}

		// let board = moves.into_iter()
		// 	.flat_map(|(_turn_num, white_move, black_move)| vec![white_move, black_move])
		// 	.inspect(|mov| println!("{mov:?}"))
		// 	.fold(Board::start_position(9), |board, mov| board.apply(&mov));
		println!("{board:?}");
		board.show_board();
		todo!();
	}
}
