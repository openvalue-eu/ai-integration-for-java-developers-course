#!/bin/bash
pdf=$1
totalPages=$(echo -n $(pdfinfo $pdf | grep Pages | sed 's@Pages: @@g'))
speakerNotePages=$(echo -n $(pdfgrep 'Speaker notes' $pdf  | wc -l))
slidePages=$(( totalPages - speakerNotePages))

echo "$pdf: $slidePages slides, $speakerNotePages speaker note pages, $totalPages total"