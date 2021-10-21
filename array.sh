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
array=( $(printf "%s\n" ${array[@]} | sort -n ))
echo "Descending order ==> ${array[*]}"

#Printing in Descending order
array=( $(printf "%s\n" ${array[@]} | sort -nr ))
echo "Ascending order ==> ${array[*]}"