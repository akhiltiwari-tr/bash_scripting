#!/bin/bash  -x
# File              : striptill.sh
# Author            : akhil <aktiwari@techracers.com>
# Date              : 30.05.2018
# Last Modified Date: 30.05.2018
# Last Modified By  : akhil <aktiwari@techracers.com>

# A script to echo a file after a certain keyword "${1}" has been found.

############----NOT WORKING-###############

if [[ ! "${1}" ]]
then 
	echo "Need the first argument" >&2
	exit 1
fi

while read -r 
do
	if [[ $REPLY =~ "$1" ]]
	then
		echo "$REPLY" 
		break
	fi
done

# print out the remaining file.
while read -r
do
	echo "$REPLY" 
done

exit 0

