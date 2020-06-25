#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############
#assign variable for name
title="Overlord"
myName=$USER
#assign variable for hostname
hostName=$(hostname)
#assign variable for machine's day, date and time.
day=$(date +%A)
Time=$(date +%I:%M)
Type=$(date +%p)

###############
# Main        #
###############
#assigning up multiple condidtions for different days in output
if [ $day == "Monday" ];
then
	 title="Optimist"
 elif [ $day == "Tuesday" ]
 then
	 title="Realist"
 elif [ $day == "Wednesday" ]
 then
         title="Pessimist"

 elif [ $day == "Thursday" ]
 then
         title="Superb"

 elif [ $day == "Friday" ]
 then
         title="Fantastic"

 elif [ $day == "Saturday" ]
 then
         title="King"

 elif [ $day == "Sunday" ]
 then
         title="Spark"

 fi
#assign output for
output="Welcome to planet $hostName, \"$title $myName!\", It is $day at $Time $Type"

echo $output
cowsay $output
