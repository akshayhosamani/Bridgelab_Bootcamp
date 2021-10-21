declare -A dict

echo "Enter three values"
echo "Enter value of a to start calculation"
read a
echo "Enter value of b to start calculation"
read b
echo "Enter value of c to start calculation"
read c

#calcutation
dict[val1]="$((a+b*c))"
dict[val2]="$((a*b+c))"
dict[val3]="$((c+a/b))"
dict[val4]="$((a%b+c))"

echo "First Value ==> ${dict[val1]}"
echo "Second Value ==> ${dict[val2]}"
echo "Third Value ==> ${dict[val3]}"
echo "Fourth Value ==> ${dict[val4]}"

#Converting to array
array=("${dict[val1]}", "${dict[val2]}", "${dict[val3]}","${dict[val4]}")

#Printing in Ascending order
for (( i = 0; i < 3; i++ ))
do
   for (( j = $i; j < 3; j++ ))
   do
      if [ ${array[$i]} > ${array[$j]}  ]; then
       temp=${array[$i]}
       array[$i]=${array[$j]}
       array[$j]=$temp
      fi
   done
done

echo -e "\nSorted Numbers in Ascending Order:"
for (( i=0; i < 3; i++ )) 
do
  echo ${array[$i]}
done


#Printing in Descending order
for (( i = 0; i < 3; i++ ))
do
   for (( j = $i; j < 3; j++ ))
   do
      if [ ${array[$i]} < ${array[$j]}  ]; then
       temp1=${array[$i]}
       array[$i]=${array[$j]}
       array[$j]=$temp1
      fi
   done
done

echo -e "\nSorted Numbers in Descending Order:"
for (( i=0; i < 3; i++ )) 
do
  echo ${array[$i]}
done