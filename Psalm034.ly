\version "2.14.2"
\language "english"
\paper {
 #(set-paper-size "letter")
 indent = 0\cm
}

\header {
 title = \markup \center-column { "Psalm 34" }
 tagline = ""
}

\pointAndClickOff
 
<<
 \include "tunes/yorkshire.ly"
 \include "lyrics/Psalm034.ly"
>>
