\version "2.14.2"
\language "english"
\paper {
 #(set-paper-size "letter")
 indent = 0\cm
}

\header {
 title = \markup \center-column { "Psalm 46 second version" }
}
 
<<
 \include "tunes/ein-feste-burg.ly"
 \include "lyrics/Psalm046v2.ly"
>>
