#!/bin/bash
for file in topics/PE*
do
  title=$(grep -E '^== (Plenary ){0,1}Exercise' $file | sed 's@== @@g')
  duration=$(grep -i 'duration:' $file | rev | cut -d ' ' -f 2 | rev)
  echo "$title ($duration min)"
done