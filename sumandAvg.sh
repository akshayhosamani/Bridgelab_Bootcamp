echo "enter Five two digit numbers"

read first
read second
read third
read fourth
read fifth

sum=$((first+second+third+fourth+fifth))
echo "SUM is ==> " $sum
avg=$((sum/5))
echo "AVG is ==> " $avg