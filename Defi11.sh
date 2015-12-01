#!/bin/bash
IFS=$' '
input=$(tr -d ',?;.:/!§*%£$+=°)('|tr "\n" " "< /dev/stdin)
contvar=" "
for part in $input; do

  if [[ -z $(echo $contvar | tr " " "\n" | grep $part) ]]; then
     contvar=$contvar" "$part
     echo $part
  fi
done
