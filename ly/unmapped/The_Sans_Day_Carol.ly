﻿\version "2.14.2"

songTitle = "The Sans Day Carol"
songPoet = "Traditional"
tuneComposer = "Traditional Cornish"
tuneSource = \markup {from \italic {The Cornish Song Book}, 1929} %, via \italic{HymnsAndCarolsOfChristmas.com}}

global = {
  \key f \major
  \time 3/4
  \autoBeamOff
  \tempo 4 = 108
}

sopMusic = \relative c' {
  \partial 4 f8. a16 |
  c4 c c8. bes16 |
  a4 f a |
  bes g e |
  f2 f8[ a] |
  c4 c c8[ bes] |
  
  a4 f \slurDotted a8( a) |
  bes4 g e |
  f2 \bar "||" 
  f8[ a] |
  c4 c d8[ e] |
  f8 f c4 c |
  
  c c d8 e |
  f2 f,8 a |
  c4 c c8 bes |
  a4 f a |
  bes g e |
  f2 g4 |
  
  g2 g4 |
  a2 f8 a |
  c4 c c8 bes |
  a4 f a |
  bes g e |
  f2 \bar "|."
  
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  c8. f16 |
  g4 e f8. g16 |
  c,4 c f8[ e] |
  d4 d c |
  c2 c8[ f] |
  g4 e f8[ g] |
  
  c,4 c \slurDotted f8( f) |
  f[ e] d4 c |
  c2 
  f4 |
  a a bes |
  a8 a a4 a |
  
  g f a8 g |
  f2 f8 f |
  g4 e f8 g |
  c,4 c f8[ e] |
  d4 d c |
  c2 e4 |
  
  e2 e4 |
  f2 c8 f |
  g4 e f8 g |
  c,4 c f |
  f8[ e] d4 c |
  c2 \bar "|."
}
altoWords = \lyricmode {
  
  \set stanza = #"1. "
  Now the Hol -- ly bears a ber -- ry
  As white as the milk,
  And Ma -- ry bore Je -- sus
  \set ignoreMelismata = ##t
  Who was wrapt up in silk;
  \unset ignoreMelismata
  
  And Ma -- ry bore Je -- sus Christ Our
  Sav -- ior for to be;
  And the first tree of the green -- wood
  It was the Hol -- ly,
  Hol -- ly,
  Hol -- ly,
  And the first tree of the green -- wood
  It was the Hol -- ly.
}
altoWordsII = \lyricmode {
  
%\markup\italic
  \set stanza = #"2. "
  Now the Hol -- ly bears a ber -- ry
  As green as the grass,
  And Ma -- ry bore Je -- sus Who died on the Cross.
}
altoWordsIII = \lyricmode {
  
  \set stanza = #"3. "
  Now the Hol -- ly bears a ber -- ry
  As red as the blood,
  And Ma -- ry bore Je -- sus Who died on the Rood.
}
altoWordsIV = \lyricmode {
  
  \set stanza = #"4. "
  Now the Hol -- ly bears a ber -- ry
  As black as a coal,
  And Ma -- ry bore Je -- sus Who died for us all.
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
  a8. c16 |
  c4 g c8. c16 |
  c4 a c |
  bes bes g |
  a2 a8[ c] |
  c4 g c |
  
  c a \slurDotted a8( a) |
  d[ c] bes4 bes |
  a2 
  a8[ c] |
  f4 ees d |
  c8 c c4 c |
  
  e f a,8 a |
  a2 a8 c |
  c4 g c8 c |
  c4 a c |
  bes bes g |
  a2 c4 |
  
  c2 c4 |
  c2 a8 c |
  c4 g c8 c |
  c4 a a |
  d8[ c] bes4 bes |
  a2 \bar "|."
}
tenorWords = \lyricmode {

}

bassMusic = \relative c {
  f8. f16 |
  e4 c d8. e16 |
  f4 f f |
  bes, bes c |
  f2 f4 |
  e c d8[ e] |
  
  f4 f \slurDotted d8( d) |
  bes4 bes c |
  <f f,>2 
  f4 |
  f f f |
  f8 f f4 f8[ a] |
  
  c[ bes] a[ g] f e |
  d2 f8 f |
  e4 c d8 e |
  f4 f f |
  bes, bes c |
  <f f,>2 c4 |
  
  c2 c4 |
  f2 f8 f |
  e4 c d8 e |
  f4 f d |
  bes bes c |
  <f f,>2 \bar "|."
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
    \new Lyrics = "altosVI"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsVI
    \new Lyrics = "altosV"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsV
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "sopranos" \altoWords
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
        \context {
            \Staff \remove "Staff_performer"
        }
        \context {
            \Voice \consists "Staff_performer"
        }
    }
}
}

