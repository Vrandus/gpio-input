#!/bin/bash
s=`gpio read 5`
for (( ; ; ))
do
	while [ $s -eq 1 ]
	do
		s=`gpio read 5`		
	done
	
	echo "done"
	while [ $s -eq 0 ]
	do
		s=`gpio read 5`
	done
done
