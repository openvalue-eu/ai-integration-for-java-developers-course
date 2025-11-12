#!/bin/bash
learningGoalMappingFile="generated/*-cross-reference.adoc"

for day in 1 2 3 4
do
  echo -n "Learning goals for day $day: "
  echo -n $(cat $learningGoalMappingFile | grep "day-$day" | sort -V | cut -d '|' -f 2)
  echo ""
done
