set -e -x
rm -rf ./chain_cache/
cargo clean
cargo nextest run generate_zcashd_chain_cache --run-ignored ignored-only
echo "after generate_zcashd_chain_cache" >> log_test_times.txt
date -d @$(date +%s) >> log_test_times.txt

cargo nextest run generate_zebrad_large_chain_cache --run-ignored ignored-only
echo "after generate_zebrad_large_chain_cache" >> log_test_times.txt
date -d @$(date +%s) >> log_test_times.txt

