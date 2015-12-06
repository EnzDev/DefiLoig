#!/bin/bash

	#Multiple line solution with the order
	echo -e "\e[1;31mMultiple line solution with the apparition order\e[0m"
IFS=$' '
input=$(tr -d ',?;.:/!§*%£$+=°)('|tr "\n" " "< /dev/stdin)
contvar=" "
for part in $input; do

  if [[ -z $(echo $contvar | tr " " "\n" | grep $part) ]]; then
     contvar=$contvar" "$part
     echo $part
  fi
done

	#One line solution but without the order
	echo -e "\n\e[1;31mOne line solution but without the apparition order\e[0m"
sed 's+[;,.]++g' < /dev/stdin | tr ' ' '\n' | sort -u
