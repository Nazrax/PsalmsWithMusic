\version "2.14.2"
\language "english"
\paper {
 #(set-paper-size "letter")
 indent = 0\cm
}

\header {
 title = \markup \center-column { "For All The Saints" }
}
 
<<
 \include "tunes/forallthesaints.ly"
 \include "lyrics/Hymn281.ly"
>>
