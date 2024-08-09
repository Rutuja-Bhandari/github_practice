#!/bin/bash
# This script calculates simple interest given principal,
# annual rate of interest, and time period in years.
# Do not use this in production. Sample purpose only.
# Author: Rutuja Bhandari
# Input:
# p, principal amount
# t, time period in years
# r, annual rate of interest
# Output:
# simple interest = p*t*r / 100

echo "Enter the principal amount:"
read p
echo "Enter the rate of interest per year (as a percentage):"
read r
echo "Enter the time period in years:"
read t

# Calculate simple interest using bc for floating-point arithmetic
simple_interest=$(echo "scale=2; $p * $r * $t / 100" | bc)

echo "The simple interest is: $simple_interest"
