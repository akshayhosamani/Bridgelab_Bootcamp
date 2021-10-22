echo "enter Five three digit numbers"

read first
read second
read third
read fourth
read fifth

array=($first $second $third $fourth $fifth)


max=${array[0]}
min=${array[0]}

for i in "${array[@]}"
do
    if [ "$i" -gt "$max" ]
	then
        max="$i"
    fi

    if [ "$i" -lt "$min" ]
	then
        min="$i"
    fi
done

echo "Max is: $max"
echo "Min is: $min"