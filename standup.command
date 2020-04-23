echo "In how many minutes should I stand up? (integer only please)"
read utime
#sleep $utime
sleep $((utime * 60))

while true; do
	say 'You should stand up'
	sleep 2
done

#read -t 3 -n 1
#if [ $? = 0 ] ; then
#exit ;
#else
#echo "waiting for the keypress"
#fi
#https://linuxhint.com/bash_wait_keypress/