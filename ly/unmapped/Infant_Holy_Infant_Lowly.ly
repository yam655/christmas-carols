\version "2.14.2"

tuneTitle = "W Żłobie Leży"
tuneComposer = "Traditional Polish Carol"
tuneArranger = "arr. by Edith M. G. Reed (1885–1933)"
tuneSource = \markup {from \italic {CyberHymnal.org}}
songTitle = "Infant Holy, Infant Lowly"
songSubtitle = \markup{(\tuneTitle)}
songPoet = "Traditional Polish Carol"
songTranslator = "tr. by Edith M. G. Reed (1885–1933)"

global = {
    \key g \major
    \time 3/4
    \autoBeamOff
    \tempo 4 = 95
}

sopMusic = \relative c' {
    \partial 4
\repeat unfold 2 {
  d8 d |
  g4 g fis8 g |
  a4 a b8 c |
  d4 c b8  a |
  g2 
}

g8 fis |
e4 e a8 g |
fis4 fis b8 a |
g4 g 

c8 b |
a4 a b8 c |
d4 c b8 a |
g2 \bar "|."
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
\repeat unfold 2 {
  d8 d |
  d4 d d8 e |
  fis4 fis g8 g |
  g4 g fis8 fis |
  d2 
}

  d8 d |
  c4 c c8 c |
  d4 d d8 d |
  e4 e 

  e8 e |
  fis4 fis e8 e |
  g4 g fis8 fis |
  d2 \bar "|."
}
altoWords = \lyricmode {
  
  \set stanza = #"1. "
  In -- fant ho -- ly, in -- fant low -- ly
  For His bed a cat -- tle stall;
  Ox -- en low -- ing, lit -- tle know -- ing,
  Christ the Babe, is Lord of all.
  Swift are wing -- ing an -- gels sing -- ing,
  No -- ëls ring -- ing,
  tid -- ings bring -- ing:
  Christ the Babe is Lord of all.
}
altoWordsII = \lyricmode {
  
%\markup\italic
  \set stanza = #"2. "
Flocks were sleep -- ing, shep -- herds keep -- ing
Vi -- gil till the morn -- ing new
Saw the glo -- ry, heard the sto -- ry,
Tid -- ings of a gos -- pel true.
Thus re -- joic -- ing, free from sor -- row,
Prais -- es voic -- ing greet the mor -- row:
Christ the Babe was born for all.
}
altoWordsIII = \lyricmode {
  \set stanza = #"3. "
  \set ignoreMelismata = ##t
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
tenorMusic = \relative c {
  \repeat unfold 2{
    d8 d |
    b'4 b d,8 d |
    d'4 d d8 c |
    d4 e d8 c |
    b2 
  }
  g8 g |
  g4 g a8 a |
  a4 a b8 b |
  b4 b a8 a |
  a4 a g8 g8 |
  d'4 e d8 c |
  b2 \bar "|."
}
tenorWords = \lyricmode {

}

bassMusic = \relative c {
\repeat unfold 2 {
  d8 d |
  g4 g d8 d |
  d'4 d g,8 e |
  b4 c d8 d |
  g2 
}

  b,8 b |
  c4 c a8 a |
  d4 d b8 b |
  e4 e 

  a,8 a |
  d4 d e8 c |
  b4 c d8 d |
  g,2 \bar "|."
}
bassWords = \lyricmode {

}

  

\bookpart { 
\header {
  title = \songTitle
  subtitle = \songSubtitle
  poet = \songPoet 
  translator = \songTranslator 
  composer = \tuneComposer 
  arranger = \tuneArranger
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

