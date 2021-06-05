echo "Welcome to Employee Wage Computation Program on Master Branch"
random=$((RANDOM%3))
wagePerHour=20
workingHr=0
case $random in
	1)
		echo "Employee present for Full time"
		workingHr=8
		;;
	2)
		echo "Employee present for Part time"
		workingHr=4
		;;
	*)
		echo "Employee Absent"
		workingHr=0
		;;
esac
salary=$((wagePerHour*workingHr))
echo "Daily employee wage : $salary"
