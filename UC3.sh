#!/bin/bash

i=0
j=1
k=1
while [ $i -lt 21 ]
do
        a=$(( RANDOM%2 ))

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
	p=$(($j-$k))
        echo "Head has won by: " $p
elif [ $k -gt $j ]
then
	q=$(($k-$j))
        echo "Tail has won by: " $q
else
	r=$(($k=$j))
	echo "Tie up by: " $r
fi
