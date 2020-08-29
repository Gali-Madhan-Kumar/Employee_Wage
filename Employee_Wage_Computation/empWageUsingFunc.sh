#! /bin/bash -x

# CONSTANTS FOR THE PROGRAM

IS_PART_TIME=1
IS_FULL_TIME=2
MAX_HRS_IN_MONTH=10
EMP_RATE_PER_HR=20
NUM_WORKING_DAYS=20

# VARIABLES

totalEmpHr=0
totalWorkingDays=0

function getWorkingHours() {

	case $1 in
		$IS_FULL_TIME)
                        workingHours=8
                        ;;
                $IS_PART_TIME)
                        workingHours=4
                        ;;
                *)
                	workingHours=0
                        ;;
	esac
	
	echo $workingHours
}
while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do	
	((totalWorkingDays++))
	workHours="$( getWorkingHours $(RANDOM % 3)) )"
	totalWorkHours=$((totalEmpHrs + workHours))

done

totalSalary=$((totalWorkHours * EMP_RATE_PER_HR))
