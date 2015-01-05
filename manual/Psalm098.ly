\version "2.14.2"
\language "english"
\paper {
 #(set-paper-size "letter")
 indent = 0\cm
 print-page-number = ##f
}

\pointAndClickOff

lord = \markup { \caps Lord }
lordcomma = \markup { \caps Lord, }
lordperiod = \markup { \caps Lord. }
lordsemi = \markup { \caps Lord; }
lordex = \markup { \caps Lord! }

soprano = \transpose c c'' { \clef treble
g,2 b,4. c8 | d8( e d c b,4) c | b,( g,) a,( fs,) |
g,2. b,4 | c b, a, g, | a,2. a,4 | b,8( a, b, c d4) e |
d2 cs | d1 | d2 d4 d | b,4.( a,8 g,4) b,4 |
c4( b,) a,( g,) | a,2. r4 | r r r g,4 | 
c4 c c c | b,2. \bar "|" \break b,4 | a, a, a, a, |
d2. d4 | e( d c) b, | a,2. a,4 | g,1 | }

alto = \transpose c c' { \clef treble
d2 g4. g8 | g2. g4 | g4( d) d2 |
d2. g4 | fs g d g | fs2. fs4 | g2. g4 |
fs2 g2 | fs1 | g2 a4 fs4 | g2. g4 |
g2 fs4( g4) | fs2. r4 | r r r r |
r r r \bar "|" \break e4 | d d d g | fs2. fs4 |
g4( fs g2 | g2 fs4) g | g2 fs2 | g1 |
}

tenor = \transpose c c' { \clef bass
b,2 d4. c8 | b,2. e4 | d( b,) c( a,) |
b,2. d4 | d4 d d cs | a,2. d4 | d2( b,4) b, |
a,2 a, | a,1 | b,2 a,4 d | d4.( c8 b,4) d |
e4( d c) b, | d2. r4 | r4 r r r |
r r r r | r r r4 \bar "|" \break d4 | d d d d |
b,( c d) b, | c( d2) d4 | d2. c4 | b,1 |
}

bass = { \clef bass
g2 g4. g8 | g2. c4 | d2 d2 |
g,2. g4 | a4 g4 fs4 e4 | d2. d4 | g2. e4 |
a2 a,2 | d1 | g2 fs4 d4 | g2. g4 |
g2. g4 | d2. d4 | g4 a4 b4 g4 |
e2. c4 | g4 g4 g4 g4 | d2. d4 g4( a4 b4 g4 | c'4 b4 a4) g4 | d2 d2 | g1
}

verseAs = \lyricmode {
 \set stanza = #"1."
 \set associatedVoice = #"soprano"
 \markup { \super 1 O }2 sing4. a8 new2. song4 to2 the2
 LORD2. For4 won4 -- ders4 He4 has4 done,2. For4 won2. -- ders4
 He2 has2 done;1 His2 right4 hand4 and2. His4
 ho2 -- ly2 arm2.
 \markup { \teeny \italic { \super bass (The } }4 \markup { \italic \teeny vic }4 -- \markup { \italic \teeny to }4 -- \markup { \italic \teeny ry } The4 
 vic4 -- to4 -- ry4 have4 won,2. The4 vic4 -- to4 -- ry4 have4
 won,2. The4 vic2. -- to4 -- ry2. have4 won.1
}

verseAa = \lyricmode {
 \set stanza = #"1."
 \set associatedVoice = #"alto"
 \markup { \super 1 O }2 sing4. a8 new2. song4 to2 the2
 LORD2. For4 won4 -- ders4 He4 has4 done,2. For4 won2. -- ders4
 He2 has2 done;1 His2 right4 hand4 and2. His4
 ho2 -- ly2 arm2.
 \markup { \teeny \italic { \super bass (The } }4 \markup { \italic \teeny vic }4 -- \markup { \italic \teeny to }4 -- \markup { \italic \teeny ry }4
 \markup { \teeny \italic { \super soprano (The } }4 \markup { \italic \teeny vic }4 -- \markup { \italic \teeny to }4 -- \markup { \italic \teeny ry}4
 The4 vic -- to -- ry have won,2. The4
 vic4 -- _4 _2 _2 _4 to4 -- ry2 have2 won.1
}

verseAt = \lyricmode {
 \set stanza = #"1."
 \set associatedVoice = #"tenor"
 \markup { \super 1 O }2 sing4. a8 new2. song4 to2 the2
 LORD2. For4 won4 -- ders4 He4 has4 done,2. For4 won2. -- ders4
 He2 has2 done;1 His2 right4 hand4 and2. His4
 ho2. -- ly4 arm2.
 \markup { \teeny \italic { \super bass (The } }4 \markup { \italic \teeny vic }4 -- \markup { \italic \teeny to }4 -- \markup { \italic \teeny ry }4
 \markup { \teeny \italic { \super soprano (The } }4 \markup { \italic \teeny vic }4 -- \markup { \italic \teeny to }4 -- \markup { \italic \teeny ry}4
 \markup { \teeny \italic { \super alto (The } }4 \markup { \italic \teeny vic }4 -- \markup { \italic \teeny to }4 -- \markup { \italic \teeny ry}4
 The4 vic -- to -- ry have won,2. The4 vic2. -- to4 -- ry2. have4 won.1
}

verseAb = \lyricmode {
 \set stanza = #"1."
 \set associatedVoice = #"bass"
 \markup { \super 1 O }2 sing4. a8 new2. song4 to2 the2
 LORD2. For4 won4 -- ders4 He4 has4 done,2. For4 won2. -- ders4
 He2 has2 done;1 His2 right4 hand4 and2. His4
 ho2. -- ly4 arm2. The4 vic -- to -- ry have 
 won,2. The4 vic -- to -- ry have won,2. The4
 vic1 -- _2. to4 -- ry2 have won.1
}


verseBs = \lyricmode {
 \set stanza = #"2."
 \set associatedVoice = #"soprano"
 \markup { \super 2 The }2 great4. sal8 -- va2. -- tion4 wrought2 by
 Him2. Je4 -- ho -- vah has made known,2. Je4 -- ho2. -- vah4
 has2 made known,1 His2 ju4 -- stice in2. the4 
 na2 -- tions' sight2.
 \markup { \teeny \italic { \super bass (The } }4 \markup { \italic \teeny LORD }4 \markup { \italic \teeny has }4 \markup { \italic \teeny clear - }4
 The4 LORD has clear -- ly shown,2.
 The4 LORD has clear -- ly shown,2.
 The4 LORD2. has4 clear2. -- ly4 shown.1
}

verseBa = \lyricmode {
 \set stanza = #"2."
 \set associatedVoice = #"alto"
 \markup { \super 2 The }2 great4. sal8 -- va2. -- tion4 wrought2 by
 Him2. Je4 -- ho -- vah has made known,2. Je4 -- ho2. -- vah4
 has2 made known,1 His2 ju4 -- stice in2. the4 
 na2 -- tions' sight2.
 \markup { \teeny \italic { \super bass (The } }4 \markup { \italic \teeny LORD }4 \markup { \italic \teeny has }4 \markup { \italic \teeny clear - }4
 \markup { \teeny \italic { \super soprano (The } }4 \markup { \italic \teeny LORD }4 \markup { \italic \teeny has }4 \markup { \italic \teeny clear - }4
 The4 LORD has clear -- ly shown,2.
 The4 LORD1 _2. has4 clear2. -- ly4 shown.1
}

verseBt = \lyricmode {
 \set stanza = #"2."
 \set associatedVoice = #"tenor"
 \markup { \super 2 The }2 great4. sal8 -- va2. -- tion4 wrought2 by
 Him2. Je4 -- ho -- vah has made known,2. Je4 -- ho2. -- vah4
 has2 made known,1 His2 ju4 -- stice in2. the4 
 na2. -- tions'4 sight2.
 \markup { \teeny \italic { \super bass (The } }4 \markup { \italic \teeny LORD }4 \markup { \italic \teeny has }4 \markup { \italic \teeny clear- }4
 \markup { \teeny \italic { \super soprano (The } }4 \markup { \italic \teeny LORD }4 \markup { \italic \teeny has }4 \markup { \italic \teeny clear- }4
 \markup { \teeny \italic { \super alto (The } }4 \markup { \italic \teeny LORD }4 \markup { \italic \teeny has }4 \markup { \italic \teeny clear- }4
 The4 LORD has clear -- ly shown,2.
 The4 LORD2. has4 clear2. -- ly4 shown.1
}

verseBb = \lyricmode {
 \set stanza = #"2."
 \set associatedVoice = #"bass"
 \markup { \super 2 The }2 great4. sal8 -- va2. -- tion4 wrought2 by
 Him2. Je4 -- ho -- vah has made known,2. Je4 -- ho2. -- vah4
 has2 made known,1 His2 ju4 -- stice in2. the4 
 na2. -- tions'4 sight2.
 The4 LORD has clear -- ly shown,2.
 The4 LORD has clear -- ly shown,2.
 The4 LORD1 -- _2. has4 clear2. -- ly4 shown.1
}

verseCs = \lyricmode {
 \set stanza = #"3."
 \set associatedVoice = #"soprano"
 \markup { \super 3 He }2 mind4. -- ful8 of2. His4 grace2 and2
 truth2. To4 Is -- r'el's house has been,2. To4 Is2. -- r'el's4
 house2 has been.1 The2 great4 sal -- va2. -- tion4 
 of2 our God2.
 \markup { \teeny \italic { \super bass (All } }4 \markup { \italic \teeny ends }4 \markup { \italic \teeny of }4 \markup { \italic \teeny earth }4
 All4 ends of earth have seen,2.
 All4 ends of earth have seen,2.
 All4 ends2. of4 earth2. have4 seen.1
}

verseCa = \lyricmode {
 \set stanza = #"3."
 \set associatedVoice = #"alto"
 \markup { \super 3 He }2 mind4. -- ful8 of2. His4 grace2 and2
 truth2. To4 Is -- r'el's house has been,2. To4 Is2. -- r'el's4
 house2 has been.1 The2 great4 sal -- va2. -- tion4 
 of2 our2 God2.
 \markup { \teeny \italic { \super bass (All } }4 \markup { \italic \teeny ends }4 \markup { \italic \teeny of }4 \markup { \italic \teeny earth }4
 \markup { \teeny \italic { \super soprano (All } }4 \markup { \italic \teeny ends }4 \markup { \italic \teeny of }4 \markup { \italic \teeny earth }4
 All4 ends of earth have seen,2.
 All4 ends1 -- _2. of4 earth2 have2 seen.1
}

verseCt = \lyricmode {
 \set stanza = #"3."
 \set associatedVoice = #"tenor"
 \markup { \super 3 He }2 mind4. -- ful8 of2. His4 grace2 and2
 truth2. To4 Is -- r'el's house has been,2. To4 Is2. -- r'el's4
 house2 has been.1 The2 great4 sal -- va2. -- tion4 
 of2. our4 God2.
 \markup { \teeny \italic { \super bass (All } }4 \markup { \italic \teeny ends }4 \markup { \italic \teeny of }4 \markup { \italic \teeny earth }4
 \markup { \teeny \italic { \super soprano (All } }4 \markup { \italic \teeny ends }4 \markup { \italic \teeny of }4 \markup { \italic \teeny earth }4
 \markup { \teeny \italic { \super alto (All } }4 \markup { \italic \teeny ends }4 \markup { \italic \teeny of }4 \markup { \italic \teeny earth }4
 All4 ends of earth have seen,2.
 All4 ends2. of4 earth2. have4 seen.1
}

verseCb = \lyricmode {
 \set stanza = #"3."
 \set associatedVoice = #"bass"
 \markup { \super 3 He }2 mind4. -- ful8 of2. His4 grace2 and2
 truth2. To4 Is -- r'el's house has been,2. To4 Is2. -- r'el's4
 house2 has been.1 The2 great4 sal -- va2. -- tion4 
 of2. our4 God2.
 All4 ends of earth have seen,2.
 All4 ends of earth have seen,2.
 All4 ends1 -- _2. of4 earth2 have seen.1
}

verseDs = \lyricmode {
 \set stanza = #"4."
 \set associatedVoice = #"soprano"
 \markup { \super 4 O}2 all4. the8 earth,2. sing4 to2 the2
 LORD2. And4 make a joy -- ful sound,2. And4
 make2. a4 joy2 -- ful sound.1 Lift2 up4 your voice2. a4 -- loud2 to Him;2.
 \markup { \teeny \italic { \super bass (Sing } }4 \markup { \italic \teeny psalms! }4 \markup { \italic \teeny Let }4 \markup { \italic \teeny joy }4
 Sing4 psalms! Let joy re -- sound!2.
 Sing4 psalms! Let joy re -- sound!2.
 Sing4 psalms!2. Let4 joy2. re4 -- sound!1
}

verseDa = \lyricmode {
 \set stanza = #"4."
 \set associatedVoice = #"alto"
 \markup { \super 4 O}2 all4. the8 earth,2. sing4 to2 the2
 LORD2. And4 make a joy -- ful sound,2. And4
 make2. a4 joy2 -- ful sound.1 Lift2 up4 your voice2. a4 -- loud2 to Him;2.
 \markup { \teeny \italic { \super bass (Sing } }4 \markup { \italic \teeny psalms! }4 \markup { \italic \teeny Let }4 \markup { \italic \teeny joy }4
 \markup { \teeny \italic { \super soprano (Sing } }4 \markup { \italic \teeny psalms! }4 \markup { \italic \teeny Let }4 \markup { \italic \teeny joy }4
 Sing4 psalms! Let joy re -- sound!2.
 Sing4 psalms!1 -- _2. Let4 joy2 re -- sound!1
}

verseDt = \lyricmode {
 \set stanza = #"4."
 \set associatedVoice = #"tenor"
 \markup { \super 4 O}2 all4. the8 earth,2. sing4 to2 the2
 LORD2. And4 make a joy -- ful sound,2. And4
 make2. a4 joy2 -- ful sound.1 Lift2 up4 your voice2. a4 -- loud2. to4 Him;2.
 \markup { \teeny \italic { \super bass (Sing } }4 \markup { \italic \teeny psalms! }4 \markup { \italic \teeny Let }4 \markup { \italic \teeny joy }4
 \markup { \teeny \italic { \super soprano (Sing } }4 \markup { \italic \teeny psalms! }4 \markup { \italic \teeny Let }4 \markup { \italic \teeny joy }4
 \markup { \teeny \italic { \super alto (Sing } }4 \markup { \italic \teeny psalms! }4 \markup { \italic \teeny Let }4 \markup { \italic \teeny joy }4
 Sing4 psalms! Let joy re -- sound!2.
 Sing4 psalms!2. Let4 joy2. re4 -- sound!1
}

verseDb = \lyricmode {
 \set stanza = #"4."
 \set associatedVoice = #"bass"
 \markup { \super 4 O}2 all4. the8 earth,2. sing4 to2 the2
 LORD2. And4 make a joy -- ful sound,2. And4
 make2. a4 joy2 -- ful sound.1 Lift2 up4 your voice2. a4 -- loud2. to4 Him;2.
 Sing4 psalms! Let joy re -- sound!2.
 Sing4 psalms! Let joy re -- sound!2.
 Sing4 psalms!1 -- _2. Let4 joy2 re -- sound!1
}

verseEs = \lyricmode {
 \set stanza = #"5."
 \set associatedVoice = #"soprano"
 \markup { \super 5 With }2 harp4. make8 mu2. -- sic4 to2 the LORD;2.
 With4 harp a psalm O sing!2. With4 harp2. a4 psalm2 O sing!1
 \markup { \super 6 With }2 horn4 and trum2. -- pet4 raise2 a shout2.
 \markup { \teeny \italic { \super bass (Be } }4 -- \markup { \italic \teeny fore }4 \markup { \italic \teeny the }4 \markup { \italic \teeny LORD }4
 Be4 -- fore the LORD the King,2.
 Be4 -- fore the LORD the King,2.
 Be4 -- fore2. the4 LORD2. the4 King.1
}

verseEa = \lyricmode {
 \set stanza = #"5."
 \set associatedVoice = #"alto"
 \markup { \super 5 With }2 harp4. make8 mu2. -- sic4 to2 the LORD;2.
 With4 harp a psalm O sing!2. With4 harp2. a4 psalm2 O sing!1
 \markup { \super 6 With }2 horn4 and trum2. -- pet4 raise2 a shout2.
 \markup { \teeny \italic { \super bass (Be } }4 -- \markup { \italic \teeny fore }4 \markup { \italic \teeny the }4 \markup { \italic \teeny LORD }4
 \markup { \teeny \italic { \super soprano (Be } }4 -- \markup { \italic \teeny fore }4 \markup { \italic \teeny the }4 \markup { \italic \teeny LORD }4
 Be4 -- fore the LORD the King,2.
 Be4 -- fore1 -- _2. the4 LORD2. the4 King.1
}

verseEt = \lyricmode {
 \set stanza = #"5."
 \set associatedVoice = #"tenor"
 \markup { \super 5 With }2 harp4. make8 mu2. -- sic4 to2 the LORD;2.
 With4 harp a psalm O sing!2. With4 harp2. a4 psalm2 O sing!1
 \markup { \super 6 With }2 horn4 and trum2. -- pet4 raise2. a4 shout2.
 \markup { \teeny \italic { \super bass (Be } }4 -- \markup { \italic \teeny fore }4 \markup { \italic \teeny the }4 \markup { \italic \teeny LORD }4
 \markup { \teeny \italic { \super soprano (Be } }4 -- \markup { \italic \teeny fore }4 \markup { \italic \teeny the }4 \markup { \italic \teeny LORD }4
 \markup { \teeny \italic { \super alto (Be } }4 -- \markup { \italic \teeny fore }4 \markup { \italic \teeny the }4 \markup { \italic \teeny LORD }4
 Be4 -- fore the LORD the King,2.
 Be4 -- fore2. the4 LORD2. the4 King.1
}

verseEb = \lyricmode {
 \set stanza = #"5."
 \set associatedVoice = #"bass"
 \markup { \super 5 With }2 harp4. make8 mu2. -- sic4 to2 the LORD;2.
 With4 harp a psalm O sing!2.
 With4 harp2. a4 psalm2 O sing!1
 \markup { \super 6 With }2 horn4 and trum2. -- pet4 raise2. a4 shout2.
 Be4 -- fore the LORD the King,2.
 Be4 -- fore the LORD the King,2.
 Be4 -- fore1 -- _2. the4 LORD2. the4 King.1
}

verseFs = \lyricmode {
 \set stanza = #"6."
 \set associatedVoice = #"soprano"
 \markup { \super 7 Let}2 seas4. in8 all2. their4 vast2 -- ness roar,2.
 The4 world, its liv -- ing horde,2.
 The4 world,2. its4 liv2 -- ing horde.1
 \markup { \super 8 Let}2 riv4 -- ers clap,2. let4 moun2 -- tains sing2.
 \markup { \teeny \italic { \super bass (Their } }4 \markup { \italic \teeny joy }4 \markup { \italic \teeny be }4 -- \markup { \italic \teeny fore }4
 Their4 joy be -- fore the LORD,2.
 Their4 joy be -- fore the LORD,2.
 Their4 joy2. be4 -- fore2. the4 LORD!1
}

verseFa = \lyricmode {
 \set stanza = #"6."
 \set associatedVoice = #"alto"
 \markup { \super 7 Let}2 seas4. in8 all2. their4 vast2 -- ness roar,2.
 The4 world, its liv -- ing horde,2.
 The4 world,2. its4 liv2 -- ing horde.1
 \markup { \super 8 Let}2 riv4 -- ers clap,2. let4 moun2 -- tains sing2.
 \markup { \teeny \italic { \super bass (Their } }4 \markup { \italic \teeny joy }4 \markup { \italic \teeny be }4 -- \markup { \italic \teeny fore }4
 \markup { \teeny \italic { \super soprano (Their } }4 \markup { \italic \teeny joy }4 \markup { \italic \teeny be }4 -- \markup { \italic \teeny fore }4
 Their4 joy be -- fore the LORD,2.
 Their4 joy1 -- _2. be4 -- fore2. the4 LORD!1
}

verseFt = \lyricmode {
 \set stanza = #"6."
 \set associatedVoice = #"tenor"
 \markup { \super 7 Let}2 seas4. in8 all2. their4 vast2 -- ness roar,2.
 The4 world, its liv -- ing horde,2.
 The4 world,2. its4 liv2 -- ing horde.1
 \markup { \super 8 Let}2 riv4 -- ers clap,2. let4 moun2. -- tains4 sing2.
 \markup { \teeny \italic { \super bass (Their } }4 \markup { \italic \teeny joy }4 \markup { \italic \teeny be }4 -- \markup { \italic \teeny fore }4
 \markup { \teeny \italic { \super soprano (Their } }4 \markup { \italic \teeny joy }4 \markup { \italic \teeny be }4 -- \markup { \italic \teeny fore }4
 \markup { \teeny \italic { \super alto (Their } }4 \markup { \italic \teeny joy }4 \markup { \italic \teeny be }4 -- \markup { \italic \teeny fore }4
 Their4 joy be -- fore the LORD,2.
 Their4 joy2. be4 -- fore2. the4 LORD!1
}

verseFb = \lyricmode {
 \set stanza = #"6."
 \set associatedVoice = #"bass"
 \markup { \super 7 Let}2 seas4. in8 all2. their4 vast2 -- ness roar,2.
 The4 world, its liv -- ing horde,2.
 The4 world,2. its4 liv2 -- ing horde.1
 \markup { \super 8 Let}2 riv4 -- ers clap,2. let4 moun2. -- tains4 sing2.
 Their4 joy be -- fore the LORD,2.
 Their4 joy be -- fore the LORD,2.
 Their4 joy1 -- _2. be4 -- fore2. the4 LORD!1
}

verseGs = \lyricmode {
 \set stanza = #"7."
 \set associatedVoice = #"soprano"
 "  Be"2 -- cause4. He8 comes,2. He4 sure2 -- ly comes2.
 The4 judge of earth to be!2.
 The4 judge2. of4 earth2 to be!1
 With2 just4 -- ice He2. will4 judge2 the world2.
 \markup { \teeny \italic { \super bass (All } }4 \markup { \italic \teeny men }4 \markup { \italic \teeny with }4 \markup { \italic \teeny e - }4
 All4 men with e -- qui -- ty,2.
 All4 men with e -- qui -- ty,2.
 All4 men2. with4 e2. -- qui4 -- ty.1
}

verseGa = \lyricmode {
 \set stanza = #"7."
 \set associatedVoice = #"alto"
 "  Be"2 -- cause4. He8 comes,2. He4 sure2 -- ly comes2.
 The4 judge of earth to be!2.
 The4 judge2. of4 earth2 to be!1
 With2 just4 -- ice He2. will4 judge2 the world2.
 \markup { \teeny \italic { \super bass (All } }4 \markup { \italic \teeny men }4 \markup { \italic \teeny with }4 \markup { \italic \teeny e - }4
 \markup { \teeny \italic { \super soprano (All } }4 \markup { \italic \teeny men }4 \markup { \italic \teeny with }4 \markup { \italic \teeny e - }4
 All4 men with e -- qui -- ty,2.
 All4 men1 -- _2. with4 e2. -- qui4 -- ty.1
}

verseGt = \lyricmode {
 \set stanza = #"7."
 \set associatedVoice = #"tenor"
 "  Be"2 -- cause4. He8 comes,2. He4 sure2 -- ly comes2.
 The4 judge of earth to be!2.
 The4 judge2. of4 earth2 to be!1
 With2 just4 -- ice He2. will4 judge2. the4 world2.
 \markup { \teeny \italic { \super bass (All } }4 \markup { \italic \teeny men }4 \markup { \italic \teeny with }4 \markup { \italic \teeny e - }4
 \markup { \teeny \italic { \super soprano (All } }4 \markup { \italic \teeny men }4 \markup { \italic \teeny with }4 \markup { \italic \teeny e - }4
 \markup { \teeny \italic { \super alto (All } }4 \markup { \italic \teeny men }4 \markup { \italic \teeny with }4 \markup { \italic \teeny e - }4
 All4 men with e -- qui -- ty,2.
 All4 men2. with4 e2. -- qui4 -- ty.1
}

verseGb = \lyricmode {
 \set stanza = #"7."
 \set associatedVoice = #"bass"
 "  Be"2 -- cause4. He8 comes,2. He4 sure2 -- ly comes2.
 The4 judge of earth to be!2.
 The4 judge2. of4 earth2 to be!1
 With2 just4 -- ice He2. will4 judge2. the4 world2.
 All4 men with e -- qui -- ty,2.
 All4 men with e -- qui -- ty,2.
 All4 men1 -- _2. with4 e2. -- qui4 -- ty.1
}

\book {
 \header {
  title = \markup \center-column { "Psalm 98A (Soprano)" }
  tagline = ""
 }
 \bookOutputSuffix "s"
 \score {
  <<
   \new Staff <<
    #(set-accidental-style 'modern)
    \set Staff.printPartCombineTexts = ##f

    \key g \major
    \time 4/4
    \numericTimeSignature

    \new Voice { \soprano }
    \new Lyrics \verseAs
    \new Lyrics \verseBs
    \new Lyrics \verseCs
    \new Lyrics \verseDs
    \new Lyrics \verseEs
    \new Lyrics \verseFs
    \new Lyrics \verseGs
   >>
  >>
  \layout {
   \context {
    \Score \remove "Bar_number_engraver"
   }
  }
  \midi {
   \context {
    \Staff \remove "Staff_performer"
   }
   \context {
    \Voice \consists "Staff_performer"
   }
  }
 }
 \markup {
  \fill-line {
   \center-column {
    \vspace #1
    \italic "Don't sing the text in italics; it's only there to help with timing"
   }
  }
 }
}

\book {
 \header {
  title = \markup \center-column { "Psalm 98A (Alto)" }
  tagline = ""
 }
 \bookOutputSuffix "a"
 \score {
  <<
   \new Staff <<
    #(set-accidental-style 'modern)
    \set Staff.printPartCombineTexts = ##f

    \key g \major
    \time 4/4
    \numericTimeSignature

    \new Voice { \alto }
    \new Lyrics \verseAa
    \new Lyrics \verseBa
    \new Lyrics \verseCa
    \new Lyrics \verseDa
    \new Lyrics \verseEa
    \new Lyrics \verseFa
    \new Lyrics \verseGa
   >>
  >>
  \layout {
   \context {
    \Score \remove "Bar_number_engraver"
   }
  }
  \midi {
   \context {
    \Staff \remove "Staff_performer"
   }
   \context {
    \Voice \consists "Staff_performer"
   }
  }
 }
 \markup {
  \fill-line {
   \center-column {
    \vspace #1
    \italic "Don't sing the text in italics; it's only there to help with timing"
   }
  }
 }
}

\book {
 \header {
  title = \markup \center-column { "Psalm 98A (Tenor)" }
  tagline = ""
 }
 \bookOutputSuffix "t"
 \score {
  <<
   \new Staff <<
    #(set-accidental-style 'modern)
    \set Staff.printPartCombineTexts = ##f

    \key g \major
    \time 4/4
    \numericTimeSignature

    \new Voice { \tenor }
    \new Lyrics \verseAt
    \new Lyrics \verseBt
    \new Lyrics \verseCt
    \new Lyrics \verseDt
    \new Lyrics \verseEt
    \new Lyrics \verseFt
    \new Lyrics \verseGt
   >>
  >>
  \layout {
   \context {
    \Score \remove "Bar_number_engraver"
   }
  }
  \midi {
   \context {
    \Staff \remove "Staff_performer"
   }
   \context {
    \Voice \consists "Staff_performer"
   }
  }
 }
 \markup {
  \fill-line {
   \center-column {
    \vspace #1
    \italic "Don't sing the text in italics; it's only there to help with timing"
   }
  }
 }
}

\book {
 \header {
  title = \markup \center-column { "Psalm 98A (Bass)" }
  tagline = ""
 }
 \bookOutputSuffix "b"
 \score {
  <<
   \new Staff <<
    #(set-accidental-style 'modern)
    \set Staff.printPartCombineTexts = ##f

    \key g \major
    \time 4/4
    \numericTimeSignature

    \new Voice { \bass }
    \new Lyrics \verseAb
    \new Lyrics \verseBb
    \new Lyrics \verseCb
    \new Lyrics \verseDb
    \new Lyrics \verseEb
    \new Lyrics \verseFb
    \new Lyrics \verseGb
   >>
  >>
  \layout {
   \context {
    \Score \remove "Bar_number_engraver"
   }
  }
  \midi {
   \context {
    \Staff \remove "Staff_performer"
   }
   \context {
    \Voice \consists "Staff_performer"
   }
  }
 }
}
