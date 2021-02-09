#!/bin/bash

echo "Building scripts into binaries"
rm -f binary/*

while read  p; do
	echo $p
	sh py_to_bin.sh $p
done <challenges_with_scripts.txt

docker build -t praktikum/ctf .
