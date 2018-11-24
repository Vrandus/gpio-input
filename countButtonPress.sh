#!/bin/bash

for (( c=0; c<=15; ))
do
	s=`gpio read 5`
	if [ $s -eq 0 ]
	then
		c=$((c+1))
		sleep 0.2s
	fi
	./setbits.sh $c

done

./setbits.sh 16
gpio write 4 1
sleep 1s
gpio write 4 0

