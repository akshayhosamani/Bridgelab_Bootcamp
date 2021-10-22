function is_power_of_two () {
    declare -i n=$1
    (( n > 0 && (n & (n - 1)) == 0 ))
}

for ((number=0; number<=10; number++))
 do
    if is_power_of_two "$number";
    then
        echo "$number"
    fi
done