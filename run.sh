
while IFS= read -r line1 && IFS= read -r line2 && IFS= read -r line3 <&3; do
  pdfunite $line1 $line2 $line3;
done < $1 3< $2 3< $3
