\version "2.14.2"
\language "english"
\paper {
 #(set-paper-size "letter")
 indent = 0\cm
}

\header {
 title = \markup \center-column { "Psalm 17 (set to 'Te Deum')" }
 tagline = ""
}

\pointAndClickOff
 
<<
 \include "tunes/dundee.ly"
 \include "lyrics/Psalm017.ly"
>>
