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

lord = \markup { \caps Lord }
lordcomma = \markup { \caps Lord, }
lordperiod = \markup { \caps Lord. }
lordsemi = \markup { \caps Lord; }
lordex = \markup { \caps Lord! }

\score {
 \new Staff {
%  \set Staff.midiInstrument = #"choir aahs"

  <<
   \include \tunefile
   \include \lyricsfile
  >>
 }
 \layout {
  \context {
   \Score \remove "Bar_number_engraver"
  }
 }

 \midi { }
}
