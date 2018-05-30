#!/bin/bash
# File              : create_scripts.sh
# Author            : akhil <aktiwari@techracers.com>
# Date              : 29.05.2018
# Last Modified Date: 29.05.2018
# Last Modified By  : akhil <aktiwari@techracers.com>
# Checks and create a valid shell script in the ${HOME}/bin/ directory.

# Check if an argument has been passed to this script.
if [[ ! $1 ]]
then
	echo "Missing argument"
	exit 1
fi

bin_dir="${HOME}/bin"
script_name="$1"
file_name="${bin_dir}/${script_name}"

# Checking if a file with the same name already exists in the bin directory
if [[ -e ${file_name} ]]
then
	echo "A file with the name ${file_name} already exists"
	exit 2
fi

if type ${script_name} >/dev/null 2>&1
then
	echo "A bash command already exists with this name"
	exit 3
fi

# Checking if the bin directory exists.
if [[ ! -d ${bin_dir} ]]
then
	#if ${HOME}/bin does not exists then we need to create it.
	if mkdir ${bin_dir}
	then
		echo "Created ${bin_dir}"
	else
		echo "Could not create ${bin_dir}"
		exit 4
	fi
fi

# create an empty file to be interpreted by bash
echo "#!/bin/bash" >> ${file_name}
# give the script appropriate permissions
chmod u+x ${file_name}
# open the file in an editor.
${EDITOR} ${file_name}


exit 0
