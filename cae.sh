#! /usr/bin/bash

fileName=$1
objFileName=$1.obj

FILE=/etc/resolv.conf
if test -f "./$objFileName"; then
   rm objFileName
	rm $1
fi

nasm -f elf64 -o $fileName.o $fileName.asm;
ld $fileName.o -o $fileName
