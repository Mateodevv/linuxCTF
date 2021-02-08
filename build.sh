#!/bin/bash

echo "Building scripts into binaries"

while read  p; do
	sh py_to_bin.sh $p
done <challenges_with_scripts.txt

docker build -t praktikum/ctf .
