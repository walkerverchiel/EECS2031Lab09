#!/bin/bash

b=0

while :
do
	./waitForButtonPress.sh

	((b++))
	echo "$b"
	./setbits.sh $b

	if [ $b -eq 16 ] ;
	then
		gpio write 4 1
		sleep 2
		gpio write 4 0
		break
	fi
done

