\version "2.14.2"
\language "english"
\paper {
 #(set-paper-size "letter")
 indent = 0\cm
}

\header {
 title = \markup \center-column { "Psalm 5" }
 tagline = ""
}

\pointAndClickOff 

<<
 \include "tunes/aberystwyth.ly"
 \include "lyrics/Psalm005.ly"
>>
