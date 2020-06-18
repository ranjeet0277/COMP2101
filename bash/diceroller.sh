#!/bin/bash
#
# this script rolls a six-sided die
#

# Task: Improve this script by making it roll as many dice as there are letters in your first name, instead of just one

# roll the dice and display the result
echo "
Rolling...
$(( RANDOM % 6 + 1)) rolled
"
# added my first name ot variable
myFirstName=Ranjeet
# calculated number of letters in my first namr
count=${#myFirstName}

echo "Rolling Die number of times = my firstname letters count"
## loop over count of number of letter
for((i=0;i<$count;i++))
{
  # prinnting using loop random die roll
  echo "$((i+1)) : $(( RANDOM % 6 + 1)) rolled
  "
}
