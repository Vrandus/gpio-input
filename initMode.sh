#!/bin/bash

for s in {0..4}
do
	gpio mode $s out
	gpio write $s 0
done 
gpio mode 5 in
gpio mode 5 up

