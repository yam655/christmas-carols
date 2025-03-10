﻿\version "2.14.2"

\header {
  title = "Gloucestershire Wassail"
  poet = "18th Century English"
  composer = "18th Century English"
  source = \markup ""
}

global = {
  \key g \major
  \time 3/4
  \autoBeamOff
  \tempo"Allegro" 4 = 170
}

sopMusic = \relative c' {
    \partial 4
  \repeat volta 2 {
    d4 |
    \slurDotted g4( g) g |
    g( a) b |
    c b a |
    \slurSolid b( d) d4 |
    
    c4 a a |
    \slurDotted a( b) c |
    \slurSolid b8[ a] g[ a] b4 |
    a2 c4 |
    
    b8[ a] g[ a] b[ c] |
    d2 \slurDotted d8\noBeam( c) |
    b4 g b |
    a2 g8\noBeam a |
    
    b2 a8\noBeam b |
    c2 b4 |
    a g fis |
    g2
  }
  
  
  \repeat volta 2 {
    d4 |
    \slurDotted g4 g g |
    g a b |
    c b a |
    \slurSolid b( d) \slurDotted d8( d) |
    
    c4 a a |
    \slurDotted a( b) c |
    \slurSolid b8[ a] g[ a] b4 |
    a2 c4 |
    
    b8[ a] g[ a] b[ c] |
    d2 \slurDotted d8\noBeam( c) |
    b4 g b |
    a2 g8\noBeam( a) |
    
    b2 a8\noBeam( b) |
    c2 b4 |
    a( g) fis |
    g2
  }
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  d4 |
  \slurDotted d( d) e|
  d( fis) g|
  g g fis |
  g2 g4 |
  
  a4 fis fis |
  fis( d) fis |
  \slurSolid g8[ fis] e[ fis] g4 |
  fis2 fis4 |
  
  g8[ fis] e[ fis] g4 |
  fis2 \slurDotted fis8\noBeam( fis) |
  g4 g g |
  fis2 e8\noBeam fis |
  
  g2 fis8\noBeam g |
  g2 g4 |
  fis d4. c8 |
  b2
  
  
  
  
  d4 |
  \slurDotted d d e|
  d fis g|
  g g fis |
  g2 g8( g) |
  
  a4 fis fis |
  fis( d) fis |
  \slurSolid g8[ fis] e[ fis] g4 |
  fis2 fis4 |
  
  g8[ fis] e[ fis] g4 |
  fis2 \slurDotted fis8\noBeam( fis) |
  g4 g g |
  fis2 e8\noBeam( fis) |
  
  g2 fis8\noBeam( g) |
  g2 g4 |
  fis( d4.) c8 |
  b2
}
altoWords = \lyricmode {
  
  \set stanza = #"1."
  \set ignoreMelismata = ##t
  Was -- sail, __ _ was -- sail __ _ all o -- ver the town, _
  Our toast it is white and our ale _ it __ _ is brown;
  Our bowl _ it __ _ is __ _ made of the white ma -- ple tree,
  With the was -- sail -- ing bowl we’ll drink un -- to thee.
  \unset ignoreMelismata
  
  
  \set stanza = #"  4."
  \set ignoreMelismata = ##t
  And here is to Fill -- pail and to her left ear, __ _
  Pray __ _ God send our mas -- ter a hap -- _ py _ New Year,
  A hap -- _ py _ New _ Year as __ _ e’er he did see,
  With the was -- sail -- ing bowl we’ll drink un -- to thee.
}
altoWordsII = {
  
  \set stanza = \markup{\dynamic"mf " "2."}
  \lyricmode {
  %\markup\italic
    \set ignoreMelismata = ##t
    So here is to Cher -- ry and to his right cheek, _
    Pray God send our mas -- ter a good _ piece _ of beef,
    A good _ piece _ of __ _ beef that _ may we all see,
    With the was -- sail -- ing bowl we’ll drink un -- to thee.
  
    
    \set stanza = #"  5."
    \set ignoreMelismata = ##t
    Come but -- ler, come fill us a bowl of the best, _
    Then we hope that your soul _ in heav -- _ en _ may rest,
    But if __ _ you _ do _ draw us a bowl of the small,
    Then _ down shall go but -- ler, bowl __ _ and all.
  }
}
altoWordsIII = \lyricmode {
  
  \set stanza = #"3."
  \set ignoreMelismata = ##t
  And here is to Dob -- bin and to his right eye, __ _
  Pray God send our mas -- ter a good _ Christ -- _ mas pie,
  A good _ Christ -- _ mas _ pie that _ may we all see,
  With the was -- sail -- ing bowl we’ll drink un -- to thee.
  
  
  \set stanza = #"  6."
  \set ignoreMelismata = ##t
  Then here’s to the maid in the li -- ly white smock, _
  Who _ tripp’d to the door _ and slipp’d _ back _ the lock,
  Who tripp’d _ to _ the _ door and _ pulled back the pin,
  For to let these _ jol -- ly was -- sail -- ers in.
}
altoWordsIV = \lyricmode {
}
altoWordsV = \lyricmode {
}
altoWordsVI = \lyricmode {
}
tenorMusic = \relative c' {
  b4 |
  \slurDotted b( b) c |
  b( c) d |
  e d c |
  \slurSolid d( b) b4 |
  
  \slurDotted
  e4 d c |
  d( g,) a |
  g e' d |
  d2 d4 |
  
  g, e' d8[ c] |
  d2 a8\noBeam( a) |
  g8[ d'] b4 d |
  d2 b8\noBeam d |
  
  g,2 d'8\noBeam g, |
  e'2 d4 |
  c b a |
  g2
  
  
  
  
  b4 |
  \slurDotted b b c |
  b c d |
  e d c |
  \slurSolid d( b) \slurDotted b8( b) |
  
  \slurDotted
  e4 d c |
  d( g,) a |
  g e' d |
  d2 d4 |
  
  g, e' d8[ c] |
  d2 a8\noBeam( a) |
  g8[ d'] b4 d |
  d2 b8\noBeam( d) |
  
  g,2 d'8\noBeam( g,) |
  e'2 d4 |
  c( b) a |
  g2
}
tenorWords = \lyricmode {

}

bassMusic = \relative c {
  g'4 |
  \slurDotted g4( g) c, |
  g'( d) g |
  c, g' d |
  g2 g4 |
  
  a4 d, d |
  d( g) d |
  g b g |
  d2 d4 |
  
  g4 b g8[ e] |
  d2 \slurDotted d8\noBeam( d) |
  g4 g g |
  d2 e8\noBeam d |
  
  g2 d8 g |
  c,2 g'4 |
  d d d |
  g,2
  
  
  
  
  g'4 |
  \slurDotted g4 g c, |
  g' d g |
  c, g' d |
  g2 g8( g) |
  
  a4 d, d |
  d( g) d |
  g b g |
  d2 d4 |
  
  g4 b g8[ e] |
  d2 \slurDotted d8\noBeam( d) |
  g4 g g |
  d2 e8\noBeam( d) |
  
  g2 d8( g) |
  c,2 g'4 |
  d( d) d |
  g,2
}
bassWords = \lyricmode {

}

\bookpart {
\score {
  <<
   \new ChoirStaff <<
%    \new Lyrics = sopranos \with { \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) }
    \new Staff = women <<
      \new Voice = "sopranos" { \voiceOne << \global \sopMusic>> }
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

