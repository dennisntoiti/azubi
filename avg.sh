#!/bin/bash
#https://github.com/dennisntoiti/azubi

echo "Please enter your first number: "
read a
echo "Second number: "
read b
echo "Third number: "
read c
echo "Fourth number: "
read d
echo "Fifth number: "
read e

sum=$(($a + $b + $c + $d + $e))
avg=$(($sum / 5 | bc -l ))

echo "The average of these numbers is: " $avg