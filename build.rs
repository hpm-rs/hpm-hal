use std::env;
use std::fs;
use std::path::PathBuf;
fn main() {
    if env::var_os("CARGO_FEATURE_RT").is_some() {
        println!("cargo:rustc-link-arg-examples=-Tdevice.x");
    }

    let out = PathBuf::from(env::var_os("OUT_DIR").unwrap());
    let memory_file = out.join("memory.x");
    fs::copy("memory.x", &memory_file).unwrap();
    println!("cargo:rustc-link-arg-examples=-Tmemory.x");
    println!("cargo:rustc-link-arg-examples=-Tlink.x");
    println!("cargo:rerun-if-changed=memory.x");

    println!("cargo:rerun-if-changed=build.rs");
}
