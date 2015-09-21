﻿\version "2.14.2"

songTitle = "The Coventry Carol"
songPoet = "Robert Croo, 1534"
tuneComposer = "16th Centry English Carol"
tuneArranger = "Arranged by Martin Fallas Shaw (1875–1958)"
tuneSource = \markup \null % {from \italic {ChristmasCarolMusic.org}} 

global = {
    \key bes \major
    \time 3/4
    \tempo 4 = 90
}

sopMusic = \relative c'' {
  g4 g fis |
  g2 bes4 |
  a8 a a4 g |
  fis2. |
  g4 a bes |
  c a2 |
  b2. \bar "||" 
  
  g4 g fis |
  g2 bes4 |
  a2 g4 |
  fis2. |
  g4 a bes | 
  c a2 |
  g2 d'4 |
  
  c2 bes4 |
  a2 bes4 |
  a2 g4 | 
  fis2. |
  g4 fis g |
  c a2 |
  b2. \bar "|."
}
  

altoMusic = \relative c' {
  d4 d d |
  d2 g4 |
  f8 f f4 d |
  d2. |
  d4 f f |
  g2 fis4 |
  g2. |
  
  d4 d d |
  d2 g4 |
  f2 d4 |
  d2. |
  d4 f f |
  g2 fis4 |
  g2 f4 |
  
  a2 g4 |
  f2 d4 |
  f2 c4 |
  d2. |
  d4 d d |
  g2 fis4 |
  g2. \bar "|."
}
altoWords = \lyricmode {
  
  Lul -- ly, lul -- lay, Thou lit -- tle ti -- ny Child,
  By, by, lul -- ly, lul -- lay;
  
  \set stanza = #"1. "
  O sis -- ters too, how may we do,
  For to pre -- serve this day;
  This poor Young -- ling for whom we sing
  By, by, lul -- ly, lul -- lay?
}
altoWordsII = \lyricmode {
  
  \repeat unfold 16 { \skip 1 }
  \set stanza = #"2. "
  Her -- od, the king, in his rag -- ing,
  Charg -- ed he hath this day;
  His men of might, in his own sight,
  All chil -- dren young to slay.
}
altoWordsIII = \lyricmode {
  
  \repeat unfold 16 { \skip 1 }
  \set stanza = #"3. "
  Then woe is me, poor Child, for Thee!
  And ev -- er mourn and say;
  For Thy part -- ing nor say nor sing,
  By, by, lul -- ly, lul -- lay.
}

tenorMusic = \relative c' {
  bes4 bes a |
  bes2 ees4 |
  c8 c c4 bes |
  a2. |
  bes4 c d |
  ees4 d2 |
  d2. |
  
  bes4 bes a |
  bes2 ees4 |
  c2 bes4 |
  a2. |
  bes4 c d |
  ees4 d2 |
  d d4 |
  
  f2 d4 |
  d2 bes4 |
  c2 g4 |
  a2. |
  bes4 a bes |
  ees d2 |
  d2. \bar "|."
}


bassMusic = \relative c' {
  g4 g d |
  g2 ees4 |
  f8 f f4 g |
  d2. |
  g4 f d |
  c d2 |
  g,2. |
  
  g'4 g d |
  g2 ees4 |
  f2 g4 |
  d2. |
  g4 f d |
  c d2 |
  g bes4 |
  
  f2 g4 |
  d2 g4 |
  f2 ees4 |
  d2. |
  g4 d g |
  c, d2 |
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
    \new Lyrics = "altos"   \lyricsto "sopranos" \altoWords
    \new Lyrics = "altosII"   \lyricsto "sopranos" \altoWordsII
    \new Lyrics = "altosIII"   \lyricsto "sopranos" \altoWordsIII
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
        \context {
            \Staff \remove "Staff_performer"
        }
        \context {
            \Voice \consists "Staff_performer"
        }
    }
}
}

