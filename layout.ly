\version "2.14.2"
\language "english"
\paper {
 #(set-paper-size "letter")
 indent = 0\cm
}

\header {
 title = \markup \center-column { \title }
 tagline = ""
}

\pointAndClickOff

<<
 \include \tunefile
 \include \lyricsfile
>>

\layout {
 \context {
  \Score \remove "Bar_number_engraver"
 }
}
