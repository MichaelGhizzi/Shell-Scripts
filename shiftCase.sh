#!/bin/bash 
#*******************
# NAME: MICHAEL GHIZZI
# CPSC-254, SPRING 2015
# LAB PROJECT #4
#
# Convert the supplies string arguments to all uppercase or all lower case depending on the supplied flag
#*******************

# Verify that the first argument is -l or -u
if [ $1 != -l ] && [ $1 != -u ]
then
	echo "error: usage: ./shiftCase.sh -l | -u <string to convert> [<string to convert>..]"
	exit
fi

# Changes all string arguments to lower case
if [ $1 = -l ]
    then
    for ((i=2; i<=$#; i++))
    do
        echo ${!i} | tr '[:upper:]' '[:lower:]'
    done
fi

# Changes all string arguments to upper case
if [ $1 = -u ]
    then
    for ((i=2; i<=$#; i++))
    do
        echo ${!i} | tr '[:lower:]' '[:upper:]'
    done
fi
