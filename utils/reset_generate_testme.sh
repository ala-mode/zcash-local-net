set -e -x
./utils/generate_chain_caches.sh
cargo clean && cargo nextest run --features test_fixtures
