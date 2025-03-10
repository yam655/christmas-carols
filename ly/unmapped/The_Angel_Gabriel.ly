﻿\version "2.14.2"

songTitle = "The Angel Gabriel"
songPoet = "Translated and Adapted by Sabine Baring-Gould (1834–1924)"
tuneComposer = "Basque Carol"
tuneSource = \markup {from \italic {CyberHymnal.org}}

global = {
    \key bes \major
    \time 6/4
    \tempo 4 = 90
}

sopMusic = \relative c' {
  \partial 8 d8 |
  g4 bes8 a4 c8 bes4 a8 |
  g4. a d,~ d4  d8 |
  
  g4 bes8 a4 c8 bes4 a8 |
  g4.~ g4 f8 g4.~ g4  bes8 |
  
  bes4 c8 bes4 a8 bes4 c8 d4 d8 |
  \slurDotted c4.( bes) \slurSolid a4.~ a4  bes8 |
  
  c4 bes8 a4 g8 a4. d, |
  g4.( bes8[ a bes] g4.~ g4) f8 |
  g2.~ g4. bes4\rest \bar "|."
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  bes8 |
  d4 d8 d4 d8 d4 d8 |
  ees4. ees a,~ a4 d8 |
  
  d4 d8 d4 d8 d4 d8 |
  ees4.( d4) d8 d4.~ d4 d8 |
  
  d4 d8 d4 d8 d4 f8 f4 f8 |
  \slurDotted f4.( d) \slurSolid d4.~ d4 d8 |
  
  ees4 ees8 ees4 ees8 d4. d4. |
  d4.( ees ees d4) d8 |
  d2.~ d4. s4 \bar "|."
}
altoWords = \lyricmode {
  
  \set stanza = #"1. "
  The an -- gel Ga -- bri -- el from heav -- en came, __
  His wings as drif -- ted snow, his eyes __ a -- flame; __
  “All hail,” said he, “thou low -- ly maid -- en Ma -- ry, __
  Most high -- ly fa -- vored la -- dy,” Glo -- ri -- a! __
}
altoWordsII = \lyricmode {
  
  \set stanza = #"2. "
  “For know a bles -- sed Mo -- ther thou shalt be, __
  All ge -- ne -- ra -- tions laud and hon -- or thee, __
  Thy Son shall be Em -- man -- u -- el, by
  \set ignoreMelismata = ##t
  seers fore -- 
  \unset ignoreMelismata
  told, __
  Most high -- ly fa -- vored la -- dy,”
  Glo -- ri -- a! __
}
altoWordsIII = \lyricmode {
  
  \set stanza = #"3. "
  Then gen -- tle Ma -- ry meek -- ly bowed her head, __
  “To me be as it plea -- seth God,” __ she said, __
  “My soul shall laud and mag -- ni -- fy His
  \set ignoreMelismata = ##t
  ho -- ly
  \unset ignoreMelismata
  Name.”
%8.5x11 __
  Most high -- ly fa -- vored la -- dy,
  Glo -- ri -- a! __
}
altoWordsIV = \lyricmode {
  
  \set stanza = #"4. "
  Of her, Em -- man -- u -- el, the Christ, was born __
  In Beth -- le -- hem, all on a Christ -- mas morn, __
  And Chris -- tian folk through -- out the world will
  \set ignoreMelismata = ##t
  ev -- er
  \unset ignoreMelismata
  say, __
  “Most high -- ly fa -- vored la -- dy,”
  Glo -- ri -- a! __
}

tenorMusic = \relative c' {
  g8 |
  bes4 bes8 a4 a8 bes4 bes8 |
  bes4. g g( fis4) a8 |
  
  bes4 bes8 a4 a8 bes4 bes8 |
  bes4.( a4) a8 bes4.~ bes4 bes8 |
  
  bes4 a8 bes4 c8 d4 c8 bes4 bes8 |
  \slurDotted a4.( g) \slurSolid a~ a4 a8 |
  
  g4 g8 c4 bes8 a4. a |
  bes4.( bes g a4) a8 |
  g2.~ g4. d4\rest \bar "|."
}
tenorWords = \lyricmode {

}

bassMusic = \relative c' {
  g8 |
  g4 g8 d4 d8 g4 g8 |
  ees4. c d~ d4 d8 |
  
  g4 g8 d4 d8 g4 g8 |
  ees4.( d4) d8 g4.~ g4 g8 |
  
  g4 d8 g4 fis8 g4 a8 bes4 bes8 |
  \slurDotted f4.( g) \slurSolid d4.~ d4 d8 |
  
  c4 c8 ees4 ees8 d4. d |
  g( ees c d4) d8 |
  g,2.~ g4. s4 \bar "|."
}
bassWords = \lyricmode {

}

\bookpart { 
\header {
  title = \songTitle
  poet = \songPoet
  composer = \tuneComposer
  source = \tuneSource
}

\score {
  <<
   \new ChoirStaff <<
    \new Staff = women <<
      \new Voice = "sopranos" { \voiceOne << \global \sopMusic >> }
      \new Voice = "altos" { \voiceTwo << \global \altoMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \sopWords
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

