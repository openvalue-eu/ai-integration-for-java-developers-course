#!/bin/bash

topics=$(
  for path in pdf/slides-day-*.pdf; do
    file=$(basename $path)
    pdfgrep -n 'topicStart:' $path |\
    grep -E '(LG|XT)' |\
    awk -F ':' "{printf \"|%s|%s|%d\\n\",\$3,\"$file\",\$1-1}"
  done
)


for goal in LG01 LG02 LG03 LG04 LG05 LG06 XT; do

  for topic in $topics
  do
    echo $topic | grep -e $goal
  done | sort -V > ./generated/$goal-cross-reference.adoc

done
