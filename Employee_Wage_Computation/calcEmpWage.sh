#! /bin/bash -x

empIsPresent=1;
empPresentOrNot=$((RANDOM % 2))

if [ $empPresentOrNot -eq $empIsPresent ]
then
	empRatePerHr=20
	empHrs=8
	salary=$((empHrs * empRatePerHr))
else
	salary=0
fi

