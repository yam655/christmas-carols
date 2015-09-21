\version "2.14.2"

songTitle = "Christmas Bells"
songSubtitle = "(Lovely Evening)"

global = {
    \key g \major
    \time 3/4
    \tempo "Somewhat quickly" 4 = 220
}

sopMusic = \relative c'' {
  g2^"I." a4 |
  b2 g4 |
  c2 b4 |
  b( a) g |
  c2 b4 |
  b( a) g \bar "||"
  
  b2^"II." c4 |
  d2 b4 |
  e2 d4 |
  d( c) b |
  e2 d4 |
  d( c) b \bar "||"
  
  g2.^"III." |
  g2. |
  g2. |
  g2. |
  g2. |
  g2. \bar "|."
}

altoWords = \lyricmode {
  Oh, how love -- ly is the eve -- ning, is the eve -- ning,
  When the Christ -- mas bells are ring -- ing, sweet -- ly ring -- ing!
  Ding, dong, ding, dong, ding, dong.
}


\bookpart { 
\header {
    title = \songTitle 
    subtitle = \songSubtitle 
  }

\score {
  <<
    \new Staff = women <<
      \new Voice = "sopranos" { \global \sopMusic }
    >>
    \new Lyrics = "altos" \lyricsto "sopranos" \altoWords
   
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


