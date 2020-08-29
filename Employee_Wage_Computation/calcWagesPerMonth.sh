#! /bin/bash -x

empIsPartTime=1
empIsFullTime=2
totalSalary=0
empRatePerHr=20
numOfWorkingDays=20

for(( day=1; day<=$numOfWorkingDays; day+=1 ))
do
	empPresentOrNot=$((RANDOM % 3))

	case $empPresentOrNot in
		$empIsFullTime)
			empHrs=8
			;;
		$empIsPartTime)
			empHrs=4
			;;
		*)
		empHrs=0
			;;
esac

salary=$((empHrs * empRatePerHr))
totalSalary=$((totalSalary + salary))

done
