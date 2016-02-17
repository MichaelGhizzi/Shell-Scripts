#!/bin/bash
#******************************
# NAME: MICHAEL GHIZZI
# CPSC-254, SPRING 2015
# LAB PROJECT #4
#
# Print right-aligned triangle of stars whose
# size is indicated by the argument recieved by the user
#******************************

# Verify that there is exactly one argument
if [ $# -ne 1 ]
then 
	echo "usage: $0 <positive integer>"
	exit
fi

# Verify that the argument is an integer
isValidInteger()
{
	if [[ $1 =~ ^[+-]?[0-9]+$ ]]; then
		return 0
	else
		return 1
	fi
}

# Verify that the argument is an valid integer
if ! isValidInteger $1
then
	echo "error: $1 is not a valid integer"
	exit
fi

# Verify that the argument is greater than or equal to 1
if [ $1 -lt 1  ]
then 
	echo "error: $1 is not a positive integer"
	exit
fi

# Print right-aligned triangle of stars where the number of rows
# equal the supplied argument and each row contains number of stars
# equal to the row number
for((line=1; line<=$1; line++))
do
	for((space=($1-line); space>0; space--))
	do
	echo -n ' '
	done
		# Prints the stars
		for((star=1; star<=line; star++))
		do  
		echo -n '*'
		done
	echo ''
done
