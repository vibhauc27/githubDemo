#!/bin/bash -x

partTime=1;
fullTime=2;
empRatePerHour=20;
numberWorkingDays=20;
totalSalary=0;

for (( day=1; day<=numberWorkingDays; day++ ))
do
	empCheck=$((RANDOM%3));

		case $empCheck in
        	$fullTime)
                	empHours=8;;
        	$partTime)
                	empHours=4;;
        	*)
                	empHours=0;;
		esac

	salary=$(($empHours*$empRatePerHour));
	totalSalary=$(($totalSalary+$salary));
done

 
