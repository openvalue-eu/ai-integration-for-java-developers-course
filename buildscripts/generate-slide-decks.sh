#!/bin/bash

OUT_DIR=$(pwd)/out

# Options: https://docs.asciidoctor.org/reveal.js-converter/latest/converter/revealjs-options/
ASCIIDOCTOR_REVEALJS_OPTS="-r asciidoctor-kroki -a revealjsdir=revealjs -a customcss=isaqb-cpsa-f.css -a revealjs_theme=sky -a source-highlighter=highlight.js -a revealjs_hash=true -a revealjs_width=1680 -a revealjs_height=1050 -a icons=font -a revealjs_showSlideNumber=all -a revealjs_slideNumber=c/t -a revealjs_controlsLayout=edges -a revealjs_controlsBackArrows=faded -a revealjs_progress=true -a revealjs_center=true -a :revealjs_pdfseparatefragments=true -a revealjs_pdfmaxpagesperslide=1"

###
## Repeatable functions
###

function regenerate_out_dir()
{
  # Create the output directory if it does not exist yet
  if [ ! -d $OUT_DIR ];
  then
    mkdir -p $OUT_DIR
  fi

  cp -r images $OUT_DIR
  cp -r revealjs $OUT_DIR
  cp -dR style/. $OUT_DIR/
}

function generate_slide_decks()
{
  local LOCAL_SLIDE_DECKS=$1

  for deck in $LOCAL_SLIDE_DECKS
  do
    [[ -e "$deck" ]] || break
    DECKFILE=$(basename $deck '.adoc')
    echo "Creating slide-deck for $DECKFILE"
    asciidoctor-revealjs $ASCIIDOCTOR_REVEALJS_OPTS slide-decks/$DECKFILE.adoc -o ${OUT_DIR}/${DECKFILE}-tmp.html

    # inject additional HTML in bottom of generated file:
    ## replace </script></body></html> with </script>
    ## inject additional HTML
    ## add </body></html>
    cat ${OUT_DIR}/${DECKFILE}-tmp.html | sed 's@</script></body></html>@</script>@g' > ${OUT_DIR}/${DECKFILE}.html
    echo >> $OUT_DIR/$DECKFILE.html
    cat slide-decks/additional-html.html >> $OUT_DIR/$DECKFILE.html
    echo >> $OUT_DIR/$DECKFILE.html
    echo "</body></html>" >> $OUT_DIR/$DECKFILE.html
    rm ${OUT_DIR}/${DECKFILE}-tmp.html

  done
}

###
## Main Loop
###

regenerate_out_dir

if [ $DEV_MODE ];
then
  SLIDE_DECKS=$1

  echo "DEV Mode enabled..."
  while true; do
    generate_slide_decks "$SLIDE_DECKS"

    echo "1] Regenerate OUT_DIR"
    echo "Q] Quit"
    echo "Press [ENTER] to regenerate the slide deck"
    read CHOICE

    case $CHOICE in
      1)  echo "Regenerating OUT_DIR"
          regenerate_out_dir
          ;;
      [qQ])  echo "Exiting..."
          exit 0
          ;;
    esac
  done
else
  SLIDE_DECKS=${1:-slide-decks/*.adoc}

  generate_slide_decks "$SLIDE_DECKS"
fi




