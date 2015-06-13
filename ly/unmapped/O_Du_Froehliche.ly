\version "2.14.2"

\header { 
    title = "O Du Fröhliche"
    poet = "Johannes Daniel Falk (1768–1826)"
    composer = "Sicilian Hymn"
    %source = \markup \concat{ "from " \italic"The Wartburg Hymnal" ", 1918, via " \italic"HymnsAndCarolsOfChristmas.com"}
    %\markup{from \italic{The English Carol Book, Second Series}, 1913, via \italic{HymnsAndCarolsOfChristmas.com}}
}

global = {
    \key f \major
    \time 4/4
    \tempo 4 = 90
}

sopMusic = \relative c'' {
  c2 d |
  c4. bes8 a4( bes) |
  c2 d |
  c4. bes8 a4( bes) |
  c2 c |
  
  d e4 f |
  e2 d |
  c2. bes4\rest |
  g4.( a8) g4 a |
  bes4.( c8) bes2 |
  
  a4.( bes8) a4 bes |
  c4.( d8) c2 |
  f4( e) d( c) |
  f d c bes |
  a2 g |
  f2. bes4\rest \bar "|."
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  f2 f |
  f4. f8 f2 |
  f2 f |
  e4. g8 f2 |
  f2 g |
  
  g g4 a |
  g2 f |
  e2. s4 |
  e4.( f8) e4 f |
  g4.( a8) g2 |
  
  f4.( g8) f4 f |
  f2 f |
  f2 f2 |
  f4 f fis g |
  f2 e |
  f2. s4 \bar "|."
}
altoWords = \lyricmode {
  
  \set stanza = #"1. "
  O du fröh -- li -- che, o du se -- li -- ge,
  Gna -- den -- bring -- en -- de Weih -- nachts -- zeit!
  Welt ging ver -- lor -- en,
  Christ ist ge -- bor -- en,
  Freu -- e, freu -- e dich, o Christ -- en -- heit!
}
altoWordsII = {
  
  \set stanza = \markup{\dynamic"f  " "2. "}
  \lyricmode {
    O du fröh -- li -- che, o du se -- li -- ge,
    Gna -- den -- bring -- en -- de Weih -- nachts -- zeit!
    Christ ist er -- schien -- en,
    Uns zu ver -- söh -- nen,
    Freu -- e, freu -- e dich, o Christ -- en -- heit!
  }
}
altoWordsIII = \lyricmode {
  
  \set stanza = #"3. "
  O du fröh -- li -- che, o du se -- li -- ge,
  Gna -- den -- bring -- en -- de Weih -- nachts -- zeit!
  Himm -- li -- sche Hee -- re
  Jauch -- zen dir Eh -- re,
  Freu -- e, freu -- e dich, o Christ -- en -- heit!
}
altoWordsIV = \lyricmode {
}
altoWordsV = \lyricmode {
}
altoWordsVI = \lyricmode {
}
tenorMusic = \relative c' {
  a2 bes |
  a4. g8 f4( g) |
  a2 bes4( a) |
  g4. c8 c2 |
  c2 c |
  
  b c4 c |
  c2 b |
  g2. s4 |
  c2 c4 c  |
  c2 c |
  
  c2 c4 g |
  a4.( bes8) a2 |
  a2 bes4( c) |
  d bes ees d |
  c2 c4( bes) |
  a2. s4 \bar "|."
}
tenorWords = \lyricmode {

}

bassMusic = \relative c {
  f2 bes, |
  f'4. f8 f2 |
  f2 bes, |
  c4. e8 f4( g) |
  a2 e |
  
  d c4 f |
  g2 g, |
  c2. d4\rest |
  c2 c4 f |
  e2 e |
  
  f2 f4 f |
  f2 f2 |
  d4( c) bes( a) |
  bes bes a bes |
  c2 c |
  f2. d4\rest \bar "|."
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
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((padding . -0.5)) } \lyricsto "sopranos" \altoWords
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

