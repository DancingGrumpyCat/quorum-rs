use std::env;
use std::fs;
use std::path::Path;
use rand_chacha::rand_core::{SeedableRng, RngCore};
use rand_chacha::ChaCha12Rng;

const ZOBRIST_SEED: [u8; 32] = [130, 248, 82, 126, 147, 35, 99, 45, 145, 146, 72, 121, 178, 133, 137, 137, 47, 234, 168, 123, 152, 111, 231, 27, 136, 96, 37, 44, 106, 7, 166, 139];
const N_PIECE_HASHES: usize = 9*9*2;
const N_RESERVE_HASHES: usize = 20*2;

fn main() {
    println!("cargo::rerun-if-changed=build.rs");

    let out_dir = env::var_os("OUT_DIR").unwrap();
    println!("{:?}", out_dir);
    let dest_path = Path::new(&out_dir).join("precomputed_hashes.rs");

    let mut rng = ChaCha12Rng::from_seed(ZOBRIST_SEED);
    let mut piece_hashes = Vec::with_capacity(N_PIECE_HASHES);
    for _ in 0..N_PIECE_HASHES {
        piece_hashes.push(rng.next_u64().to_string());
    }
    let piece_hashes_rust = format!("const PIECE_HASHES: [u64; {}] = [{}];", N_PIECE_HASHES, piece_hashes.join(", "));
    let mut reserve_hashes = Vec::with_capacity(N_RESERVE_HASHES);
    for _ in 0..N_RESERVE_HASHES {
        reserve_hashes.push(rng.next_u64().to_string());
    }
    let reserve_hashes_rust = format!("const RESERVE_HASHES: [u64; {}] = [{}];", N_RESERVE_HASHES, reserve_hashes.join(", "));
    let turn_hashes = [rng.next_u64().to_string(), rng.next_u64().to_string()];
    let turn_hashes_rust = format!("const TURN_HASHES: [u64; 2] = [{}]", turn_hashes.join(", "));

    fs::write(&dest_path, format!("{piece_hashes_rust}\n{reserve_hashes_rust}\n{turn_hashes_rust};")).unwrap();
}
