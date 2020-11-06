#!/bin/bash -x

echo "*********Flip Coin Combination Problem !!! ****************"
declare -A flipCoin
count=0
while [ $count -lt 50 ]
do
	if [ $((RANDOM%2)) -eq 0 ]
	then
		flipCoin[H]=$((flipCoin[H]+1))
	else
		flipCoin[T]=$((flipCoin[T]+1))
	fi
	((count++))
done
echo "Singlet Combination : "${!flipCoin[@]}
echo "No. of Occurrences  : "${flipCoin[@]}

#calculate and display percentage of singlet Combination
h=`echo ${flipCoin[H]} | awk '{print ($1/50)*100}'`
echo "Percentage of 'H' : $h%"
t=`echo ${flipCoin[T]}|awk '{print ($1/50)*100}'`
echo "Percentage of 'T' : $t% "
