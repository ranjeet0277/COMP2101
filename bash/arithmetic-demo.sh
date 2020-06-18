#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

#Removed assignments

#Reading inputs from user
read -p "Input 1st number =" first
read -p "Input 2nd number =" second
read -p "Input 3rd number =" third


# sum of all 3 numbers
sum=$((first + second+ third))
# product of all 3 numbers
product=$((first*second*third))

#Removed dividend and fpdividend as per requirement
# printing using lables
cat <<EOF
Sum
===
sum of $first.$second and $third is $sum
Product
=======
product of $first.$second and $third is $product
EOF
