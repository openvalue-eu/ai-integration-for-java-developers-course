#!/bin/bash
learningGoalMappingFile="slide-decks/1W4D-00.learning-goal-cross-reference.adoc"
learningGoalDescriptions="slide-decks/00.isaqb-curriculum-learning-goals.adoc"
for day in 1 2 3 4
do
  echo "Day $day:"
  topics=$(cat $learningGoalMappingFile | grep "day-$day" | sort -V | cut -d '|' -f 2)
  for topic in $topics
  do
    lg=$(echo $topic | sed 's@LG@LG @g')
    grep "=== $lg:" $learningGoalDescriptions | sed 's@=== @@g'
  done
  echo ""
done
