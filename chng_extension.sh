#!/bin/bash
# File              : chng_extension.sh
# Author            : akhil <aktiwari@techracers.com>
# Date              : 30.05.2018
# Last Modified Date: 30.05.2018
# Last Modified By  : akhil <aktiwari@techracers.com>

# A simple script to change all the extensions to a different extension
if [[ $# -ne 2 ]]
then
	echo "Exactly 2 arguments must be passed"
	exit 1
fi

# set -x
files_to_chng_extns="$(ls *.${1})"
# set +x

for file in ${files_to_chng_extns}
do
	# set -x
	basenm=$(basename "${file}" "${1}" )
	mv "${basenm}""${1}" "${basenm}""${2}"
	# set +x
done

exit 0


