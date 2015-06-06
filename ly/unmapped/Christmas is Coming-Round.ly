\version "2.14.2"
\include "util.ly"

\header {tagline = ""
    title = "Christmas is Coming"
    %subtitle = "(Three-part Round)"
    poet = "Traditional"
    composer = "Edith Nesbitt (1858–1924)"
    %\markup{from \italic{cpdl.org}}
  }

global = {
  \key d \major
  \time 4/4
}

sopMusic = \relative c'' {
  d4^"I" d2 a4 |
  d d2 d4 |
  d d cis b |
  a1 \bar "||"
  
  d4.^"II" d,8 d4 e |
  fis d fis a |
  b2 a4( g) |
  fis1 \bar "||"
  
  fis4.^"III" g8 fis4 e |
  d d' a fis |
  g2 a |
  d,1 \bar "|."
}
sopWords = \lyricmode {
  \dropLyricsIV
  Christ -- mas is com -- ing! The goose is get -- ting fat;
  Please to put a pen -- ny in the old man’s hat,
  Please to put a pen -- ny in the old man’s hat.
}

\score {
  \new Staff = women << \new Voice = sopranos { \global \sopMusic }
    \new Lyrics \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \sopWords
  >>
  \layout { }
  
  \midi {
    \tempo 4 = 240
    \set Staff.midiInstrument = "flute"
  
    \context {
      \Voice
      \remove "Dynamic_performer"
    }
  }
}
