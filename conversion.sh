echo "Enter 1 for feet to inch conversion and 2 for inch to feet coversion"
read input
if [ $input -eq 1 ]
then
	echo "Enter a number to convert to inches"
	read inputFeet
	inch=$(($inputFeet*12))
	echo $inputFeet "feet is equal to $inch inch"
elif [ $input -eq 2 ]
then
	echo "Enter a number to convert to feet"
	read inputInch
	feet=$(($inputInch/12))
	echo $inputInch "Inches is equal to $feet feet"
else echo "Please enter valid input"
fi