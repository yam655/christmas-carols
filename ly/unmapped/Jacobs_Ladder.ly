\version "2.14.2"

\header {
  title = "Jacob’s Ladder"
  poet = "Traditional"
  composer = "Traditional"
  %source = \markup { "from" \italic {Christmas Carols, New and Old}}
}

global = {
    \key g \major
    \time 2/4
    \autoBeamOff
    \slurDotted
    \tempo 4 = 105
}

sopMusic = \relative c' {
  \partial 8 d8 |
  g4 g8 g |
  g[ b] a g |
  a4 a8 a |
  a[ c] b( a) |
  
  g4 g8 g |
  g[ b] a g |
  a4 d,8 d |
  d4 b'8( c) |
  d4 d8 e |
  
  d4 a8 b |
  c4 c8 c |
  \slurDotted
  c4 b8( c) |
  d4 d8 e |
  d[ b] c a|
  
  g4 g8 g |
  g4 
  d8 d |
  g4 g8 g |
  g[ b] a g |
  a4 a8 a |
  
  a[ c] b a |
  g4 g8 g |
  g[ b] a g |
  a4 d,8 d |
  
  d4 b'8 c |
  d4 d8 e |
  d[ b] c a |
  g4 g8 g |
  g4. \bar "|."
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  d8 |
  d[ e] b c |
  d4 d8 cis |
  d4 d8 cis |
  d4 dis8( dis) |
  
  e4 b8 c |
  d4 cis8 cis |
  d4 d8 d |
  d4 d8( d) |
  g4 g8 g |
  
  fis4 f8 f |
  e4 ees8 ees8 |
  \slurDotted
  d4 d8( c) |
  g'4 g8 g |
  g[ f] e fis |
  
  g4 f8 e |
  d4 \bar "||"
  d8 d |
  d4 d8 d |
  g4 g8 g |
  fis4 e8 e |
  
  dis4 dis8 dis |
  g[ e] d c |
  b4 cis8 cis |
  d4 d8 d |
  
  d4 g8 fis |
  g4 g8 g |
  g4 g8 fis |
  g4 f8 e |
  d4. \bar "|."
}
  
altoWords = \lyricmode {
  
  \set stanza = #"1. "
  As Ja -- cob with tra -- vel was wea -- ry one
  \set associatedVoice = "sopranos"
  day,
  At __ night on a stone __ for a pil -- low he lay,
  He __ saw in a vi -- sion a lad -- der so high,
  \set ignoreMelismata = ##t
  That its foot was on \unset ignoreMelismata
  earth, and its top in the sky.
  
  Hal -- le -- lu -- jah to Je -- sus, who died on the Tree,
  And hath rais’d up a lad -- der of mer -- cy for me,
  And hath rais’d up a lad -- der of mer -- cy for me.
}
altoWordsII = \lyricmode {
  
%\markup\italic
  \set stanza = #"2. "
  This lad -- der is long, it is strong and well -- 
  \set associatedVoice = "sopranos"
  made,
  \set ignoreMelismata = ##t
  Has stood hun -- dreds of years __ _ and is not yet de -- cayed;
  Ma -- ny mil -- lions have climbed it and reached Si -- on’s hill,
  And __ _ thou -- sands by faith _ are __ _ climb -- ing it still.
}
altoWordsIII = \lyricmode {
  
  \set stanza = #"3. "
  Come let __ us a -- scend: all may climb it who 
  \set associatedVoice = "sopranos"
  will;
  \set ignoreMelismata = ##t
  For the An -- gels of Ja -- _ cob are guard -- ing it still:
  And re -- mem -- ber each step, that by faith we pass o’er,
  Some _ Pro -- phet or Mar -- _ tyr hath trod it be -- fore.
}
altoWordsIV = \lyricmode {
  
  \set stanza = #"4. "
  And when we ar -- rive at the ha -- ven of 
  \set associatedVoice = "sopranos"
  rest
  \set ignoreMelismata = ##t
  We shall hear the glad words, _ “Come up hi -- ther, ye blest,
  Here are re -- gions of light, here are man -- sions of bliss:”
  O, __ _ who would not climb _ such a lad -- der as this?
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
  d8 |
  b[ e] d c |
  b4 fis8 g |
  fis[ g] a a |
  a4 b8( c) |
  
  b[ e] d c |
  b4 g8 g |
  fis[ g] a b |
  a4 g8( a) |
  b4 b8 a |
  
  a4 d8 d |
  c4 a8 a |
  \slurDotted
  a4 g8( g) |
  g4 d'8 c |
  b[ gis] a c |
  
  b4 d8 c |
  b4 \bar "||"
  d8 d |
  b4 b8 b |
  c4 cis8 cis |
  d4 a8 a |
  
  fis[ a] g fis |
  g4 g8 g |
  g4 g8 g |
  fis[ g] a b |
  
  a4 d8 d |
  d4 d8 c |
  b[ d] e c |
  b4 d8 c |
  b4. \bar "|."
}
tenorWords = \lyricmode {

}

bassMusic = \relative c {
  d8 |
  g[ c] b a |
  g4 fis8 e |
  d[ e] fis g |
  fis4 b,8( b) |
  
  e8[ c] b a |
  g4 e'8 e |
  d[ e] fis g |
  fis4 g8( g) |
  b,4 b8 cis |
  
  d4 d8 d |
  a'4 g8 g |
  \slurDotted
  fis4 g8( e) |
  b4 b8 c |
  d4 d8 d |
  
  e4 b8 c |
  g4 \bar "||"
  d'8 d |
  g4 f8 f |
  e4 ees8 ees |
  d4 c8 c |
  
  b4 b8 b |
  e[ c] b a |
  g4 e'8 e |
  d[ e] fis g |
  
  fis4 g8 a |
  b4 b,8 c |
  d4 d8 d |
  e4 b8 c |
  g4. \bar "|."
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
     \new Lyrics = "altosVI"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsVI
    \new Lyrics = "altosV"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsV
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((padding . -0.9))} \lyricsto "altos" \altoWords
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

