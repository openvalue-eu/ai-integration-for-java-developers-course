#!/bin/bash

# prerequisites: 'brew install pdfgrep'
pdf=$1
pdfName=$(basename $pdf)

for line in $(pdfgrep -n 'topicStart:' $pdf)
do
  lineNr=$(echo $line | cut -d ':' -f 1)
  pageNr=$(($lineNr - 1))
  topic=$(echo $line | cut -d ':' -f 3-)
  echo "|$topic|$pdfName|$pageNr"
done
