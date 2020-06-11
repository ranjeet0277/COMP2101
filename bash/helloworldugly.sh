#!/bin/bash
# My third script - helloworldugly.sh
# This script displays the string “Hello World!”

# This is a silly way of creating the output text by starting with something else and stream editing it in a pipeline
echo -n "helb wold" |
#calling out via echo
  sed -e "s/b/o/g" -e "s/l/ll/" -e "s/ol/orl/" |
#using stream editor command to edit the file
  tr "h" "H"|
#using tr command to transform uppercase and lowercase alphabhates
  tr "w" "W"|
  awk '{print $1 "\x20" $2 "\41"}'
  #using awk command to print
bc <<< "(($$ * 4 - 24)/2 + 12)/2" |
  sed 's/^/I am process # /'
