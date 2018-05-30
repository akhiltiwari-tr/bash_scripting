#!/bin/bash
# File              : confirmation_box.sh
# Author            : akhil <aktiwari@techracers.com>
# Date              : 30.05.2018
# Last Modified Date: 30.05.2018
# Last Modified By  : akhil <aktiwari@techracers.com>

# echo without new line.
echo -n "Are you sure [Y/N]: "

# initialize answer variable to null
answered= 

set -x
while [[ ! "${answered}" ]]
do
	read -r -n 1 -s answer 
	if [[ "${answer}" = [Y/y] ]]
	then 
		answered="yes"
	elif [[ "${answer}" = [N/n] ]]
	then   
		answered="no"
	fi
done
set +x

printf "\n %s \n" "${answered}"

