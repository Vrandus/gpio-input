#!/bin/bash

for (( ; ; ))
do
	s=`gpio read 5`
	if [ $s -eq 0 ] 
	then
		for i in {0..3}
		do
			gpio write $i 1
		done
	else
		for i in {0..3}
		do
			gpio write $i 0
		done
	fi
done
