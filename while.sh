#!/bin/bash -x
# File              : striptill.sh
# Author            : akhil <aktiwari@techracers.com>
# Date              : 30.05.2018
# Last Modified Date: 30.05.2018
# Last Modified By  : akhil <aktiwari@techracers.com>

# A script to echo a file after a certain keyword "${1}" has been found.

if [[ ! "${1}" ]]
then 
	echo "Need the first argument" >&2
	exit 1
fi

while read -r word
do
	if [[ "${word}" =~ "${1}" ]]
	then
		echo "${word}" >&1
		break
	fi
done

# print out the remaining file.
while read -s word
do
	echo "${word}" >&1
done

exit 0

