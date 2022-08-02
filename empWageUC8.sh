#!/bin/bash -x

partTime=1;
fullTime=2;
maximumHoursMonth=4;
empRateHour=20;
numberWorkingDays=20;

totalEmpHours=0;
totalWorkingDays=0;

function getWorkHours()
{
	local $empCheck=$1
	 case $empCheck in
                $fullTime)
                        empHours=8;;
                $partTime)
                        empHours=4;;
                *)
                        empHours=0;;
         esac
	echo $empHours

}

while [[ $totalEmpHours -lt $maxHoursInMonth && $totalWorkingDays -lt $numberWorkingDays ]]
do
        ((totalWorkingDays++))

        empCheck=$((RANDOM%3));
	empHours="$( getWorkHours $empCheck )"

        totalEmpHours=$(($totalEmpHours+$empHours));
	dailyWage[$totalWorkingDays]=$(($empHours*$empRateHour))
done


totalSalary=$(($totalEmphours+$empRateHour));
echo ${dailyWage[@]}
  
