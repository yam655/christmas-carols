﻿\version "2.14.2"

\header {
  title = "Ring Out, Wild Bells"
  poet = "Alfred Lord Tennyson (1809–1892)"
  composer = "Felix Mendelssohn (1809–1847)"
  %source = \markup{ "from " \italic"The Life Hymnal" ", 1904"}
}

global = {
    \key ees \major
    \time 6/8
    \autoBeamOff
    \tempo 4 = 90
}

sopMusic = \relative c' {
  \partial 8 bes'8 |
  bes4 g8 ees4 f8 |
  g4 aes8 bes4 g8 |
  g[ f] g ees4 bes'8 | 
  
  bes[ aes] bes g4 bes8\rest |
  ees, g bes ees4 d8 |
  c4 b8 c4 c8 | 
  
  ees[ c] aes f4 c'8 |
  bes4 aes8 g4 bes8\rest |
  ees, g bes ees4 d8 | 
  
  c4 b8 c4 c8 ees4.~ ees8[ c] aes |
  f4 g8 aes4 d,8 |
  ees2.~ |
  ees \bar "|."
}
sopWords = \lyricmode {
  \repeat unfold40 {\skip1}
  Ring out, __ wild bells, and let him die. __
}
sopWordsII = \lyricmode {
  \repeat unfold40 {\skip1}
  Ring out __ the false, ring in the true. __
}
sopWordsIII = \lyricmode {
  \repeat unfold40 {\skip1}
  Ring in __ the Christ that is to be. __
}

altoMusic = \relative c' {
  ees8 |
  ees4 bes8 bes4 d8 |
  ees4 ees8 ees4 ees8 |
  d4 d8 ees4 g8 |
  
  g8[ f] g ees4 s8 |
  ees ees ees g4 f8 |
  ees8[ g] f ees4 ees8 |
  
  aes4 ees8 ees4 ees8 |
  d4 f8 ees4 s8 |
  ees ees ees g4 f8 |
  
  ees[ g] f ees4 g8\rest |
  g4\rest c,8 ees4 ees8 |
  ees4 c8\rest c4\rest bes8 bes4( ees8) d4( c8) |
  bes2. \bar "|."
}
altoWords = \lyricmode {
  
  \set stanza = #"1. "
  Ring out, wild bells, \set ignoreMelismata = ##t to the \unset ignoreMelismata wild sky,
  The fly -- ing cloud, the frost -- y light:
  The year is dy -- ing in the night;
  Ring out, \set associatedVoice = "sopranos"
  wild bells, and let him die.

  \unset associatedVoice
  The year is dy -- ing in the night;
  Ring out, wild bells, and let __ him __ die.
}
altoWordsII = \lyricmode {
  
%\markup\italic
  \set stanza = #"2. "
  Ring out the old, ring in the new,
  Ring, hap -- py bells a -- cross the snow:
  The year is go -- ing, let him go;
  Ring out \set associatedVoice = "sopranos"
  the false, ring in the true.

  \unset associatedVoice
  The year is go -- ing, let him go;
  Ring out the false, ring in __ the __ true.
}
altoWordsIII = \lyricmode {
  
  \set stanza = #"3. "
  Ring in the val -- iant man and free,
  The lar -- ger heart, the kind -- lier hand;
  Ring out the dark -- ness of the land,
  Ring in \set associatedVoice = "sopranos"
  the Christ that is to be.

  \unset associatedVoice
  Ring out the dark -- ness of the land,
  Ring in the Christ that is __ to __ be.
}
altoWordsIV = \lyricmode {
  \set stanza = #"4. "
  \set ignoreMelismata = ##t
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
  g8 |
  g4 g8 g4 bes8 |
  bes4 aes8 g4 bes8 |
  bes4 aes8 g4 bes8 |
  
  bes4 bes8 bes4 s8 |
  g g g bes4 aes8 |
  g[ ees'] d c4 c8 |
  
  c4 c8 c4 aes8 |
  f4 bes8 bes4 s8 |
  g8 g g  bes4 aes8 |
  
  g[ ees'] d c4 s8 |
  s4 aes8 c4 c8 |
  c4 s8 s4 aes8 |
  g4( c8) bes4( aes8) |
  g2. \bar "|."
}
tenorWords = \lyricmode {

}

bassMusic = \relative c {
  ees8 |
  ees4 ees8 ees4 bes8 |
  ees[ d] c bes4 bes8 |
  bes4 bes8 bes4 bes8 |
  
  d4 d8 ees4 d8\rest |
  ees8 ees ees ees4 f8 |
  g4 g8 aes4 aes8 |
  
  aes4 aes8 aes4 aes,8 |
  bes4 d8 ees4 d8\rest |
  ees ees ees ees4 f8 |
  g4 g8 aes4 d,8\rest |
  d4\rest aes'8 aes4 aes8 |
  aes4 d,8\rest d4\rest bes8 |
  ees4. ees |
  ees2. \bar "|."
  
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
    \new Lyrics \with { alignAboveContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \sopWordsII
    \new Lyrics \with { alignAboveContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \sopWordsIII
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
    \new Lyrics \with { alignAboveContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "tenors" \tenorWords
    \new Lyrics \with { alignBelowContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "basses" \bassWords
  >>
  >>
  \layout { }
  \midi {
    \set Staff.midiInstrument = "flute" 
    %\context { \Voice \remove "Dynamic_performer" }
  }
}
}

