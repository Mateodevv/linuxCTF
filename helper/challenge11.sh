#!/bin/bash

cd /home/ubuntu
touch tmp11
touch challenge11

rand=$((200+$RANDOM%1900))
for i in {1..2000}; do
	if [[ $i == $rand ]]; then
		echo "wer-lesen-kann" >> challenge11
	fi
	dd if=/dev/urandom of=tmp11 count=1 bs=16 status=none
	cat tmp11 >> challenge11
done
rm -f tmp11
