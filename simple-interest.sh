#!/bin/bash
# Simple Interest Calculator

# Prompt user for input
echo "Enter principal amount:"
read principal
echo "Enter rate of interest (in %):"
read rate
echo "Enter time period in years:"
read time

# Calculate Simple Interest
simple_interest=$(echo "$principal * $rate * $time / 100" | bc)

# Output the result
echo "The Simple Interest is: $simple_interest"
