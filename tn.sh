#!/bin/bash 
# File              : tn.sh
# Author            : akhil <aktiwari@techracers.com>
# Date              : 29.05.2018
# Last Modified Date: 29.05.2018
# Last Modified By  : akhil <aktiwari@techracers.com>
# A simple note taking script

# variable initializations
date=$(date) #stores currnet timestamp to variable date.

# category
category="$1"

# filepath
filepath="${HOME}/${category}notes.txt"

read -p "Your Note: " note
if [[ $note ]]; then
	echo "$date: $note" >> ${filepath}
	echo "Note '$note' saved to file '${filepath}'"
else
	echo "No note entered, nothing saved."
fi

echo "End of code reached"
exit 0
