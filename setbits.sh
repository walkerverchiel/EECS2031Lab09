#!/bin/bash


for i in 0 1 2 3
do
	gpio write $i $((($1 >> ($i)) & 1))
done
