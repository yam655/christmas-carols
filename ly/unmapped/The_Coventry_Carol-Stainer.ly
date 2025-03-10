﻿\version "2.14.2"

songTitle = "The Coventry Carol"
songPoet = "Robert Croo, 1534"
tuneComposer = "16th Centry English Carol"
tuneArranger = "Adapted and Arranged by Sir John Stainer (1840–1901)"
tuneSource = \markup {from \italic {Christmas Carols, New and Old}}

global = {
    \key bes \major
    \time 3/4
    \tempo 4 = 90
}

sopMusic = \relative c'' {
  <g d>4^\p <g d> <fis d> |
  <g d>2 <bes d,>4 |
  <a f>2 <g d>4 |
  <fis d>2. |
  <g d>4 <fis d> <g bes,> | 
  <c ees,>2 <a d,>4 | 
  <b d,>2. \bar "||" 
  
  g4 g fis |
  g2 bes4 |
  a2 g4 |
  fis2. | 
  
  g4 a bes |
  c2 a4 |
  g2.~ |
  <<g2 {s4 s^\mf}>> d'4 |
  c2 bes4 |
  a2 bes4 | 
  
  a2^\markup\italic"dim." g4 |
  fis2. |
  <<g4 {s8^\pp s^\markup\italic"rall."}>> fis4 g |
  c2 a4 |
  b2.~ |
  b2. \bar "|."
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  s2.*7 |
  
  d4 d d |
  d2 d4 |
  f2 d4 |
  d2. |
  
  d4 d d |
  ees2 d4 |
  d2.~ |
  d2 f4 |
  f2 f4 |
  f2 g4 |
  
  ees2 c4 |
  d2. |
  d4 d bes |
  ees2 d4 |
  d2.~ |
  d2. \bar "|."
}
altoWords = \lyricmode {
  
  \repeat unfold 14 \skip 1
  \set stanza = #"1. "
  Lul -- lay, Thou lit -- tle ti -- ny Child,
  By, by, lul -- ly, lul -- lay; __
  Lul -- lay, Thou lit -- tle ti -- ny child,
  By, by, lul -- ly, lul -- lay. __
}
altoWordsII = \lyricmode {
  
  \repeat unfold 14 \skip 1
  \set stanza = #"2. "
  O sis -- ters too, how may we do,
  For to pre -- serve this day; __
  This poor Young -- ling for whom we sing,
  By, by, lul -- ly, lul -- lay? __
}
altoWordsIII = \lyricmode {
  
  \repeat unfold 14 \skip 1
  \set stanza = #"3. "
  Her -- od, the king, in his rag -- ing,
  Charg -- ed he hath this day; __
  His men of might, in his own sight,
  All chil -- dren young to slay. __
}
altoWordsIV = \lyricmode {
  
  \repeat unfold 14 \skip 1
  \set stanza = #"4. "
  Then woe is me, poor Child, for Thee,
  And ev -- er mourn and say; __
  For Thy part -- ing nor say nor sing,
  By, by, lul -- ly, lul -- lay. __
}

tenorMusic = \relative c' {
  s2.*6_\p |
  
  <g g,>2. |
  
  bes4 bes a |
  bes2 bes4 |
  c2 bes4 |
  a2. |
  
  bes4 a g |
  g2 fis4 |
  bes2.~ |
  <<bes2 {s4 s_\mf}>> bes4 |
  a2 bes4 |
  c2 d4 |
  
  c2_\markup\italic"dim." g4 |
  a2. |
  <<bes4 {s8_\pp s_\markup\italic"rall."}>> a4 g |
  g2 fis4 |
  g2.~ |
  g2. \bar "|."
}
tenorWords = \lyricmode {

}

bassMusic = \relative c' {
  <bes g>4 q <a d,> |
  <bes g>2 q4 |
  <c f,>2 <bes g>4 |
  <a d,>2. |
  <bes g>4 <a d,> <g ees> |
  <g c,>2 <fis d>4 |
  
  s2. |
  g4 g d |
  g2 g4 |
  f2 g4 |
  d2. |
  
  g4 fis g |
  c,2 d4 |
  g2.~ |
  g2 bes,4 |
  f'2 d4 |
  f2 bes,4 |
  
  c2 ees4 |
  d2. |
  g4 d ees |
  c2 d4 |
  g,2.~ |
  g2. \bar "|."
}


\bookpart { 
\header {
  title = \songTitle
  poet = \songPoet
  composer = \tuneComposer
  arranger = \tuneArranger
  source = \tuneSource
}

\score {
  <<
   \new ChoirStaff <<
    \new Staff = women <<
      \new Voice = "sopranos" { \voiceOne << \global \sopMusic >> }
      \new Voice = "altos" { \voiceTwo << \global \altoMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \sopWords
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
    %\context { \Voice \remove "Dynamic_performer" }
  }
}
}

