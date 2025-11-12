#!/bin/bash
#
## Opens all slide decks in printing mode in Safari
#

cd pdf-renderer/
# puppeteer and typescript are already installed in the pdf-tools image
export NODE_PATH=$(npm root -g)
tsc --baseUrl "$NODE_PATH" -p .
cd ..

# Generate decks
function convertHtmlToPdf() {
  input=$1
  output=$2

  echo "Converting $2"
  node pdf-renderer/dist/index.js "$input" "$output"
}



pids=()
for page in out/$2; do
  pdfPage="$(basename $page .html).pdf"
  
  convertHtmlToPdf $page "$1/$pdfPage" &
  pids+=( $! )
done

finalResult=0
for pid in ${pids[@]}; do
  wait -f $pid
  result=$?
  if [ $result -ne 0 ]; then
    finalResult=$result
  fi
done

exit $finalResult
