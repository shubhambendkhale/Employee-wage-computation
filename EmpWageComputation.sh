echo "Welcome to Employee Wage Computation Program on Master Branch"
declare -a dailySalary
monthSalary=0
wagePerHour=20
workingHr=0
counter=0
for (( i=0; i<20; i++ ))
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
	dailySalary[((counter++))]=$((workingHr*wagePerHour))
done
echo "Daily Salary : ${dailySalary[@]}"

for (( i=0; i<20; i++ ))
do
	sal=${dailySalary[i]}
	monthSalary=$((monthSalary+sal))
done
echo "Monthly employee wage : $monthSalary"
