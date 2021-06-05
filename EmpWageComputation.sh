echo "Welcome to Employee Wage Computation Program on Master Branch"
random=$((RANDOM%2))
wagePerHour=20
workingHr=0
if [ $random -eq 1 ]
then
	echo "Employee present"
	workingHr=8
else
	echo "Employee absent"
	workingHr=0
fi
salary=$((wagePerHour*workingHr))
echo "Daily employee wage : $salary"
