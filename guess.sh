#!/bin/bash
# File              : guess.sh
# Author            : akhil <aktiwari@techracers.com>
# Date              : 30.05.2018
# Last Modified Date: 30.05.2018
# Last Modified By  : akhil <aktiwari@techracers.com>

# A simple script to emulate guessing game in bash

# generate the random number to be guesssed in the range 0 - 99
target="${RANDOM}"%100;

guess=

until [[ guess -eq "${target}" ]]
do
	read -r  -p "guess:" guess 
	if [[ guess -lt "${target}" ]]
	then
		echo "increase the guess"
	elif [[ guess -gt "${target}" ]]
	then
		echo "decrease the guess"
	else
		echo "bingo!!"
	fi
done

exit 0
