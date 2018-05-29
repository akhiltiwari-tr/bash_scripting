#!/bin/bash
# File              : check_strlen_count.sh
# Author            : akhil <aktiwari@techracers.com>
# Date              : 29.05.2018
# Last Modified Date: 29.05.2018
# Last Modified By  : akhil <aktiwari@techracers.com>
# Simple script to compare length of 2 strings

if [[ $# -ne 2 ]]
then
	echo "Only 2 arguments must be passed"
	exit 1
fi


# Get the lengths for the 2 argument strings
len1="${#1}"
len2="${#2}"


# Compare the lengths of the 2 strings.
if [[ "${len1}" -gt  "${len2}" ]]
then
	echo "${1} is bigger than ${2}"
elif [[ "${len1}" -eq  "${len2}" ]]
then
	echo "${1} & ${2} have the same lengths"
else
	echo "${2} is bigger than ${1}"
fi
exit 0
