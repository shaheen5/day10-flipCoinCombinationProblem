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


echo -e "\n***************Doublet Combination********************\n"
declare -A flipCoin2   #declare dictionary
#function to count coin flips
function doublet_getCount(){
case $1 in
	0)flipCoin2[HH]=$((flipCoin2[HH]+1));;
	1)flipCoin2[HT]=$((flipCoin2[HT]+1));;
	2)flipCoin2[TH]=$((flipCoin2[TH]+1));;
	3)flipCoin2[TT]=$((flipCoin2[TT]+1));;
esac
}
count1=0
while [ $count1 -lt 50 ]
do
	doublet_getCount $((RANDOM%4))
	((count1++))
done
echo "Doublet Combination : "${!flipCoin2[@]}
echo "No. ofOccurrences   : "${flipCoin2[@]}
hh=`echo ${flipCoin2[HH]}|awk '{print ($1/50)*100}'`
ht=`echo ${flipCoin2[HT]}|awk '{print ($1/50)*100}'`
th=`echo ${flipCoin2[TH]}|awk '{print ($1/50)*100}'`
tt=`echo ${flipCoin2[TT]}|awk '{print ($1/50)*100}'`
echo "Percentage of 'HT' : $ht%"
echo "Percentage of 'HH' : $hh%"
echo "Percentage of 'TT' : $tt%"
echo "Percentage of 'TH' : $th%"
