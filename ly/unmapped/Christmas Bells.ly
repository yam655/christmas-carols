\version "2.14.2"
\include "util.ly"
\header {
    title = "Christmas Bells"
    subtitle = "(Lovely Evening)"
  }

global = {
  \key g \major
  \time 3/4
  \tempo "Somewhat quickly"
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
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  
}
altoWords = \lyricmode {
  Oh, how love -- ly is the eve -- ning, is the eve -- ning,
  When the Christ -- mas bells are ring -- ing, sweet -- ly ring -- ing!
  Ding, dong, ding, dong, ding, dong.
}
altoWordsII = \lyricmode {
}
altoWordsIII = \lyricmode {
}
altoWordsIV = \lyricmode {
}
altoWordsV = \lyricmode {
}
altoWordsVI = \lyricmode {
}
tenorMusic = \relative c' {
}
tenorWords = \lyricmode {

}

bassMusic = \relative c {
}
bassWords = \lyricmode {

}

pianoRH = \relative c' {
  
}
pianoLH = \relative c' {
  
}

\score {
  <<
   \new ChoirStaff <<
%    \new Lyrics = sopranos \with { \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) }
    \new Staff = women <<
      \new Voice = "sopranos" { \voiceOne << \global \sopMusic >> }
      \new Voice = "altos" { \voiceTwo << \global \altoMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \sopWords
    \new Lyrics = "altosVI"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsVI
    \new Lyrics = "altosV"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsV
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWords
   
  >>
%    \new PianoStaff << \new Staff { \new Voice { \pianoRH } } \new Staff { \clef "bass" \pianoLH } >>
  >>
  \layout { }
  
  \midi {
    \tempo 4 = 220
    \set Staff.midiInstrument = "flute"
  
    \context {
      \Voice
      \remove "Dynamic_performer"
    }
  }
}
