#!/bin/bash
# Simple Interest Calculator
# Simple Interest = (Principal * Rate * Time) / 100

echo "Enter the principal amount:"
read principal
echo "Enter the rate of interest (in %):"
read rate
echo "Enter the time period (in years):"
read time

simple_interest=$(awk -v p="$principal" -v r="$rate" -v t="$time" 'BEGIN { printf "%.2f", (p * r * t) / 100 }')
echo "The simple interest is: $simple_interest"
