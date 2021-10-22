for ((i=1; i<=100; i++))
do
array[$i]="$i"
done
#show array data
echo "array will be ==>" ${array[*]}

sortedIds=($(echo "${array[@]}" | tr ' ' '\n' | sort -u | tr '\n' ' '))
echo "result ==>" $sortedIds
for A in ${array[*]}
do
if [ $A -eq $sortedIds  ]
then
echo $A
fi
done