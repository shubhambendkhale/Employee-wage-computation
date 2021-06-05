echo "Welcome to Employee Wage Computation Program on Master Branch"
random=$((RANDOM%2))
if [ $random -eq 1 ]
then
	echo "Employee present"
else
	echo "Employee absent"
fi
