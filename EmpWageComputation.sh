echo "Welcome to Employee Wage Computation Program on Master Branch"
declare -a dailyWage
wagePerHour=20
workingDays=20
maxHrsInMonth=100
monthSalary=0
totalWorkingHr=0

function getWorkingHours() {
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
	echo $workingHr
}

for (( i=0; i<$workingDays && $totalWorkingHr<$maxHrsInMonth; i++ ))
do
	
	random=$((RANDOM%3))
	workingHr="$( getWorkingHours $random )"
	dailyWage[i]=$((workingHr*wagePerHour))
	totalWorkingHr=$((totalWorkingHr+workingHr))
done
echo "Daily wage : ${dailyWage[@]}"
monthSalary=$((wagePerHour*totalWorkingHr))
echo "Employee monthly wage : $monthSalary"
