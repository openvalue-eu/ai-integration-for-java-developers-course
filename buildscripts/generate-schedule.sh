#!/bin/bash

for file in pdf/slides-day-*.pdf; do
  day=$(echo $file | sed 's@pdf/slides-day-@@g' | sed 's@.pdf@@g')
#  day=$(echo $file | grep -oP '[0-9]+')


  goals=$(
    pdfgrep -n 'topicStart:' $file |\
    grep -E '(LG|XT)' |\
    cut -d ':' -f 3 |\
    sort -V |\
    tr '\n' ' '
  )
  echo "Learning goals for day $day: $goals" > "generated/schedule-day-$day.adoc"
done

