#!/bin/bash -x
declare -A compute

echo "Enter a:"
read a
echo "Enter b:"
read b
echo "Enter c:"
read c

result=$((a+b*c))
echo "Result is : $result"

compute=$((a*b+c))
echo "Computing result a*b+c is: $compute"

compute2=$((c+a/b))
echo "Computing result of c+a/b is : $compute2"


compute3=$((a%b+c))
echo "Computing a%b+c is: $compute3"

compute[arr1]=$result
compute[arr2]=$compute
compute[arr3]=$compute2
compute[arr4]=$compute3

echo ${compute[@]}

desc=($(printf '%d\n' "${compute[@]}" | sort -nr))
echo ${desc[@]}

asc=($(printf '%d\n' "${compute[@]}" | sort -n))
echo ${asc[@]}

