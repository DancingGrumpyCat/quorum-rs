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
use std::str::FromStr;

pub struct QuorumParseError {}

impl FromStr for Coord {
	type Err = QuorumParseError;

	fn from_str(s: &str) -> Result<Self, Self::Err> {
		let chars: Vec<_> = s.chars().collect();
		assert!(chars.len() >= 2);
		let x = chars[0];
		let y = chars[1];
		println!("{x:?} AND {y:?}");
		println!("{:?}", chars);
		todo!()
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
		parse_full_turn_number),
	preceded((char('.'), multispace0,),
		parse_white_turn),
	preceded(multispace0,
		parse_black_turn)
	).parse(i)
}

pub fn parse_full_turn_number(i: &str) -> IResult<&str, i32> {
	map_res(
		recognize((
				one_of("123456789"),
				many0(one_of("0123456789"))
		)),
		|out: &str| out.parse()
	).parse(i)
}

pub fn parse_white_turn(i: &str) -> IResult<&str, Move> {
	parse_turn(i)
}

pub fn parse_black_turn(i: &str) -> IResult<&str, Move> {
	parse_turn.map(|turn| {
		let mut cloned = turn.clone();
		match &mut cloned {
			Move::Movement { color, .. } => *color = Color::Black,
			Move::Placement { color, .. } => *color = Color::Black
		};
		cloned
	}).parse(i)
}

pub fn parse_turn(i: &str) -> IResult<&str, Move> {
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

pub fn parse_movement(i: &str) -> IResult<&str, Move> {
	(parse_active, parse_dest, preceded(opt(char('*')), parse_conversions))
		.map(|(active, dest, conversions): (Coord, Coord, Vec<Coord>)|
			Move::Movement {
				active, conversions, color: Color::White,
				pivot: calculate_pivot(active, dest)
					.expect(format!("{:?} cannot move to {:?} because the pivot would not align to the grid", active, dest)
						.as_str())
			}).parse(i)
}

pub fn parse_placement(i: &str) -> IResult<&str, Move> {
	preceded(tag("->"), parse_coord)
		.map(|at| Move::Placement { color: Color::White, at })
		.parse(i)
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
	map_res(recognize(
			one_of("123456789")),
			|res: &str| res.parse()
	).parse(i)
}

pub fn parse_rank(i: &str) -> IResult<&str, i32> {
	one_of("一二三四五六七八九").map(|res: char|
		(1 + CJK_NUMERALS.iter().position(|&numeral| numeral == res).unwrap())
		as i32
	).parse(i)
}

pub fn game_result(i: &str) -> IResult<&str, &str> {
	recognize(
		alt((tag("1-0"), tag("0-1")))
	).parse(i)
}
