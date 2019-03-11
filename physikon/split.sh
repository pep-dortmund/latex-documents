#!/bin/bash

# creates separate pdfs from Handzettel_00_Unternehmen

file="build/Handzettel_00_Unternehmen.pdf"
pagesper=2
adressbook="Test_Unternehmen.adr"

# find the number of pages
number=$(pdfinfo -- "$file" 2> /dev/null | awk '$1 == "Pages:" {print $2}')
count=$((number / pagesper))
filename=$(echo $file | cut -d'_' -f 1)

# iterate through all pages and create separate pdfs
counter=0
while [ "$count" -gt "$counter" ]; do
  start=$((counter*pagesper + 1));
  end=$((start + pagesper - 1));
  line=$((8 + 10*counter));

  company=$(sed -n "${line}p" $adressbook | awk '$3 == "%Firma" {print substr($1,2) "_" substr($2,1,length($2)-1)}')

  counterstring=$(printf %04d "$counter")
  pdftk "$file" cat "${start}-${end}" output "${filename}_${company}.pdf"
  echo "${filename}_${company}.pdf"
  counter=$((counter + 1))
done
