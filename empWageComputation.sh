echo "Welcome to employee wage calculation"
num=$((RANDOM%3))

case $num in
	0) echo "Employee is absent"
	;;
	1)c=$((20*8))
	  d=$((c*20))
	  echo "Employee is fulltime and wages is $c per day"
	  echo "Wages of full time employee for month is $d"
	;;
	2)c=$((20*4))
	  d=$((c*20))
	  echo "Employee is fulltime and wages is $c per day"
	  echo "Wages of full time employee for month is $d"
	;;
	*)
    	 echo "Your Given Input Is Invalid , Please Check Again :("
    	 ;;
	esac