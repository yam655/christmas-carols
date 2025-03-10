﻿\version "2.14.2"

\header {
  title = "Good King Wenceslas"
  poet = "John Mason Neale (1818–1866)"
  composer = \markup { \italic {Tempus adest floridum}, from \italic {Piæ Cantiones}, 1582}
  arranger = "Arranged by George Ratcliffe Woodward (1848–1934)"
  %source = \markup { from  \italic "The Cowley Carol Book" ", 1919"}
}

global = {
  \key aes \major
  \time 4/4
  \tempo "Moderato" 4 = 120
}

sopMusic = \relative c'' {
  aes4 aes aes bes |
  aes aes ees2 |
  f4 ees f g |
  aes2 aes |
  
  aes4 aes aes bes |
  aes aes ees2 |
  f4 ees f g |
  aes2 aes |
  
  ees'4 des c bes |
  c bes aes2 |
  f4 ees f g |
  aes2 aes |
  
  ees4 ees f g |
  aes aes bes2 |
  ees4 des c bes |
  aes2( des) |
  aes1 \bar "|."
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  ees4 ees f ees |
  ees f bes,2 |
  des4 ees des des |
  c2 c |
  
  ees4 ees f f |
  ees des bes2 |
  des4 c8[ bes] aes4 des |
  des( c8[ bes]) c2 |
  
  aes'4 aes aes g |
  g g f2 |
  aes,4 ees' des des |
  c2 c |
  
  c4 bes c ees |
  f ees ees2 |
  ees4 aes g g |
  aes2( f) |
  ees1 \bar "|."
}
altoWords = \lyricmode {
  
  \set stanza = #"1. "
  Good King Wen -- ces -- las look’d out
  On the Feast of Ste -- phen,
  When the snow lay round a -- bout,
  Deep and crisp and e -- ven;
  Bright -- ly shone the moon that night,
  Tho’ the frost was cru -- el,
  When a poor man came in sight,
  Gath -- ’ring win -- ter fu -- el.
}
altoWordsII = \lyricmode {
  
  \set stanza = #"2. "
  “Hith -- er, page, and stand by me,
  If thou know’st it, tell -- ing;
  Yon -- der peas -- ant, who is he?
  Where, and what his dwell -- ing?”
  “Sire, he lives a good league hence,
  Un -- der -- neath the moun -- tain;
  Right a -- gainst the for -- est fence,
  By Saint Ag -- nes’ foun -- tain.
}
altoWordsIII = \lyricmode {
  
  \set stanza = #"3. "
  “Bring me flesh, and bring me wine,
  Bring me pine -- logs hith -- er;
  Thou and I will see him dine
  When we bear them thith -- er.”
  Page and mon -- arch forth they went,
  Forth they went to -- geth -- er;
  Thro’ the rude wind’s wild la -- ment
  And the bit -- ter weath -- er.
}
altoWordsIV = \lyricmode {
  
  \set stanza = #"4. "
  “Sire, the night is dark -- er now,
  And the wind blows strong -- er;
  Fails my heart, I know not how,
  I can go no long -- er.”
  “Mark my foot -- steps, my good page,
  Tread thou in them bold -- ly:
  Thou shalt find the win -- ter’s rage
  Freeze thy blood less cold -- ly.”
}
altoWordsV = \lyricmode {
  
  \set stanza = #"5. "
  In his mas -- ter’s steps he trod,
  Where the snow lay dint -- ed;
  Heat was in the ve -- ry sod
  Which the saint had print -- ed;
  There -- fore, Chris -- tian men, be sure,
  Wealth or rank pos -- sess -- ing,
  Ye who now will bless the poor,
  Shall your -- selves find bless -- ing.
}
tenorMusic = \relative c' {
  c4 c c bes |
  c des g,2 |
  aes4 aes aes bes |
  ees,2 ees |
  
  c'4 c c des |
  aes f g2 |
  bes8[ aes] g4 f8[ ees] ees4 |
  ees2 ees |
  
  ees'4 f ees ees |
  ees ees c2 |
  des4 aes aes bes |
  ees,2 ees |
  
  aes4 bes aes bes |
  des aes g2 |
  aes4 f' ees ees8[ des] |
  c2( des)
  c1 \bar "|."
}


bassMusic = \relative c' {
  aes4 aes f g |
  aes des, ees2 |
  des4 c des8[ c] bes4 |
  aes2 aes |
  
  aes'4 aes f bes, |
  c des ees2 |
  bes4 c des8[ c] bes4 |
  aes2 aes |
  
  c4 des aes' ees |
  c ees f2 |
  des4 c des bes |
  aes2 aes |
  
  aes'4 g f ees |
  des4 c ees2 |
  c4 des ees ees |
  f2( des) |
  aes1\fermata \bar "|."
}


\bookpart {
\score {
  <<
   \new ChoirStaff <<
    \new Staff = women <<
      \new Voice = "sopranos" { \voiceOne << \global \sopMusic >> }
      \new Voice = "altos" { \voiceTwo << \global \altoMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \sopWords
    \new Lyrics = "altosV"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsV
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((padding . -0.5)) } \lyricsto "sopranos" \altoWords
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
    >>
  >>
  >>
  \layout { }
  \midi {
    \set Staff.midiInstrument = "flute"
  
    %\context { \Voice \remove "Dynamic_performer" }
  }
}
}

