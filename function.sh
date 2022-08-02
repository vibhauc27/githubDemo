#!/bin/bash -x

function text() {
	echo $1
}

result="$( text $((RANDOM%2)) )"
if [ $result -eq 1 ]
	then
		echo "They are equal"
	else
		echo "They are not equal"
fi

