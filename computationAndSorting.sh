#!/bin/bash -x

declare -A resultDic
result=0
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

resultDic[s1]=$sum1
resultDic[s2]=$sum2
resultDic[s3]=$sum3
resultDic[s4]=$sum4

for i in ${!resultDic[@]};
do
	arr[((result++))]=${resultDic[${i}]}
done

echo ${resultDic[@]}
echo ${!resultDic[@]}
sortedResults=$(printf '%s\n' "${arr[@]}" | sort -n )
echo "Result in Ascending Order : "$sortedResults
