﻿\version "2.14.2"

\header {
  title = "Jesus, the Light of the World"
  composer = "Arranged by George D. Elderkin"
  source = \markup{ from \italic {The Finest of the Wheat No. 2}, 1894}
}

global = {
    \key f \major
    \time 6/8
    \autoBeamOff
    \tempo 4 = 90
}

sopMusic = \relative c'' {
  a4 c8 c4 a8 |
  a4 g8 f4. |
  a8 a8. a16 d8 c8. a16 |
  g4.~ g4 b8\rest |
  a4 c8 c4 a8 |
  a4 g8 f4. |
  
  a8 a8. f16 g8 g8. g16 |
  f4.~ f4 
  c'8\fermata |
  a8 c c c4. |
  a8 c c c4. |
  a8 c8. c16
  
  d8 c a |
  a g g g4. |
  a8 c8. c16 c8 a f |
  g f d f4.
  a8 a8. f16 g8 g8. g16 |
  f2. \bar "|."
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  f4 f8 f4 f8 |
  e4 c8 c4. |
  f8 f8. f16 f8 f8. f16 |
  e4.~ e4 s8 |
  f4 f8 f4 f8 |
  e4 c8 c4. |
  
  f8 f8. c16 e8 e8. e16 |
  c4.~ c4 
  f8 |
  f8 f f f4. |
  f8 f f f4. |
  f8 f8. f16 
  
  f8 f f |
  f d f e4. |
  f8 f8. f16 f8 f c |
  d d bes d4. |
  
  f8 f8. c16 e8 e8. e16 |
  c2. \bar "|."
}
altoWords = \lyricmode {
  \set stanza = #"1. "
  Hark! the Her -- ald an -- gels sing,
  Je -- sus, the Light of the world;
  Glo -- ry to the new -- born King,
  Je -- sus, the Light of the world.
  
  
  We’ll walk in the light,
  beau -- ti -- ful light,
  Come where the dew -- drops of mer -- cy are bright,
  
  Shine all a -- round us by day and by night,
  Je -- sus, the Light of the world.
}
altoWordsII = \lyricmode {
%\markup\italic
  \set stanza = #"2. "
  Joy -- ful all ye na -- tions rise,
  Je -- sus, the Light of the world;
  Join the tri -- umph of the skies,
  Je -- sus, the Light of the world.
}
altoWordsIII = \lyricmode {
  \set stanza = #"3. "
  Christ, by high -- est heav’n a -- dored,
  Je -- sus, the Light of the world;
  Christ, the ev -- er -- last -- ing Lord,
  Je -- sus, the Light of the world.
}
altoWordsIV = \lyricmode {
  \set stanza = #"4. "
  Hail! the heav’n -- born Prince of peace,
  Je -- sus, the Light of the world;
  Hail! the sun of right -- eous -- ness,
  Je -- sus, the Light of the world.
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
  c4 a8 a4 c8 |
  c4 bes8 a4. |
  c8 c8. c16 bes8 a8. c16 |
  c4.~ c4 s8 |
  c4 a8 a4 c8 |
  c4 bes8 a4. |
  
  c8 c8. a16 bes8 bes8. bes16 |
  a4.~ a4 
  a8 |
  c8 a a a4. |
  c8 a a a4. |
  c8 a8. a16 
  
  bes8 a c |
  c b d c4. |
  c8 a8. a16 a8 c a |
  bes bes f f4. |
  
  c'8 c8. a16 bes8 bes8. bes16 |
  a2. \bar "|."
}
tenorWords = \lyricmode {

}

bassMusic = \relative c {
  f4 f8 f4 f8 |
  c4 c8 f4. |
  f8 f8. f16 f8 f8. f16 |
  c4.~ c4 d8\rest |
  f4 f8 f4 f8 |
  c4 c8 f4. |
  
  c8 c8. c16 c8 c8. c16 |
  f4.~ f4 
  f8\fermata |
  f8 f f f4. |
  f8 f f f4. |
  f8 f8. f16
  
  f8 f f |
  f g g c,4. |
  f8 f8. f16 f8 f f |
  bes, bes bes bes4. |
  
  c8 c8. c16 c8 c8. c16 |
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
    \new Lyrics = "altosVI"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsVI
    \new Lyrics = "altosV"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsV
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWords
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

