#!/bin/bash

set -e
pdfStats="./buildscripts/pdf-stats.sh"
pdfBuildDir="pdf-build"
pdfReleaseDir="pdf"
generatedContentDir="generated"

echo "* OpenValue iSAQB CPSA-F material release"
echo "* Cleaning build dirs"
rm -rf out 2>/dev/null
rm -rf $pdfReleaseDir 2>/dev/null
rm -rf $pdfBuildDir 2>/dev/null
rm -rf $generatedContentDir/ 2>/dev/null
mkdir --mode=777 out/ 2>/dev/null
mkdir --mode=777 $pdfReleaseDir 2>/dev/null
mkdir --mode=777 $pdfBuildDir 2>/dev/null
mkdir --mode=777 $generatedContentDir 2>/dev/null


function runScript() {
  COMMAND="$@" docker compose --progress=quiet up --no-log-prefix --quiet-pull utilities
}

function generatePDFs() {

  echo "* Generating slides as PDF"
  SLIDE_DECK_DIR=./slide-decks \
  PDF_DIR="$pdfBuildDir" \
  SLIDE_DECK_FILES="$1" \
  docker compose --progress=quiet up --no-log-prefix asciidoctor pdf-render

  echo "* Copying slide decks to release dir"
  cp $pdfBuildDir/*.pdf $pdfReleaseDir/
}

echo "* Creating the slides for the individual days:"
generatePDFs "slides-day-*"
echo "* Generating schedule..."
runScript ./buildscripts/generate-schedule.sh
echo "* Generating learning goals cross reference sheets..."
runScript ./buildscripts/generate-cross-reference.sh
echo "* Creating the other PDFs:"
generatePDFs "*"

# cleanup build dir
rm -rf $pdfBuildDir

# report stats
echo "* Done."
echo "* Created the following files:"
for file in $(ls -1 $pdfReleaseDir)
do
  runScript $pdfStats $pdfReleaseDir/$file
done

echo "* Checking all learning goals are present:"
runScript ./check-learning-goal-cross-reference-for-completeness.sh

echo "* Checking that all topic files have a topicStart tag:"
runScript ./check-topics-for-topicstart-tag.sh

echo "* Checking that all quiz questions are included in the 1W4D slide decks:"
runScript ./check-all-quiz-questions-included.sh

#echo "* Learning goal / slide deck cross reference:"
# runScript ./generate-learning-goal-slide-deck-cross-reference.sh

echo "* Mapping of learning goals to training days:"
runScript ./learning-goal-day-mapping.sh

echo "* Overview of exercise page numbers:"
runScript ./get-exercise-page-numbers.sh
