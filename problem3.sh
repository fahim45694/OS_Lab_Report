#!/bin/bash

pass_count=0
fail_count=0

echo "Enter number of students:"
read n

for ((i=1; i<=n; i++))
do
    echo "-----------------------------"
    echo "Enter Student ID:"
    read sid

    echo "Enter marks of 3 subjects:"
    read m1
    read m2
    read m3

    total=$((m1 + m2 + m3))
    percentage=$((total * 100 / 300))

    # Grade calculation
    if [ $percentage -ge 80 ]; then
        grade="A+"
        status="Pass"
        pass_count=$((pass_count + 1))
    elif [ $percentage -ge 70 ]; then
        grade="A"
        status="Pass"
        pass_count=$((pass_count + 1))
    elif [ $percentage -ge 60 ]; then
        grade="A-"
        status="Pass"
        pass_count=$((pass_count + 1))
    elif [ $percentage -ge 50 ]; then
        grade="B"
        status="Pass"
        pass_count=$((pass_count + 1))
    elif [ $percentage -ge 40 ]; then
        grade="C"
        status="Pass"
        pass_count=$((pass_count + 1))
    else
        grade="F"
        status="Fail"
        fail_count=$((fail_count + 1))
    fi

    echo "------ Student Result ------"
    echo "Student ID   : $sid"
    echo "Total Marks  : $total / 300"
    echo "Percentage   : $percentage%"
    echo "Grade        : $grade"
    echo "Result       : $status"
done

echo "============================="
echo "FINAL SUMMARY"
echo "Total Students : $n"
echo "Passed         : $pass_count"
echo "Failed         : $fail_count"
echo "============================="
