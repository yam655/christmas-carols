﻿\version "2.14.2"

\header {
  title = "Good King Wenceslas"
  poet = "John Mason Neale (1818–1866)"
  composer = \markup { \italic {Tempus adest floridum}, from \italic {Piæ Cantiones}, 1582}
  arranger = "Arranged by Sir John Stainer (1840–1901)"
  %source = \markup { from \italic {Christmas Carols, New and Old}}
}

global = {
  \key a \major
  \time 4/4
  \tempo "Moderato" 4 = 120
}

sopMusic = \relative c'' {
  a4 a a b |
  a a e2 |
  fis4 e fis gis |
  a2 a |
  
  a4 a a b |
  a a e2 |
  fis4 e fis gis |
  a2 a |
  
  e'4 d cis b |
  cis b a2 |
  fis4 e fis gis |
  a2 a |
  
  e4 e fis gis |
  a a b2 |
  e4^\markup\italic"poco più lento" d cis b |
  a2( d) |
  a1 \bar "|."
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  e4 e fis e |
  e fis b,2 |
  d4 e d d |
  e2 e |
  
  e4 e fis e |
  e fis b,2 |
  d4 e d d |
  e2 e |
  
  e4 fis e e |
  e e cis2 |
  d4 e d d |
  e2 e |
  
  e4 e d d |
  cis cis e2 |
  e4 fis e d |
  cis2( fis) |
  e1 \bar "|."
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
altoWordsIII = {
  
  \set stanza = \markup{\dynamic"f  " "3. "}
  \lyricmode {
    “Bring me flesh, and bring me wine,
    Bring me pine -- logs hith -- er;
    Thou and I will see him dine
    When we bear them thith -- er.”
    Page and mon -- arch forth they went,
    Forth they went to -- geth -- er;
    Thro’ the rude wind’s wild la -- ment
    And the bit -- ter weath -- er.
  }
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
  cis4 cis cis b |
  cis d gis,2 |
  a4 a a b |
  cis2 cis |
  
  cis4 cis cis b |
  cis d gis,2 |
  a4 a a b |
  cis2 cis |
  
  a4 a a gis |
  a gis a2 |
  a4 a a b |
  cis2 cis |
  
  a4 a a b |
  a a gis2 |
  a4 a a gis |
  a2~ a |
  cis1 \bar "|."
}
tenorWords = \lyricmode {

}

bassMusic = \relative c' {
  a4 a fis gis |
  a d, e2 |
  d4 cis d b |
  a2 a |
  
  a'4 a fis gis |
  a d, e2 |
  d4 cis d b |
  a2 a |
  
  cis4 d e e |
  a, e' fis2 |
  d4 cis d b |
  a2 a |
  
  cis4 cis d b |
  fis' fis e2 |
  cis4 d e e |
  fis2( d) |
  a1 \bar "|."
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
    \new Lyrics \with { alignAboveContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "tenors" \tenorWords
  >>
  >>
  \layout { }
    \midi {
        \set Staff.midiInstrument = "flute" 
        \context {
            \Staff \remove "Staff_performer"
        }
        \context {
            \Voice \consists "Staff_performer"
        }
    }
}
}

