#!/bin/bash
# checks whether all quiz questions are included in the 1W4D files

for file in $(ls -1 topics | grep -e '^QZ\..*\.adoc')
do
  echo -n .
  grepResult=$(grep $file slide-decks/slides-day-* | grep -v '#')

  if [ -z "${grepResult}" ]
  then
    echo "Quiz question $file is not included in slide decks"
  fi


  grepResult2=$(grep $file slide-decks/aggregation-of-all-quiz-questions.adoc | grep -v '#')

  if [ -z "${grepResult2}" ]
  then
    echo "Quiz question $file is not included in overview of all quiz questions"
  fi


done
echo ""
echo "* Done checking quiz questions"
