#!/bin/bash

pdfReleaseDir="pdf"
lgCrossReferenceScript="./learning-goal-cross-reference.sh"


echo "* Learning goal / slide deck cross reference:"
for file in $(ls -1 $pdfReleaseDir/slide*)
do
  $lgCrossReferenceScript $file
done | sort -V | grep -E '(LG|XT)'


