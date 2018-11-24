#!/bin/bash
s=`gpio read 5`
for (( c=0; c<=15; ))
do
	while [ $s -eq 1 ] 
	do 
		s=`gpio read 5`
	done
	c=$((c+1))
	while [ $s -eq 0 ]
	do
		s=`gpio read 5`
	done
	./setbits.sh $c

done

./setbits.sh 16
gpio write 4 1
sleep 1s
gpio write 4 0

