#!/bin/bash
# File              : check_dir_count.sh
# Author            : akhil <aktiwari@techracers.com>
# Date              : 29.05.2018
# Last Modified Date: 29.05.2018
# Last Modified By  : akhil <aktiwari@techracers.com>
# Simple bash script to compare the total directory count of the two directories.

# Check the script must only be passed 2 arguments
if [[ $# -ne 2 ]]
then
	echo "Only 2 arguments must be passed"
	exit 1
fi

# Both the arguments must be directories
if [[ ! -d "${1}" ]]
then
	echo "${1} is not a directory"
	exit 1
fi
if [[ ! -d "${2}" ]]
then
	echo "${2} is not a directory"
	exit 1
fi

dir1="${1}"
dir2="${2}"

# Get the file count for the 2 directories
count_1=$(ls -ltr "${dir1}" | wc -l) # example of command substitution
count_2=$(ls -ltr "${dir2}" | wc -l) # example of command substitution

# Compare the total number of files in the 2 directories
if [[ "${count_1}" -gt  "${count_2}" ]]
then
	echo "${dir1} has more files that ${dir2}"
elif [[ "${count_1}" -eq  "${count_2}" ]]
then
	echo "${dir1} & ${dir2} have same number of files"
else
	echo "${dir2} has more files that ${dir1}"
fi
exit 0
