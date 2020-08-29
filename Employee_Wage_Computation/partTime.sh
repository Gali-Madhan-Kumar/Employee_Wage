#! /bin/bash -x

empIsPartTime=1
empIsFullTime=2
empRatePerHr=20

empPresentOrNot=$((RANDOM % 3))

if [ $empIsFullTime -eq $empIsPresent ]
then
	empHrs=8

elif [ $empIsPartTime -eq $empIsPresent ]
then
	empHrs=4
else
	empHrs=0
fi

salary=$((empHrs * empRatePerHr))
