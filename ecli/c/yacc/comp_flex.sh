#!/bin/bash

lfn=$1
flex ${lfn}

OLD_IFS="$IFS"
IFS="."
arr=($lfn)
IFS=OLD_IFS
suffix=".yy.c"
fn="${arr[0]}${suffix}"
mv lex.yy.c $fn
suffix=".o"
dst="${arr[0]}${suffix}"


cc -o ${dst} ${fn} -lfl  

echo ${dst}
