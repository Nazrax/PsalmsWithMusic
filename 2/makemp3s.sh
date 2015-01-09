#!/bin/bash

TEMPWAV=/tmp/psalm.wav

for MIDI in ${1}-*.midi; do
 MP3=${MIDI%midi}mp3
 timidity -T200 --output-24bit -Ow -o $TEMPWAV $MIDI
 lame -v $TEMPWAV $MP3
done
