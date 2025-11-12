#!/bin/bash
# checks whether all topic files have a "topicStart" tag in speaker notes


topicStartList=""
for file in $(ls -1 topics | grep -ve '^PE..\..*\.adoc' | grep -ve '^QZ\..*\.adoc')
do

  topicStart=$(grep '_topicStart' topics/$file | cut -d '_' -f 2 | sed 's@topicStart:@@g')
#  echo $topicStart $file
  if [ -z "${topicStart}" ]
  then
    echo "No topicStart tag found in topic $file"
  else
    # topic start found
    topicStartList="$topicStartList $topicStart"
  fi
done
echo "* Found topicStart tags:$topicStartList"