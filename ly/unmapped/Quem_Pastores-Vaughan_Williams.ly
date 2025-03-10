﻿\version "2.14.2"

\header {
    title = "Quem Pastores"
    poet = \markup"Anonymous, 14th Century"
    composer = \markup"14th Century German"
    arranger = \markup"Arranged by Ralph Vaughan Williams (1872–1958)"
    %source = \markup { "from" \italic {ChristmasCarolMusic.org}}
    %\concat{ "Music from " \italic "The Cowley Carol Book" ", 1919, Words from " \italic "HymnsAndCarolsOfChristmas.com"}}}
  }

global = {
    \key f \major
    \time 3/4
    \autoBeamOff
    \tempo 4 = 60
}

sopMusic = \relative c' {
  f2 a4 |
  c2 a4 |
  bes( c) d |
  c2 g4 |
  a( bes) c |
  
  bes( a) g |
  f2 d4 |
  e2 c4 |
  a'2 bes4 |
  c2 d4 |
  
  c2 g4 |
  a2 f4 |
  bes2 bes4 |
  a( g) f |
  f( d) e |
  f2. \bar "|."
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  f2 f4 |
  g2 f4 |
  f2 f4 |
  f2 e4 |
  f2 f4 |
  
  d2 e4 |
  d2 b4 |
  c2 c4 |
  c2 f4 |
  f2 f4 |
  
  f2 e4 |
  e2 d4 |
  d2 g4 |
  e2 d4 |
  d2 c4 |
  c2. \bar "|."
}
altoWords = \lyricmode {
  
  \set stanza = #"1. "
  Quem pas -- to -- res lau -- da -- ve -- re,
  Qui -- bus an -- ge -- li di -- xe -- re,
  “Ab -- sit vo -- bis jam ti -- me -- re,
  Na -- tus est rex glo -- ri -- æ.”
}
altoWordsII = \lyricmode {
  
%\markup\italic
  \set stanza = #"2. "
  Ad quem ma -- gi am -- bu -- la -- bant,
  Au -- rum, thus, myr -- rham por -- ta -- bant,
  Im -- mo -- la -- bant hæc sin -- ce -- re
  Le -- o -- ni vic -- to -- ri -- æ.
}
altoWordsIII = \lyricmode {
  
  \set stanza = #"3. "
  Ex -- ul -- te -- mus cum Ma -- ri -- a
  In cœ -- les -- ti hie -- rar -- chi -- a
  Na -- tum pro -- mat vo -- ce pi -- a
  Laus, ho -- nor et glo -- ri -- a.
}
altoWordsIV = \lyricmode {
  
  \set stanza = #"4. "
  Chris -- to re -- gi, De -- o na -- to,
  Per Ma -- ri -- am no -- bis da -- to,
  Me -- ri -- to re -- so -- net ve -- re
  Dul -- ci cum me -- lo -- di -- a.
}
altoWordsV = \lyricmode {
  \set stanza = #"5. "
  \set ignoreMelismata = ##t
}
altoWordsVI = \lyricmode {
  \set stanza = #"6. "
  \set ignoreMelismata = ##t
}
tenorMusic = \relative c' {
  a2 c4 |
  c2 c4 |
  bes2 bes4 |
  g( a) bes |
  a2 a4 |
  
  bes2 bes4 |
  a2 g4 |
  g2 e4 |
  f2 f4 |
  f2 bes4 |
  
  g( a) bes |
  a2 a4 |
  bes2 d4 |
  c2 a4 |
  bes2 bes4 |
  a2. \bar "|."
}
tenorWords = \lyricmode {

}

bassMusic = \relative c {
  f2 f4 |
  e2 f4 |
  d2 bes4 |
  c2 c4 |
  f2 a4 |
  
  g2 c,4 |
  d2 g4 |
  c,2 c4 |
  f2 d4 |
  a2 bes4 |
  
  c2 c4 |
  cis2 d4 |
  g,2 g4 |
  a2 d4 |
  g,2 c4 |
  f2. \bar "|."
}
bassWords = \lyricmode {

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
    \new Lyrics = "altosVI"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWordsVI
    \new Lyrics = "altosV"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWordsV
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((padding . -0.5)) } \lyricsto "altos" \altoWords
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "tenors" \tenorWords
    \new Lyrics \with { alignBelowContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "basses" \bassWords
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

