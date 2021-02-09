#!/bin/bash

cd /home/ubuntu/challenge7

for i in {1..16}; do
	mkdir folder$i
	for j in {1..16}; do
		mkdir folder$i/subfolder$j
		touch folder$i/subfolder$j/file
		ran=$(($RANDOM%256))
		if [[ $ran == 123 ]]; then
			ran=124
		fi
		dd if=/dev/urandom of=folder$i/subfolder$j/file count=$ran bs=64 status=none
	done
done
rm folder9/subfolder7/file
dd if=/dev/urandom of=folder9/subfolder7/file count=123 bs=64 status=none

