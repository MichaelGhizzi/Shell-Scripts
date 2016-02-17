#!/bin/bash
#**************************
# NAME: MICHAEL GHIZZI
# CPSC-254, SPRING 2015
# LAB PROJECT #4
# Gets the absolute path based upon the argument of the user inputs
#**************************

# Verify that an argument of a function is called
if [ $# -lt 1 ]
then
	echo "usage: $# <relative path> <relative path>.."
	exit
fi

# For loop called depending on how many arguments were taken in
for ((i=1; i<=$#; i++))
do
	# Verifys that the path exists
	if [ -d ${!i} ]
	then
		# Verify that there is an absolute path
		if [[ ${i} = /* ]]
		then
			echo "${!i} => already an absolute path."
		else
		# Displays absolute path
			echo "${!i} => `cd ${!i}; pwd`"
		fi
	else
        # If none of these are true, outputs does not exist
		echo "error: ${!i} => does not exist."
	fi
done
