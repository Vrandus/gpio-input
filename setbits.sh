#!/bin/bash

value=$1
let "bit1 = ( value ) & 1"
let "bit2 = ( value >> 1 ) & 1"
let "bit3 = ( value >> 2 ) & 1"
let "bit4 = ( value >> 3 ) & 1"

gpio write 0 $bit1
gpio write 1 $bit2
gpio write 2 $bit3
gpio write 3 $bit4

