#!/bin/bash

cd /home/ubuntu/

touch challenge10
# line num of flag
rand=$((100+$RANDOM%900))
for i in {1..1000}; do
	# flag
	if [[ $i == $rand ]]; then
		echo "flag_gute_arbeit_padawan" >> challenge10
	fi
	# random 8 byte int
	echo `od -vAn -N8 -tu8 < /dev/urandom` >> challenge10
done
