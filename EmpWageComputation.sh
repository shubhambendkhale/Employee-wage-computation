echo "Welcome to Employee Wage Computation Program on Master Branch"

wagePerHour=20
workingDays=20
maxHrsInMonth=100
monthSalary=0
totalWorkingHr=0
for (( i=0; i<$workingDays && $totalWorkingHr<$maxHrsInMonth; i++ ))
do
	
	random=$((RANDOM%3))
	case $random in
		1)
			workingHr=8
			;;
		2)
			workingHr=4
			;;
		*)
			workingHr=0
			;;
	esac
	totalWorkingHr=$((totalWorkingHr+workingHr))
done
monthSalary=$((wagePerHour*totalWorkingHr))
echo "Employee monthly wage : $monthSalary"
