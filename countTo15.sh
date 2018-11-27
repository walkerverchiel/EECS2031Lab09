#!/bin/bash


for i in {0..15..0}
do
	./setbits.sh $i
	sleep 1
	echo $i
done
