#!/bin/bash -x

echo "Flip Coin Combination Problem !!!"
if [ $((RANDOM%2)) -eq 0 ]
then
	echo "Heads"
else
	echo "Tails"
fi
