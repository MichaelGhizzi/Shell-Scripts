#!/bin/bash
#**************************
# NAME: MICHAEL GHIZZI
# CPSC-254, SPRING 2015
# LAB PROJECT #4
# 
# Greets user based off the time of day,
# different hours of the day result in different output
#**************************

# Verify that there are no arguments called
if [ $1 ]
then
	echo "error, no arguments should be called"
	exit
fi

# Assigns NOW to display date for user
NOW="$(date +"%I:%M%p")"

# Assigns TIME for program if else statement
TIME=`date +%H`

# Based on a 24 hour clock, in increments of 6, different outputs are displayed along with greeting the user
if [ $TIME -lt 6 ]
then 
	echo "Hello $USER, it is, $NOW. Don't work too hard!"
elif [ $TIME -lt 12 ]
then
	echo "Hello $USER, it is, $NOW. Have a good morning!"
elif [ $TIME -lt 18 ]
then
	echo "Hello $USER, it is, $NOW. Have a good afternoon!"
elif [ $TIME -lt 24 ]
then
	echo "Hello $USER, it is, $NOW. Have a good evening!"
else
	echo ERROR
	exit
fi 
