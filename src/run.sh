
while IFS= read -r line1 && IFS= read -r line2 <&3; do
  echo ${line1:0:10} - ${line2:0:10};
  [[ ${line1:0:10} != ${line2:0:10} ]]; echo $?
done < $1 3< $2