# just manual: https://github.com/casey/just#readme

_default:
	just --list

check:
	cargo hack clippy --feature-powerset

# Run all tests locally
test *args:
	cargo nextest run {{args}} --all-features