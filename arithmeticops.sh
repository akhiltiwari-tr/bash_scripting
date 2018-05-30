#!/bin/bash
# File              : arithmeticops.sh
# Author            : akhil <aktiwari@techracers.com>
# Date              : 30.05.2018
# Last Modified Date: 30.05.2018
# Last Modified By  : akhil <aktiwari@techracers.com>

# generate the random number to be guesssed in the range 0 - 99
declare -ir target="${RANDOM}"%100;

declare -i guess=

until  (( guess == "${target}" ))
do
	read -r  -p "guess:" guess 
	if (( guess < "${target}" ))
	then
		echo "increase the guess"
	elif (( guess > "${target}" ))
	then
		echo "decrease the guess"
	else
		echo "bingo!!"
	fi
done

exit 0
