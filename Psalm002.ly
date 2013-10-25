\version "2.14.2"
\language "english"
\paper {
 #(set-paper-size "letter")
 indent = 0\cm
}

\header {
 title = \markup \center-column { "Psalm 2" }
 tagline = ""
}

\pointAndClickOff
 
<<
 \include "tunes/hintze.ly"
 \include "lyrics/Psalm002.ly"
>>
