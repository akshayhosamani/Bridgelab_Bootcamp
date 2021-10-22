echo "Enter a year: "
read y
leapYear=$(($y%4))
echo $leapYear
if  [ $leapYear -eq 0 ]
then
	echo $y "is a leap year"
else echo $y "is not leap year"
fi