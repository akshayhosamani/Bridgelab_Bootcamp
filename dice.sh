declare -A Dicedata

dice=$((RANDOM%7 + 1))
maxnumber=0
maxchar=""
echo "Dice rolle's at first time ==>" $dice

echo "Repeating rolling dice.."
for ((i=1; i<=100; i++))
do

dice1=$((RANDOM%7 + 1))
# echo "Dice rolle's $i ==>" $dice1
# storing into the dictonary
Dicedata["data_"$i]="$dice1"

done

echo "dictonary ===>" ${Dicedata[*]}

for char in ${Dicedata[*]}
do
if [ ! ${obj[ $char ]} ]
then
obj[ $char ]=1
else
obj[ $char ]=$(( obj[$char]+1))
fi

for elem in $obj
do
if [ $((${obj[elem]}>=maxnumber)) ]
then
 maxnumber=obj[elem]
 maxchar=elem
fi

done

done

echo "$maxnumber"
echo "$maxchar"