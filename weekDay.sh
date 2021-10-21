echo "Enter a number between 1-7 to know the weekday"
read a
case $a in
	1)
		echo " First day is SUNDAY"
		;;
	2)
		echo "Second day is MONDAY"
		;;
	3)
		echo "Third day is TUESDAY"
		;;
	4)
	  	echo "Fourth day is WEDNESDAY"
      		;;
	5)
		echo "Fifth day is THURSDAY"
		;;
	6)
		echo "Sixth day is FRIDAY"
		;;
	7)
		echo "SEVENTH day is SATURDAY"
		;;
	*)
		echo "YOU MUST ENTER BETWEEN 1-7"
		;;
	esac