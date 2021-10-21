head=0
tail=0
flipTime=0
#for i in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21
for (( i=0;i<21; i++))
do
	flipTime=$((flipTime+1))
	flip=$((RANDOM%2))
	if [ $flip == 1 ]
	then
		head=$((head+1))
	else [ $flip == 0 ]
	tail=$((tail+1))
	fi
done
echo "head="$head
echo  "tail="$tail

if [ $head -gt $tail ]
	then
	diff=$(($head-$tail))
	echo "Head has won by $diff points"
	else 	
	diff=$(($tail-$head))
	echo "Tail has won by $diff points"
fi

percentageOfHead=$((100*head/flipTime))
percentageOfTail=$((100*tail/flipTime))
echo "Flip Times ==> "$flipTime

echo "Pecentage of Head is ==> "$percentageOfHead
echo "Pecentage of Tail is ==> "$percentageOfTail