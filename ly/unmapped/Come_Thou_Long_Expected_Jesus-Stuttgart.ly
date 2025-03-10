﻿\version "2.14.2"

songTitle = "Come Thou Long Expected Jesus"
songPoet = "Charles Wesley (1707–1788)"
songSection = "Advent"
tuneComposer = \markup{\italic{Stuttgart}, Christian F. Witt (c. 1660–1716)}
tuneArranger = "Adapted by Henry J. Gauntlett (1805–1876)"
tuneSource = \markup{from \italic{The Church Hymnary}, 1902} %, via \italic{HymnsAndCarolsOfChristmas.com}}
    %source = \markup { "from" \italic "CyberHymnal.org"}

global = {
    \key g \major
    \time 4/4
    \autoBeamOff
    \tempo 4 = 105
}

sopMusic = \relative c' {
  d4 d g g |
  a a b g |
  d' d e c |
  a d b2 |
  
  b4 b a b |
  g a g fis |
  g e d g |
  g fis g2 \bar "|."
}

altoMusic = \relative c' {
  d4 d b b |
  e d d d |
  d g g g |
  g fis g2 |
  g4 g fis fis |
  b, e d d |
  d c b d |
  d d d2 \bar "|."
}
altoWords = \lyricmode {
  
  \set stanza = #"1. "
  Come, Thou long ex -- pect -- ed Je -- sus,
  born to set Thy peo -- ple free;
  from our fears and sins re -- lease us, let us find our rest in Thee.
}
altoWordsII = \lyricmode {
  
%\markup\italic
  \set stanza = #"2. "
  Is -- rael’s strength and con -- so -- la -- tion,
  hope of all the earth Thou art:
  dear de -- sire of ev -- ’ry na -- tion, joy of ev -- ’ry long -- ing heart.
}
altoWordsIII = \lyricmode {
  
  \set stanza = #"3. "
  Born Thy peo -- ple to de -- liv -- er, born a child, and yet a king,
  born to reign in us for ev -- er, now Thy gra -- cious king -- dom bring.
}
altoWordsIV = \lyricmode {
  
  \set stanza = #"4. "
  By Thine own e -- ter -- nal Spi -- rit rule in all our hearts a -- lone;
  by Thy grace, help us to mer -- it life e -- ter -- nal at Thy throne.
}

tenorMusic = \relative c' {
  b4 a g g |
  g fis g b |
  g b c e |
  d d d2 |
  
  e4 b c b |
  b a a a |
  g g d' b |
  a8[ b] c4 b2 \bar "|."
}

bassMusic = \relative c {
  g'4 fis e d |
  c d g g, |
  b g c a |
  d d g2 |
  
  e4 e e dis |
  e cis d c |
  b c g b8[ c] |
  d4 d g,2 \bar "|."
}

\bookpart { 
\header {
    title = \songTitle 
    poet = \songPoet 
    composer = \tuneComposer 
    arranger = \tuneArranger 
    source = \tuneSource
    section = \songSection 
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
    \new Lyrics = "altosIII"  \lyricsto "sopranos" \altoWordsIII
    \new Lyrics = "altosIV"   \lyricsto "sopranos" \altoWordsIV
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

