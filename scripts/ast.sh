#!/usr/bin/env zsh

solc --overwrite --bin -o out/solc --combined-json ast src/Counter.sol
