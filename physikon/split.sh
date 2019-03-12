#!/bin/bash

# creates separate pdfs from Handzettel_00_Unternehmen

file="build/Handzettel_00_Unternehmen.pdf"
enclosure1="build/Handzettel_01_Ablauf.pdf"
enclosure2="build/Handzettel_02_Anfahrtsskizze.pdf"
enclosure3="build/Handzettel_03_Messeplan.pdf"
folder="messebriefe/"
pagesper=2
adressbook="Test_Unternehmen.adr"

# find the number of pages
number=$(pdfinfo -- "$file" 2> /dev/null | awk '$1 == "Pages:" {print $2}')
count=$((number / pagesper))

mkdir -p $folder

# iterate through all pages and create separate pdfs
counter=0
while [ "$count" -gt "$counter" ]; do
  start=$((counter*pagesper + 1));
  end=$((start + pagesper - 1));
  line=$((8 + 10*counter));

  company=$(sed -n "${line}p" $adressbook | awk '$3 == "%Firma" {print toupper(substr($1,2,3))}')

  counterstring=$(printf %04d "$counter")
  messebrief="Messebrief_${counterstring}_${company}.pdf"
  pdftk "A=$file" "B=$enclosure1" "C=$enclosure2" "D=$enclosure3" cat "A${start}-${end}" "B" "C" "D" output "${folder}$messebrief"
  echo "$folder$messebrief"
  counter=$((counter + 1))
done
