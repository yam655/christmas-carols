\version "2.14.2"
\include "util.ly"
\header {
    title = "A Christmas Round"
    composer = "Denis Mason"
    arranger = \markup { "from" \italic "cpdl.org"}
  }

global = {
  \key d \major
  \time 6/8
  \autoBeamOff
}

sopMusic = \relative c'' {
  \mark "I."
  a8. b16 a8~ a fis g |
  a[ d] b a4. |
  
  \mark "II."
  d,8 d e fis a g |
  fis d e fis4. | \break
  
  \mark "III."
  d'4 cis16 b a4 e8 |
  fis4 g8 a8 a4 |
  
  \mark "IV."
  fis8.[ g16] a8 fis4 e8 |
  d4. d \bar "|."
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  
}
altoWords = \lyricmode {
  Ho -- di -- e __ Chris -- tus na -- tus est,
  ho -- di -- e sal -- va -- tor ap -- pa -- ru -- it.
  Glo -- ri -- a in ex -- cel -- sis De -- o,
  in __ ex -- cel -- sis De -- o.
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
    \tempo 4 = 100
    \set Staff.midiInstrument = "flute"
  
    \context {
      \Voice
      \remove "Dynamic_performer"
    }
  }
}
