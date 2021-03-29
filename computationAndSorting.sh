#!/bin/bash -x
echo "Enter Number A : "
read A
echo "Enter Number B : "
read B
echo "Enter Number C : "
read C

sum1=$(($A+$B+$C))

sum2=$(($(($A*$B))+$C))

sum3=$(($C+$(($A/$B))))

sum4=$(((($A%$B))+$C))


