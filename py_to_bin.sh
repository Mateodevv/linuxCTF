#!/bin/bash

mkdir buildtmp
cp script/$1.py buildtmp/
cd buildtmp

cython --embed -3 -o $1.c $1.py
gcc -o $1.o -c $1.c `python-config --cflags`
gcc -o $1 $1.o `python-config --ldflags`

chmod +rx $1
cp $1 ../binary/
cd ..
rm -rf buildtmp
