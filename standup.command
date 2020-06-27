#!/bin/bash
echo "I should stand up every how many minutes? (integer only please)"
read utime
#sleep $utime
#sleep $((utime * 60))
echo "If you need to pause this script for 'X' minutes, write 'X' and click enter (integer only please)"

while true; do
	pausetime=0
	read -t $((utime * 60)) pausetime # right after the input is made, it moves on
	echo "Standup script will remind you to stand after $pausetime minutes"
	sleep $((pausetime * 60))
	say 'You should stand up'
	sleep 2
	say 'You should stand up'
done

#read -t 3 -n 1
#if [ $? = 0 ] ; then
#exit ;
#else
#echo "waiting for the keypress"
#fi
#https://linuxhint.com/bash_wait_keypress/