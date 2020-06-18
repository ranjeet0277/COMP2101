#!/bin/bash
#
# this script rolls a pair of six-sided dice and displays both the rolls
#

# Task 1:
#  put the number of sides in a variable which is used as the range for the random number
#  put the bias, or minimum value for the generated number in another variable
#  roll the dice using the variables for the range and bias i.e. RANDOM % range + bias

# Task 2:
#  generate the sum of the dice
#  generate the average of the dice

#  display a summary of what was rolled, and what the results of your arithmetic were

# Tell the user we have started processing
echo "Rolling..."
# roll the dice and save the results
die1=$(( RANDOM % 6 + 1))
die2=$(( RANDOM % 6 + 1 ))
# display the results
echo "Rolled $die1, $die2"

#Task 1 : range and bias variables
range=6
bias=1
echo "Rolling using range and bias values from variable"
newDie1=$(( RANDOM % range + bias))
echo "Rolled Values using range and bias : $newDie1"

#Task2
# srcond die roll
newDie2=$(( RANDOM % range + bias))
echo "Rolled Values  : $newDie1 ,$newDie2"
# Sum and Average of Valuess
echo "Sum : $(( newDie1 + newDie2 ))"
echo "Average : $(( (newDie1 + newDie2)/2 ))"
