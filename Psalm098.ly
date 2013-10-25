\version "2.14.2"
\language "english"
\paper {
 #(set-paper-size "letter")
 indent = 0\cm
}

\header {
 title = \markup \center-column { "Psalm 98" }
 tagline = ""
}

\pointAndClickOff
 
<<
 \include "tunes/desert.ly"
 \include "lyrics/Psalm098.ly"
>>
