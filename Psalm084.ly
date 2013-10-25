\version "2.14.2"
\language "english"
\paper {
 #(set-paper-size "letter")
 indent = 0\cm
}

\header {
 title = \markup \center-column { "Psalm 84" }
 tagline = ""
} 

\pointAndClickOff

<<
 \include "tunes/llangloffan.ly"
 \include "lyrics/Psalm084.ly"
>>
