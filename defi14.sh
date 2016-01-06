#!/bin/bash
IFS=$'\n'
cd $1
fold=`ls -1AF|grep "/$"|tr -d "/$" `
files=`find -maxdepth 1 -type f|sed "s+^./++g"`

out="\033[92m\tDossiers\n"

for item in $fold; do
out=$out"\033[32m$item \\ `ls $item |grep "" -c`\033[0m"
out=$out$"\n"
done
out=$out$"\n\033[94m\tFichiers\n"

for item in $files; do
out=$out"\033[34m$item \\ `du -h $item|cut -f1`\033[0m"
out=$out$"\n"
done
out=$out"\033[0m"
echo -e $out|column -s "\\" -t

