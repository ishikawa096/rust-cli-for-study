use std::env;
use std::process;

mod config;

fn main() {
    let config = config::Config::build(env::args()).unwrap_or_else(|err| {
        eprintln!("Problem parsing arguments: {err}");
        process::exit(1);
    });

    let Err(e) = config::run(config) else { return };
    eprintln!("Application error: {e}");
    process::exit(1);
}
