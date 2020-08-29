#! /bin/bash -x

empIsPartTime=1
empIsFullTime=2
empRatePerHr=20

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
