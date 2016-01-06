#!/bin/bash
IFS=$'\n'
cd $1
fold=`ls -1AF|grep "/$"|tr -d "/$" `
files=`find -maxdepth 1 -type f|sed "s+^./++g"`


for item in $fold; do
out=$out"$item \\ \033[32m `ls $item |grep "" -c` \033[0m"
out=$out$"\n"
done
out=$out$"\n"

for item in $files; do
out=$out"$item \\ \033[33m `du -h $item|cut -f1` \033[0m"
out=$out$"\n"
done
echo -e $out|column -s "\\" -t

