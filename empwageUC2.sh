#!/bin/bash -x

present=1;
randomCheck=$((RANDOM%2));

if [ $present -eq $randomCheck ]
then
	empRatePerHour=20;
	empHour=8;
	salary=$(($empHour*$empRatePerHour));
else
	salary=0;
fi
