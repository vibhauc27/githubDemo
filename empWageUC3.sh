#!/bin/bash -x

partTime=1;
fullTime=2;
empRatePerHour=20;
randomCheck=$((RANDOM%3));

if [ $fullTime -eq $randomCheck ]
then 
	empHours=8;
elif [ $partTime -eq $randomCheck ]
then
	empHours=4;
else
	empHours=0;
fi

salary=$(($empHours*$empRatePerHour));

