#!/bin/bash

array[0]="thomas@system76.com"
array[1]="aaron@system76.com"
array[2]="nathaniel@system76.com"
array[3]="jax@system76.com"
array[4]="nathan@system76.com"
array[5]="wiggins@system76.com"
array[6]="alexander@system76.com"
array[7]="simcha@system76.com"

size=${#array[@]}
index=$(($RANDOM % $size))
echo ${array[$index]}
