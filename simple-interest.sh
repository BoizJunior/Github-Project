#!/bin/bash
# simple-interest.sh
# Calculate Simple Interest = (Principal * Rate * Time) / 100

echo "Enter Principal:"
read p
echo "Enter Rate of Interest:"
read r
echo "Enter Time (in years):"
read t

# validate integers or decimals
if [[ -z "$p" || -z "$r" || -z "$t" ]]; then
  echo "Error: all inputs are required."
  exit 1
fi

# bc handles decimal arithmetic
si=$(echo "scale=2; ($p * $r * $t) / 100" | bc)

echo "Simple Interest = $si"
