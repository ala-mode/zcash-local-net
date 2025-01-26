set -e -x
echo "before generate_chain_caches.sh :" > log_test_times.txt
date -d @$(date +%s) >> log_test_times.txt
./utils/generate_chain_caches.sh
echo "after generate_chain_caches.sh :" >> log_test_times.txt
date -d @$(date +%s) >> log_test_times.txt
cargo clean && cargo nextest run --features test_fixtures
echo "after cargo nextest run :" >> log_test_times.txt
date -d @$(date +%s) >> log_test_times.txt

