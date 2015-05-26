#!/bin/bash

TEMPWAV=/tmp/psalm.wav
TEMPO=$2
[[ -z $TEMPO ]] && TEMPO=200

for MIDI in ${1}-*.midi; do
 MP3=${MIDI%midi}mp3
 timidity -T$TEMPO --output-24bit -Ow -o $TEMPWAV $MIDI
 lame -v $TEMPWAV $MP3
done
