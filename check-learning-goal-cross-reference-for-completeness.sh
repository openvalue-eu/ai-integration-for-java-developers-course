#!/bin/bash
learningGoalsDoc="slide-decks/all-cpsa-f-learning-goals.adoc"
crossRefDoc="generated/*-cross-reference.adoc"

echo "Checking that all iSAQB learning goals are present in learning goal cross reference doc:"

for lg in $(cat $learningGoalsDoc | grep '=== LG' | cut -d ' ' -f 2- | cut -d '[' -f -1 | cut -d ':' -f -1 | sed 's@ @@g')
do
  ref=$(grep "|$lg|" $crossRefDoc)
  if [ "$ref" != "" ]
    then
      echo -n "."
    else
      echo ""
      echo "!! Not present in cross reference doc: $lg"
  fi
done
echo "done!"
