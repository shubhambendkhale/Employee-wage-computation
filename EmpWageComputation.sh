echo "Welcome to Employee Wage Computation Program on Master Branch"
random=$((RANDOM%3))
wagePerHour=20
workingHr=0
if [ $random -eq 1 ]
then
	echo "Employee present for Full time"
	workingHr=8
elif [ $random -eq 2 ]
then
	echo "Employee present for Part time"
	workingHr=4
else
	echo "Employee absent"
	workingHr=0
fi
salary=$((wagePerHour*workingHr))
echo "Daily employee wage : $salary"
