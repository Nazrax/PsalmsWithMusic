\version "2.14.2"
\language "english"
\paper {
 #(set-paper-size "letter")
 indent = 0\cm
}

\pointAndClickOff

soprano = \transpose c c' { \clef treble  g2 g4 a | bf a g g | fs2 fs | f4 bf a g | fs2. fs4 | \bar "|" \break
g2. r4 | r1 | r1 | r2 r4 g4 | \bar "|" \break
d'4 d' d' d'8 c'8 | a4 a a a | bf g a g | fs2. fs4 | g1 \bar "|" \break
 }

alto = \transpose c c' { \clef treble  d2 d4 d | d d ef d | d2 d | f4 f f ef | d2. d4 | \bar "|" \break
d2. r4 | r1 | r2 r4 d4 | g g g f | \bar "|" \break
f2. ef4 | d2. d4 | d d d ef | d2. d4 | d1 | \bar "|" \break
 }

tenor = \transpose c c { \clef bass  g2 bf4 a | g f g bf | a2 a | d'4 d' c' bf | a2. a4 | \bar "|" \break
g2. r4 | r2 r4 g | d' d' d'8 c'8 bf4 | c' c' c'8 bf a4 |  \bar "|" \break
bf bf bf8[ a] g[ bf] | a4 a a8 g f4 | g8[ a] bf[ c'] d'4 c'8 bf | a2. a4 | g1 \bar "|" \break
 }

bass = \transpose c c { \clef bass  g2 g4 f | g d c bf,8 c | d2 d | d4 d8 ef f4 g | d2. d4 | \bar "|" \break
g,2. d4 | g g g8 f ef4 | d d d ef8 d | c4 c c d8 c | \bar "|" \break
bf,2. c4 | d2. d4 | g g f g | d2. d4 | g,1 \bar "|" \break
 }

verseAs = \lyricmode {
\set stanza = #"1." 
\markup { \super 169 Be}2 -- fore4 Thee4 let4 my4 cry4 come4 near,2 O2 Lord;4 true4 to4 Thy4 word,2. teach4
me.2. 
\markup { \teeny \italic { \super bass (Be } }4 -- \markup { \italic \teeny fore }4 \markup { \italic \teeny Thee }4 \markup { \italic \teeny let) }4  
\markup { \teeny \italic { \super tenor (Be } }4 -- \markup { \italic \teeny fore }4 \markup { \italic \teeny Thee }4 \markup { \italic \teeny let) }4  
\markup { \teeny \italic { \super alto (Be } }4 -- \markup { \italic \teeny fore }4 \markup { \italic \teeny Thee }4 \markup { \italic \teeny let) }4  
\markup { \super 170 Be}4  -- 
fore4 Thee4 let4 my4 plead4 -- ing4 come;4 True4 to4 Thy4 prom4 -- ise,4 res2. -- cue4 me.1
}
verseBs = \lyricmode {
\set stanza = #"2." 
\markup { \super 171 Since }2 Thou4 Thy4 stat4 -- utes4 teach4 -- est4 me,2 O2 let4 my4 lips4 Thy4 praise2. con4 --
fess.2. 
\markup { \teeny \italic { \super bass (Yea } }4 \markup { \italic \teeny of }4 \markup { \italic \teeny Thy }4 \markup { \italic \teeny word) }4  
\markup { \teeny \italic { \super tenor (Yea } }4 \markup { \italic \teeny of }4 \markup { \italic \teeny Thy }4 \markup { \italic \teeny word) }4  
\markup { \teeny \italic { \super alto (Yea } }4 \markup { \italic \teeny of }4 \markup { \italic \teeny Thy }4 \markup { \italic \teeny word) }4  
\markup { \super 172 Yea, }4 
of4 Thy4 word4 my4 tongue4 would4 sing,4 For4 Thy4 com4 -- mands4 are4 right2. -- eous4 -- ness.1
}
verseCs = \lyricmode {
\set stanza = #"3." 
\markup { \super 173 Be }2 rea4 -- dy4 with4 Thy4 hand4 to4 help,2 Be2 -- cause4 Thy4 pre4 -- cepts4 are2. my4
choice.2. 
\markup { \teeny \italic { \super bass (I've } }4 \markup { \italic \teeny longed }4 \markup { \italic \teeny for }4 \markup { \italic \teeny thy) }4  
\markup { \teeny \italic { \super tenor (I've } }4 \markup { \italic \teeny longed }4 \markup { \italic \teeny for }4 \markup { \italic \teeny thy) }4  
\markup { \teeny \italic { \super alto (I've } }4 \markup { \italic \teeny longed }4 \markup { \italic \teeny for }4 \markup { \italic \teeny thy) }4  
\markup { \super 174 I've }4
longed4 for4 Thy4 sal4 -- va4 -- tion,4 Lord,4 And4 in4 Thy4 ho4 -- ly4 law2. re4 -- joice.1
}
verseDs = \lyricmode {
\set stanza = #"4." 
\markup { \super 175 O }2 let4 Thine4 or4 -- din4 -- an4 -- ces4 help;2 My2 soul4 shall4 live4 and4 praise2. Thee4
yet.2.
\markup { \teeny \italic { \super bass (A } }4 \markup { \italic \teeny stray }4 -- \markup { \italic \teeny ing }4 \markup { \italic \teeny sheep) }4  
\markup { \teeny \italic { \super tenor (A } }4 \markup { \italic \teeny stray }4 -- \markup { \italic \teeny ing }4 \markup { \italic \teeny sheep) }4  
\markup { \teeny \italic { \super alto (A } }4 \markup { \italic \teeny stray }4 -- \markup { \italic \teeny ing }4 \markup { \italic \teeny sheep) }4  
\markup { \super 176 A }4
stray4 -- ing4 sheep,4 Thy4 serv4 -- ant,4 seek,4 For4 Thy4 com4 -- mands4 I'll4 ne'er2. for4 -- get.1
}

verseAa = \lyricmode {
\set stanza = #"1." 
\markup { \super 169 Be}2 -- fore4 Thee4 let4 my4 cry4 come4 near,2 O2 Lord;4 true4 to4 Thy4 word,2. teach4
me.2. 
\markup { \teeny \italic { \super bass (Be } }4 -- \markup { \italic \teeny fore }4 \markup { \italic \teeny Thee }4 \markup { \italic \teeny let) }4  
\markup { \teeny \italic { \super tenor (Be } }4 -- \markup { \italic \teeny fore }4 \markup { \italic \teeny Thee }4 \markup { \italic \teeny let) }4  
\markup { \super 170 Be}4  -- 
fore4 Thee4 let4 my4 plead2. -- ing4 come;2. True4 to4 Thy4 prom4 -- ise,4 res2. -- cue4 me.1
}
verseBa = \lyricmode {
\set stanza = #"2." 
\markup { \super 171 Since }2 Thou4 Thy4 stat4 -- utes4 teach4 -- est4 me,2 O2 let4 my4 lips4 Thy4 praise2. con4 --
fess.2. 
\markup { \teeny \italic { \super bass (Yea } }4 \markup { \italic \teeny of }4 \markup { \italic \teeny Thy }4 \markup { \italic \teeny word) }4  
\markup { \teeny \italic { \super tenor (Yea } }4 \markup { \italic \teeny of }4 \markup { \italic \teeny Thy }4 \markup { \italic \teeny word) }4  
\markup { \super 172 Yea, }4 
of4 Thy4 word4 my4 tongue2. would4 sing,2. For4 Thy4 com4 -- mands4 are4 right2. -- eous4 -- ness.1
}
verseCa = \lyricmode {
\set stanza = #"3." 
\markup { \super 173 Be }2 rea4 -- dy4 with4 Thy4 hand4 to4 help,2 Be2 -- cause4 Thy4 pre4 -- cepts4 are2. my4
choice.2. 
\markup { \teeny \italic { \super bass (I've } }4 \markup { \italic \teeny longed }4 \markup { \italic \teeny for }4 \markup { \italic \teeny thy) }4  
\markup { \teeny \italic { \super tenor (I've } }4 \markup { \italic \teeny longed }4 \markup { \italic \teeny for }4 \markup { \italic \teeny thy) }4  
\markup { \super 174 I've }4
longed4 for4 Thy4 sal4 -- va2. -- tion,4 Lord,2. And4 in4 Thy4 ho4 -- ly4 law2. re4 -- joice.1
}
verseDa = \lyricmode {
\set stanza = #"4." 
\markup { \super 175 O }2 let4 Thine4 or4 -- din4 -- an4 -- ces4 help;2 My2 soul4 shall4 live4 and4 praise2. Thee4
yet.2.
\markup { \teeny \italic { \super bass (A } }4 \markup { \italic \teeny stray }4 -- \markup { \italic \teeny ing }4 \markup { \italic \teeny sheep) }4  
\markup { \teeny \italic { \super tenor (A } }4 \markup { \italic \teeny stray }4 -- \markup { \italic \teeny ing }4 \markup { \italic \teeny sheep) }4  
\markup { \super 176 A }4
stray4 -- ing4 sheep,4 Thy4 serv2. -- ant,4 seek,2. For4 Thy4 com4 -- mands4 I'll4 ne'er2. for4 -- get.1
}

verseAt = \lyricmode {
\set stanza = #"1." 
\markup { \super 169 Be}2 -- fore4 Thee4 let4 my4 cry4 come4 near,2 O2 Lord;4 true4 to4 Thy4 word,2. teach4
me.2. 
\markup { \teeny \italic { \super bass (Be } }4 -- \markup { \italic \teeny fore }4 \markup { \italic \teeny Thee }4 \markup { \italic \teeny let) }4  
\markup { \super 170 Be}4  -- 
fore4 Thee4 let4 my4 plead4 -- ing4 come;4 True4 to4 Thy4 prom4 -- ise,4 res4 -- cue4 me,4 True4 to4 Thy4 prom4 -- ise,4 res2. -- cue4 me.1
}
verseBt = \lyricmode {
\set stanza = #"2." 
\markup { \super 171 Since }2 Thou4 Thy4 stat4 -- utes4 teach4 -- est4 me,2 O2 let4 my4 lips4 Thy4 praise2. con4 --
fess.2. 
\markup { \teeny \italic { \super bass (Yea } }4 \markup { \italic \teeny of }4 \markup { \italic \teeny Thy }4 \markup { \italic \teeny word) }4  
\markup { \super 172 Yea, }4 
of4 Thy4 word4 my4 tongue4 would4 sing,4 For4 Thy4 com4 -- mands4 are4 right4 -- eous4 -- ness,4 For4 Thy4 com4 -- mands4 are4 right2. -- eous4 -- ness.1
}
verseCt = \lyricmode {
\set stanza = #"3." 
\markup { \super 173 Be }2 rea4 -- dy4 with4 Thy4 hand4 to4 help,2 Be2 -- cause4 Thy4 pre4 -- cepts4 are2. my4
choice.2. 
\markup { \teeny \italic { \super bass (I've } }4 \markup { \italic \teeny longed }4 \markup { \italic \teeny for }4 \markup { \italic \teeny thy) }4  
\markup { \super 174 I've }4
longed4 for4 Thy4 sal4 -- va4 -- tion,4 Lord,4 And4 in4 Thy4 ho4 -- ly4 law4 re4 -- joice,4 And4 in4 Thy4 ho4 -- ly4 law2. re4 -- joice.1
}
verseDt = \lyricmode {
\set stanza = #"4." 
\markup { \super 175 O }2 let4 Thine4 or4 -- din4 -- an4 -- ces4 help;2 My2 soul4 shall4 live4 and4 praise2. Thee4
yet.2.
\markup { \teeny \italic { \super bass (A } }4 \markup { \italic \teeny stray }4 -- \markup { \italic \teeny ing }4 \markup { \italic \teeny sheep) }4  
\markup { \super 176 A }4
stray4 -- ing4 sheep,4 Thy4 serv4 -- ant,4 seek,4 For4 Thy4 com4 -- mands4 I'll4 ne'er4 for4 -- get,4 For4 Thy4 com4 -- mands4 I'll4 ne'er2. for4 -- get.1
}

verseAb = \lyricmode {
\set stanza = #"1." 
\markup { \super 169 Be}2 -- fore4 Thee4 let4 my4 cry4 come4 near,2 O2 Lord;4 true4 to4 Thy4 word,2. teach4
me.2. 
\markup { \super 170 Be}4  -- 
fore4 Thee4 let4 my4 plead4 -- ing4 come;4 True4 to4 Thy4 prom4 -- ise,4 res2. -- cue4 me,2. True4 to4 Thy4 prom4 -- ise,4 res2. -- cue4 me.1
}
verseBb = \lyricmode {
\set stanza = #"2." 
\markup { \super 171 Since }2 Thou4 Thy4 stat4 -- utes4 teach4 -- est4 me,2 O2 let4 my4 lips4 Thy4 praise2. con4 --
fess.2. 
\markup { \super 172 Yea, }4 
of4 Thy4 word4 my4 tongue4 would4 sing,4 For4 Thy4 com4 -- mands4 are4 right2. -- eous4 -- ness,2. For4 Thy4 com4 -- mands4 are4 right2. -- eous4 -- ness.1
}
verseCb = \lyricmode {
\set stanza = #"3." 
\markup { \super 173 Be }2 rea4 -- dy4 with4 Thy4 hand4 to4 help,2 Be2 -- cause4 Thy4 pre4 -- cepts4 are2. my4
choice.2. 
\markup { \super 174 I've }4
longed4 for4 Thy4 sal4 -- va4 -- tion,4 Lord,4 And4 in4 Thy4 ho4 -- ly4 law2. re4 -- joice,2. And4 in4 Thy4 ho4 -- ly4 law2. re4 -- joice.1
}
verseDb = \lyricmode {
\set stanza = #"4." 
\markup { \super 175 O }2 let4 Thine4 or4 -- din4 -- an4 -- ces4 help;2 My2 soul4 shall4 live4 and4 praise2. Thee4
yet.2.
\markup { \super 176 A }4
stray4 -- ing4 sheep,4 Thy4 serv4 -- ant,4 seek,4 For4 Thy4 com4 -- mands4 I'll4 ne'er2. for4 -- get,2. For4 Thy4 com4 -- mands4 I'll4 ne'er2. for4 -- get.1
}


\book {
 \header {
  title = \markup \center-column { "Psalm 119X (Soprano)" }
  tagline = ""
 }
 \bookOutputSuffix "s"
 \score {
  <<
   \new Staff <<
    #(set-accidental-style 'modern)
    \set Staff.printPartCombineTexts = ##f

    \key bf \major
    \time 4/4
    \numericTimeSignature

    \new Voice {  \soprano }
    \new Lyrics \verseAs
    \new Lyrics \verseBs
    \new Lyrics \verseCs
    \new Lyrics \verseDs
   >>
  >>
  \layout {
   \context {
    \Score \remove "Bar_number_engraver"
   }
  }
  \midi {
   \context {
    \Staff
    \remove "Staff_performer"
   }
   \context {
    \Voice
    \consists "Staff_performer"
   }
  }
 }
}

\book {
 \header {
  title = \markup \center-column { "Psalm 119X (Alto)" }
  tagline = ""
 }
 \bookOutputSuffix "a"
 \score {
  <<
   \new Staff <<
    #(set-accidental-style 'modern)
    \set Staff.printPartCombineTexts = ##f

    \key bf \major
    \time 4/4
    \numericTimeSignature

    \new Voice {  \alto }
    \new Lyrics \verseAa
    \new Lyrics \verseBa
    \new Lyrics \verseCa
    \new Lyrics \verseDa
   >>
  >>
  \layout {
   \context {
    \Score \remove "Bar_number_engraver"
   }
  }
  \midi {
   \context {
    \Staff
    \remove "Staff_performer"
   }
   \context {
    \Voice
    \consists "Staff_performer"
   }
  }
 }
}

\book {
 \header {
  title = \markup \center-column { "Psalm 119X (Tenor)" }
  tagline = ""
 }
 \bookOutputSuffix "t"
 \score {
  <<
   \new Staff <<
    #(set-accidental-style 'modern)
    \set Staff.printPartCombineTexts = ##f

    \key bf \major
    \time 4/4
    \numericTimeSignature

    \new Voice {  \tenor }
    \new Lyrics \verseAt
    \new Lyrics \verseBt
    \new Lyrics \verseCt
    \new Lyrics \verseDt
   >>
  >>
  \layout {
   \context {
    \Score \remove "Bar_number_engraver"
   }
  }
  \midi {
   \context {
    \Staff
    \remove "Staff_performer"
   }
   \context {
    \Voice
    \consists "Staff_performer"
   }
  }
 }
}

\book {
 \header {
  title = \markup \center-column { "Psalm 119X (Bass)" }
  tagline = ""
 }
 \bookOutputSuffix "b"
 \score {
  <<
   \new Staff <<
    #(set-accidental-style 'modern)
    \set Staff.printPartCombineTexts = ##f

    \key bf \major
    \time 4/4
    \numericTimeSignature

    \new Voice {  \bass }
    \new Lyrics \verseAb
    \new Lyrics \verseBb
    \new Lyrics \verseCb
    \new Lyrics \verseDb
   >>
  >>
  \layout {
   \context {
    \Score \remove "Bar_number_engraver"
   }
  }
  \midi {
   \context {
    \Staff
    \remove "Staff_performer"
   }
   \context {
    \Voice
    \consists "Staff_performer"
   }
  }
 }
}