#!/bin/bash
# Performs spell check on all topic files and slide decks
# Prerequisite: "gramma" is installed (npm i gramma -g)

for file in $(ls -1 topics/ | grep -v 'QZ.ME')
do
  topic=$(echo -n "topics/$file")
  echo "Checking file: $topic"
  gramma check "$topic"
done

for file in $(ls -1 slide-decks/)
do
  deck=$(echo -n "slide-decks/$file")
  echo "Checking file: $deck"
  gramma check "$deck"
done
