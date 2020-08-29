#! /bin/bash -x

empIsPresent=1;
empPresentOrNot=$((RANDOM % 2))

if [ $empPresentOrNot -eq $empIsPresent ]
then
	echo "Employee is Present"
else
	echo "Employee is Absent"
fi
