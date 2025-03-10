﻿\version "2.14.2"

\header {
    title = "Gaudete"
    composer = "15th Century"
    %source = \markup{Chorus and text of verses from \italic{Piæ Cantiones}, 1582, via \italic{imslp.org}, Melody of verses from \italic {www.cpdl.org}}
  }

global = {
    \key f\major
    \time 4/4
    \autoBeamOff
    \tempo 4 = 135
}

sopMusic = \relative c'' {
  \partial 4 g4 |
  g f g8 a bes4 |
  bes8 a4 g8 f4 f |
  
  f g a4. g8 |
  f4 g8 a4 g8 f4 |
  g2. \bar "||" 
}

altoMusic = \relative c' {
  d4 |
  d d d8 f f4 |
  f8 f4 d8 d4 d |
  
  d d f4. d8 |
  d4 bes8 f'4 c8 d4 |
  d2. |
  
  \slurDotted \oneVoice
  g8 d' d c bes( a) g4 |
  a8 bes a g f4 d |
  
  g8 bes a bes c( a) f4 |
  bes8 g f a g4 g \bar "|."
}
altoWords = \lyricmode {
  
  Gau -- de -- te, gau -- de -- te,
  Chris -- tus est na -- tus
  ex Ma -- ri -- a Vir -- gi -- ne, Gau -- de -- te!
  
  
  \set stanza = #"1. "
  \set ignoreMelismata = ##t
  Tem -- pus ad -- est gra -- ti -- æ
  hoc quod op -- ta -- ba -- mus,
  Car -- mi -- na læ -- ti -- ti -- æ
  de -- vo -- te red -- da -- mus.
}
altoWordsII = \lyricmode {
  
%\markup\italic
  \repeat unfold 21 {\skip1}
  \set stanza = #"2. "
  \set ignoreMelismata = ##t
  De -- us ho -- mo fac -- tus est
  na -- tu -- ra mi -- ran -- te,
  Mun -- dus re -- no -- va -- tus est
  a Chris -- to re -- gnan -- te.
}
altoWordsIII = \lyricmode {
  
  \repeat unfold 21 {\skip1}
  \set stanza = #"3. "
  E -- ze -- chie -- lis por -- ta
  clau -- sa per -- tran -- si -- tur,
  Un -- de lux est or -- ta,
  sa -- lus in -- ve -- ni -- tur.
}
altoWordsIV = \lyricmode {
  
  \repeat unfold 21 {\skip1}
  \set stanza = #"4. "
  \set ignoreMelismata = ##t
  Er -- go nos -- tra con -- ti -- o
  psal -- lat jam in lu -- stro,
  Be -- ne -- di -- cat Do -- mi -- no,
  sa -- lus Re -- gi nos -- tro.
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
  g4 |
  bes a bes8 c d4 |
  d8 c4 bes8 a4 a |
  
  a bes c4. bes8 |
  a4 g8 f4 g8 a4 |
  <g d'>2.
}
tenorWords = \lyricmode {

}

bassMusic = \relative c {
  g'4 |
  g d g8 f bes,4 |
  bes8 f'4 g8 d4 d |
  
  d g f4. g8 |
  d4 e8 f4 e8 d4 |
  g,2.
}

\bookpart {
\score {
  <<
   \new ChoirStaff <<
    \new Staff = women <<
      \new Voice = "sopranos" { \voiceOne << \global \sopMusic >> }
      \new Voice = "altos" { \voiceTwo << \global \altoMusic >> }
    >>
     \new Lyrics = "altosVI"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsVI
    \new Lyrics = "altosV"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsV
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWords
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

