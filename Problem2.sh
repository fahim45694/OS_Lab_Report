#!/bin/bash

echo "Enter starting year:"
read start

echo "Enter ending year:"
read end

count=0

echo "Leap years between $start and $end are:"

for ((year=start; year<=end; year++))
do
    if (( (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0) )); then
        echo "$year"
        count=$((count + 1))
    fi
done

echo "----------------------------"
echo "Total number of leap years: $count"
