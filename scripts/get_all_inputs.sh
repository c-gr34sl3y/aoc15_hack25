#!/bin/bash

current_dir=$(pwd)
inputs_dir="${current_dir}/inputs"

mkdir -p "$inputs_dir"

for day in {1..25}; do
	    aocd $day 2015 > "${inputs_dir}/day${day}.txt"
    done
