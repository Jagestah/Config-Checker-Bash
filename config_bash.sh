#! /bin/bash

#Gather info for the script
echo "Enter Username: "
read USERNAME
echo "Enter Password"
read -s PASSWORD

#Use variables entered to run the python script
while read i
do
	DEVICE_IP=$i
	python config_checker_bash.py $DEVICE_IP $USERNAME $PASSWORD
	echo
	echo '---------------------------------------------'
	echo
done < device_list.txt

#Reset Variables
DEVICE_IP=" "
USERNAME=" "
PASSWORD=" "