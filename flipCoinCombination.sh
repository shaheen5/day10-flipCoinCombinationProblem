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
echo "No. of Occurrences  : "${flipCoin2[@]}
hh=`echo ${flipCoin2[HH]}|awk '{print ($1/50)*100}'`
ht=`echo ${flipCoin2[HT]}|awk '{print ($1/50)*100}'`
th=`echo ${flipCoin2[TH]}|awk '{print ($1/50)*100}'`
tt=`echo ${flipCoin2[TT]}|awk '{print ($1/50)*100}'`
echo "Percentage of 'HT' : $ht%"
echo "Percentage of 'HH' : $hh%"
echo "Percentage of 'TT' : $tt%"
echo "Percentage of 'TH' : $th%"


echo -e "\n***************Triplet Combination********************\n"
declare -A flipCoin3   #declare dictionary
#function to count coin flips
function triplet_getCount(){
case $1 in
        0)flipCoin3[HHH]=$((flipCoin3[HHH]+1));;
        1)flipCoin3[HHT]=$((flipCoin3[HHT]+1));;
        2)flipCoin3[HTH]=$((flipCoin3[HTH]+1));;
        3)flipCoin3[HTT]=$((flipCoin3[HTT]+1));;
	4)flipCoin3[THH]=$((flipCoin3[THH]+1));;
	5)flipCoin3[THT]=$((flipCoin3[THT]+1));;
	6)flipCoin3[TTH]=$((flipCoin3[TTH]+1));;
        7)flipCoin3[TTT]=$((flipCoin3[TTT]+1));;
	
esac
}
count2=0
while [ $count2 -lt 50 ]
do
        triplet_getCount $((RANDOM%8))
        ((count2++))
done
echo "Triplet Combination : "${!flipCoin3[@]}
echo "No. of Occurrences  : "${flipCoin3[@]}
hhh=`echo ${flipCoin3[HHH]}|awk '{print ($1/50)*100}'`
hht=`echo ${flipCoin3[HHT]}|awk '{print ($1/50)*100}'`
hth=`echo ${flipCoin3[HTH]}|awk '{print ($1/50)*100}'`
htt=`echo ${flipCoin3[HTT]}|awk '{print ($1/50)*100}'`
thh=`echo ${flipCoin3[THH]}|awk '{print ($1/50)*100}'`
tht=`echo ${flipCoin3[THT]}|awk '{print ($1/50)*100}'`
tth=`echo ${flipCoin3[TTH]}|awk '{print ($1/50)*100}'`
ttt=`echo ${flipCoin3[TTT]}|awk '{print ($1/50)*100}'`

echo "Percentage of 'HTH' : $hth%"
echo "Percentage of 'HTT' : $htt%"
echo "Percentage of 'THT' : $tht%"
echo "Percentage of 'THH' : $thh%"
echo "Percentage of 'HHT' : $hht%"
echo "Percentage of 'TTT' : $ttt%"
echo "Percentage of 'TTH' : $tth%"
echo "Percentage of 'HHH' : $hhh%"

