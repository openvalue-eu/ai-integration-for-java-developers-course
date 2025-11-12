#!/bin/bash
#pdf=$1
pdf=pdf/aggregation-of-all-exercises.pdf

for num in `seq 1 10`; do

pageNum=$(pdfgrep -ni "Exercise $num: " $pdf | head -n 1 | cut -d ':' -f -1)

title=$(./get-exercise-titles.sh | grep "Exercise $num:" | cut -d ':' -f 2-)

#echo $pageNum $title

echo "[Exercise $num (page $pageNum)](/material/aggregation-of-all-exercises.pdf):$title"
#echo "[Exercise 2 (page 7)](/material/aggregation-of-all-exercises.pdf): Gathering requirements from the perspective of an architect (120 min)"
#echo ""

done

