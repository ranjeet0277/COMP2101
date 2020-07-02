#!/bin/bash
# This script demonstrates how the shift command works

# create an empty array to put the command line arguments into
myargs=()
# loop through the command line arguments
while [ $# -gt 0 ]; do
  # tell the user how many things are left on the command line
  echo "There are $# things left to process on the command line."
  # add whatever is in $1 to the myargs array
  myargs+=("$1")
  # tell the user what we did
  echo "Added \'$1\' to the arguments array"

# TASK 1: instead of just adding arguments to an array, use a case statement to recognize some options
#          Options to recognize: -h for help, -v for verbose mode, -d N for debug mode with N being a single digit number
#          If the help option is recognized, print out help for the command and exit
#          If the verbose option is recognized, set a variable to indicate verbose mode is on
#          If the debug optionis recognized, set a variable with the debug level from the number given after the -d on the command line
#             display an error if the user gave the -d option without a single digit number after it
#          Anything that wasn't recognized on the command line should still go into the myargs array

#cases
case $1 in
	-h)
		# help command
		echo "Help Command Selected"
		echo "cmdargs.sh [-h] for help"
		echo "cmdargs.sh [-v] for verbose mode"
		echo "cmdargs.sh [-d] [1-9] for debug mode with level"
		exit
		;;
	-d)
		# check if no argument passd with deug option
	        if [ -z $2 ];
		then
			echo "Provide a level with -d"
		elif [ $2 -le 0 ] || [ $2 -ge 10 ];
		then
			echo "Level Should be single digit and positive"
		else
			# adding values in variable
			echo "Debug Mode Level $2"
			debug=on
			lvl=$2
			shift
		fi
		;;
	-v)
		#adding value in variable
		echo "Verbose Mode"
		verbose=on
		;;
	*)
		echo "Not Recognized argument"
		;;
esac

  # each time through the loop, shift the arguments left
  # this decrements the argument count for us
  shift
  # tell the user we shifted things
  echo "Shifted command line, leaving $# things left to process."
  echo "--------------------------"
  # go back to the top of the loop to see if anything is left to work on
done
echo "Done"

# TASK2: display the settings and myargs contents
#         Tell the user if vebose mode is on
#         Tell the user if debug mode is on and if it is, what number it is set to
#         Print out the myargs array with a label
# check if debug found
if [ ! -z $debug ];
then
	# print debug with it's level
	echo "Debug mode is on, and set to $lvl"
fi
#check if verbose variable found
if [ ! -z $verbose ];
then
	echo "Verbose mode is on"
fi
# print all arguments passed
echo "Arguments Passed : ${myargs[@]}"
#end of this script
