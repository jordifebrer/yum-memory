#!/bin/bash

# name of the file that contains the YUM commands
filename="commands.txt"

# counts lines from commands.txt
number_lines=$(cat "$filename" | wc -l)

# creates a random number from 0 to number_lines
random_number=$(python -c "import random; print random.randint(1,$number_lines)")

# returns a random line from commands.txt based on the random_number
line=`sed "$(echo $random_number)q;d" "$filename"`
printf "YM -> %s\n" "$line"
