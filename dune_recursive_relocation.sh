#!/bin/bash

read -p "Do you want to proceed? " -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    exit 1
fi

echo Please copy this script into the parent folder where the dune catalogue folders are located.
echo The script assumes the catalogue top catalogue folder is in the same directory where all the movie files are located.

echo "Specify the full path of the base directory created by cataloguer (i.e. smb:Z:/mnt/media/Collection/Movies/)"
read dune_location

char="/"

find . -name "dune_folder.txt" | while read file

	do

	parsed=${file:2}
	full_path=$dune_location$parsed

	echo ${full_path} | grep -o "/" | wc -l > tmp

	reference=`cat tmp`
	reference2=$((reference-4))

		for (( i=1; i<=$reference2; i++ ))
		do
    			printf '%s\n' ".." | sort |tr '\n' '/' >> tmp2
		done

	replacewith=`cat tmp2`

	sed -i "s|${dune_location}|${replacewith}|g" "${file}"

	rm tmp
	rm tmp2

done
