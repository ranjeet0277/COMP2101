#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same
# it also demonstrates using conditional execution

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data (i.e. TestString)
# TASK 2: Improve it by rewriting it to use the if command
#         The if command should test if they got it right, in which case it should tell them they got it right
#         The if command should tell them they got it wrong
# TASK 3: Improve it by giving them 5 tries to get it right before failing
#           *** Do not use the exit command, and do not use a loop (e.g. while or for)

#assign strings and guess variable
myString="TestString"
referenceString="password"
guessed=false

# if condition to check if the answer is not guessed before
if [ $guessed != "true" ];
then
	# rewriting myString variable
read -p "Enter String to guess password : " myString
# check is userinput is same as required
if [ ! -z "$myString" ] && [ $myString = $referenceString ];
then
	# guessed flag variable try for not to try more
        guessed=true
	echo "Correct!"
else
	# output incorrect and number of tries left
	echo "Incorrect."
	echo "Four More Tries"
fi
fi
# uppper code repeated as per number of tries left
if [ $guessed != "true" ];
then
read -p "Enter String to guess password : " myString
if [ ! -z "$myString" ] && [ $myString = $referenceString ];
then
        guessed=true
        echo "Correct!"
else
        echo "Incorrect."
        echo "Three More Tries"
fi
fi
if [ $guessed != "true" ];
then
read -p "Enter String to guess password : " myString
if [ ! -z "$myString" ] && [ $myString = $referenceString ];
then
        guessed=true
        echo "Correct!"
else
        echo "Incorrect."
        echo "Two More Tries"
fi
fi
if [ $guessed != "true" ];
then
read -p "Enter String to guess password : " myString
if [ ! -z "$myString" ] && [ $myString = $referenceString ];
then
        guessed=true
        echo "Correct!"
else
        echo "Incorrect."
        echo "Last Try"
fi
fi
if [ $guessed  != "true" ];
then
read -p "Enter String to guess password : " myString
if [ ! -z "$myString" ] && [ $myString = $referenceString ];
then
        guessed=true
        echo "Correct!"
else
        echo "Incorrect."
        echo "Out Of Tries"
fi
fi
