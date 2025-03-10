﻿\version "2.14.2"

\header {
  title = "Jolly Old Saint Nicholas"
  composer = "Anonymous, 19th Century"
  %source = \markup { from \italic {HymnsAndCarolsOfChristmas.com}}
}

global = {
    \key bes \major
    \time 2/4
    \tempo 4 = 90
}

sopMusic = \relative c' {
  \autoBeamOff
  d'8 d d d |
  c c c4 |
  bes8 bes bes bes |
  d2 | 
  
  g,8 g g g |
  f f bes4 |
  a8 bes c d |
  c2 | 
  
  d8 d d d |
  c c c4 |
  bes8 bes bes bes |
  d2 | 
  
  g,8 g g g |
  f f bes4 |
  c8 bes c d |
  bes2 \bar "|."
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  \autoBeamOff
  bes'8 bes bes bes |
  a a a4 |
  g8 g g d |
  f2 |
  
  ees8 ees ees ees |
  d d d4 |
  f8 f f f |
  f4( a) |
  
  bes8 bes bes bes |
  a a a4 |
  g8 g g d |
  f2 |
  
  ees8 ees ees ees |
  d d d4 |
  ees8 d ees f |
  d2 \bar "|."
}
altoWords = \lyricmode {
  
  \set stanza = #"1. "
  Jol -- ly old Saint Ni -- cho -- las,
  Lean your ear this way!
  Don’t you tell a sin -- gle soul
  What I’m going to say; __
  Christ -- mas Eve is com -- ing soon;
  Now, you dear old man,
  Whis -- per what you’ll bring to me;
  Tell me what you can.
}
altoWordsII = \lyricmode {
  
  \set stanza = #"2. "
  When the clock is strik -- ing twelve,
  When I’m fast a -- sleep,
  Down the chim -- ney, broad and black,
  With your pack you’ll creep; __
  All the stock -- ings you will find
  Hang -- ing in a row;
  Mine will be the short -- est one,
  You’ll be sure to know.
}
altoWordsIII = \lyricmode {
  
  \set stanza = #"3. "
  John -- ny wants a pair of skates;
  Su -- sy wants a sled;
  Nel -- lie wants a sto -- ry -- book,
  one she has -- n’t read; __
  Now I think I’ll leave to you
  What to give the rest;
  Choose for me, dear San -- ta Claus,
  You will know the best.
}
altoWordsIV = \lyricmode {
}
altoWordsV = \lyricmode {
}
altoWordsVI = \lyricmode {
}
tenorMusic = \relative c' {
  \autoBeamOff
  f8 f f f |
  ees ees ees4 |
  d8 d d bes |
  a4( c) |
  
  bes8 bes bes bes |
  bes bes bes4 |
  c8 d ees d |
  ees2 |
  
  f8 f f f |
  ees ees ees4 |
  d8 d d bes |
  a4( c) |
  
  bes8 bes bes bes |
  bes bes bes4 |
  a8 bes a f |
  f2 \bar "|."
}
tenorWords = \lyricmode {

}

bassMusic = \relative c {
  \autoBeamOff
  bes'8 bes bes bes |
  f f f4 |
  g8 g g g |
  d2 |
  
  ees8 ees ees ees |
  bes bes bes4 |
  f'8 f a bes |
  a4( f) |
  
  bes8 bes bes bes |
  f f f4 |
  g8 g g g |
  d2 |
  
  ees8 ees ees ees |
  bes bes bes4 |
  f'8 f f f |
  bes,2 \bar "|."
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
    \new Lyrics \with { alignAboveContext = #"women" } \lyricsto "sopranos" \sopWords
     \new Lyrics = "altosVI"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWordsVI
    \new Lyrics = "altosV"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWordsV
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWords
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"men"  } \lyricsto "tenors" \tenorWords
    \new Lyrics \with { alignBelowContext = #"men"  } \lyricsto "basses" \bassWords
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

