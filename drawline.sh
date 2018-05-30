#!/bin/bash
# File              : drawline.sh
# Author            : akhil <aktiwari@techracers.com>
# Date              : 30.05.2018
# Last Modified Date: 30.05.2018
# Last Modified By  : akhil <aktiwari@techracers.com>

# simple script to draw a line for a specified character for a specidied length.

if [[ ! "${1}" ]]
then 
	echo "Need the length argument"
	exit 1
fi

# checking that the first argument is a number
if [[  ! "${1}" =~ ^[0-9]+s ]]
then 
	lenght="${1}"
else
	echo "Length has to be a number" >&2
	exit 1
fi

char="="
if [[ "${2}" ]]
then
	char="${2}"
fi

line=
for (( i=0; i<lenght; i++ ))
do
	line="${line}${char}"
done

printf "%s\n" "${line}"
exit 0


