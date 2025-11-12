#!/usr/bin/env sh

if [ $# -gt 0 ];
then
  docker run --rm -ti -e DEV_MODE=1 -v "$(pwd):/documents" asciidoctor/docker-asciidoctor:1.33 buildscripts/generate-slide-decks.sh $1
else
  docker run --rm -ti -e DEV_MODE=1 -v "$(pwd):/documents" asciidoctor/docker-asciidoctor:1.33
fi
