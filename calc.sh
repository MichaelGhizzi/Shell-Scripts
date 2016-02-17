#!/bin/bash
#*********************************
# NAME: MICHAEL GHIZZI
# CSPC-254, SPRING 2015
# LAB PROJECT #4
#
# Basic arithmatic output whos values and output is indicated
# by the arguments supplied by the user.
#********************************

# Verify that the argument is an arithmatic operator
isValidOperator()
{
	if [[ $2 =~ ^[+-*/]+ ]]
    then
        return 0
	else
		return 1
	fi
}

# Verify that the first argument is a valid integer
isValidInteger()
{
	if [[ $1 =~ ^[+-]?[0-9]+$ ]]; then
		return 0
    else
		return 1
	fi
}

# Verify that the first and third arguments are integers
if ! isValidInteger $1 or $3
then 
	echo "error: usage: $1 <integer> $2 <arithmatic> $3 <integer>"
	exit
fi

# Verify that the second argument is an arithmatic operator
OP=$2
while true; do
case $OP in
# If addition operator is called, adding the $1 and $3, outputting the result
	+) results=$(($1+$3)) ; echo $results ; break ;;
# If subtraction operator is called, subtracting the $1 and $3, outputting the result
	-) results=$(($1-$3)) ; echo $results ; break ;;
# If multiplication operator is called, multiplying the $1 and $3, outputting the result
	x) results=$(($1*$3)) ; echo $results ; break ;;
# If division operator is called, checks if $3 is 0 (cant divide by 0), else divides $1 by $3
	/) if [ $3 -eq 0 ]
	    then
            echo "Cannot divide by 0"
            exit
       else
# If $3 is not equal to 0, displays the division results
            results=$(($1/$3)) ; echo $results ;
        fi
            break ;;
*) echo ERROR ; break ;;
esac
done 
