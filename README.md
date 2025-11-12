# isaqb-cpsaf-course
Course material for the iSAQB CPSA-F course

## Organization of this repository

In order to promote modularity of the material, we differentiate between _topics_ and _slide-decks_. A topic
is a relatively small collection of slides for a specific topic. A slide-deck is then a file that aggregates
topics together into a usable slide-deck. This allows us to compose slide-decks for different variations of
the course, using the same topics. 

Perhaps with some pre-processing we might even be able to influence the topic-files when including them
into a slide-deck. This requires some research into the capabilities of asciidoctor though.

Please note that files in `topics/` that are prefixed with `LGx.xx` are the topics that confer the information
of the official iSAQB learning goals. Please do not overhaul the contents of these files without checking with 
Bert Jan Schrijver. The official accreditation of this material depends on the contents of these files.

## How To Build The Slide Decks

The script `generate-slide-decks.sh` will create a RevealJS presentation for each `.adoc` file in the
`slide-decks` folder. For this to work, it needs a bunch of the asciidoctor tools. If you have these tools
installed locally, you can run the script directly. 

Alternatively, you can use the Docker image from Asciidoctor which has all the tools installed already.
Running the toolchain inside the Docker image is as easy as running 

```shell script
docker compose up
```

The output files will then be available in the `out/` folder. To use the RevealJS presentations, you can 
serve them by using the Python built in HTTP server:

```shell script
python -m http.server --directory out
```

## Running "DEV Mode"

There is another script called `run-dev-docker-image.sh`. This script will start up an interactive version of
the Docker image and it will run the `generate-slide-decks.sh` and then remain open. This is especially useful
when working on the files, since it eliminates the startup of the docker image.

It also supports an argument that will make it only (re)generate a single slide deck. Simply invoke it with the
path to the slide deck you are working on:

```shell script
./run-dev-docker-image.sh slide-decks/1W4D-01.introduction-and-concepts.adoc
```

After generating this file, it will then wait for input. Pressing ENTER will regenerate the specified slide deck.
The alternative option offered is to regenerate the entire `out/`-dir. This is useful if you changed styles or
reveal-js files.

## Updating RevealJS

The `revealjs` folder contains the 4.1.6 version of RevealJS, but formatted as a 3.x distribution. This is
necessary because the current version of asciidoctor-revealjs is only compatible with the 3.x distributions
of RevealJS. Since the dist-layout of RevealJS changed with version 4, we have to provide a custom formatted
release.

When updating RevealJS, make sure the location of the CSS and JS files match the current location. The
slide-deck generation script will copy this folder to the `out/` folder to make sure serving the presentations
will actually work.

## Using images

The `images` folder is copied over to the `out/` folder when slides are generated.

## Speaker notes

The `.adoc` files can contain speaker notes. These are preceded by a `[.notes]` tag after which the notes are put in a block (marked with a `--` at the beginning and the end of the speaker notes). To view the speaker notes when running the presentation, simply press `'S'`. 

## Printing the Slide Decks
To print slide decks, run the script `./build-slides-release.sh`. This will also generate the schedule and learning goals cross reference.

## Presenting
- Open your browser (Preferably Firefox)
- Navigate to http://localhost:8000/
- Open the slide deck
- Press 's' to open the speaker notes
- Press 'f' to put the slides on full screen. Note: if this blocks your speaker notes on OSX, enable the setting "Displays have separate Spaces" in System Preferences -> Mission control. Or try another browser (Firefox works).
- First open the speaker notes on your second screen, then press 'f' to put your main screen full screen.
- Press space to navigate to the next slide (that way you won't have to think about navigating down or to the right and you don't unintentionally skip topics)
- Press '?' to see which keyboard shortcuts are available in Reveal

