#!/bin/bash

i=1
j=1
k=1
while [ $i -lt 11 ]
do
	a=$(( RANDOM%2 ))

	echo $a

	if [ $a -eq 1 ]
	then
		j=$(($j+1))
	else
		k=$(($k+1))
	fi
	i=$(($i+1))
done

if [ $j -gt $k ]
then
	echo "Head has won"
else
	echo "Tail has won"
fi
