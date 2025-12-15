#!/bin/bash

check_prime() {
    num=$1
    if [ $num -le 1 ]; then
        echo "$num is NOT a Prime number"
        return
    fi

    for ((i=2; i*i<=num; i++))
    do
        if [ $((num % i)) -eq 0 ]; then
            echo "$num is NOT a Prime number"
            return
        fi
    done
    echo "$num is a Prime number"
}

check_leap_year() {
    year=$1
    if (( (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0) )); then
        echo "$year is a Leap Year"
    else
        echo "$year is NOT a Leap Year"
    fi
}

sum_series() {
    n=$1
    sum=0
    for ((i=1; i<=n; i++))
    do
        sum=$((sum + i))
    done
    echo "Sum of series (1 to $n) = $sum"
}

echo "Enter a number:"
read number

while true
do
    echo "------------------------"
    echo "Menu"
    echo "1. Check Prime"
    echo "2. Check Leap Year"
    echo "3. Print Sum of Series (1 to n)"
    echo "4. Exit"
    echo "------------------------"
    echo "Enter your choice:"
    read choice

    case $choice in
        1) check_prime $number ;;
        2) check_leap_year $number ;;
        3) sum_series $number ;;
        4) echo "Exiting program..."; exit ;;
        *) echo "Invalid choice! Please try again." ;;
    esac
done
