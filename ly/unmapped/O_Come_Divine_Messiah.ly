\version "2.14.2"


\header {
    title = "O Come, Divine Messiah"
    poet = "Abbé Simon J. Pellegrin (1663–1745)"
    translator = "Translated by Sister Mary of St. Philip, SND (1825–1904)"
    composer = "16th Century French Carol"
    section = "Advent"
}

global = {
    \key g \major
    \time 6/8
    \autoBeamOff
    \tempo 4 = 105
}

sopMusic = \relative c' {
  \partial 8 d8 |
  g4 a8 b4 b8 |
  c4. b4 a8 |
  g4 fis8 e4 a8 |
  g[ fis] e d4 d8 |
  g4 a8 b4 b8 |
  
  c4. b4 d8 |
  b4 b8 a[ g] a |
  g4.~ g4 b8\rest | 
  a4. g4 fis8 |
  g4.~ g4. |
  a4. g4 fis8 |
  
  g4 g8 c4 b8 |
  a4 d8 c4 b8 |
  a4 d8 c4 b8 |
  a4 g8 fis4 g8 |
  a4.~ a4 d,8 |
  g4 a8 b4 b8 |
  
  c4. b4 a8 |
  g4 fis8 e4 a8 |
  g[ fis] e d4 d8 |
  d'4 d8 b4 g8 |
  
  c4. b4 d8 |
  b4 b8 a[ g] a |
  g2.^\fermata \bar "|."
}


altoMusic = \relative c' {
  d8 |
  b4 c8 d4 d8 |
  e4. d4 d8 |
  d4 d8 c4 e8 |
  d4 cis8 d4 d8 |
  d4 c8 d4 d8 |
  
  e4. e4 d8 |
  d4 d8 d4 d8 |
  c( a4 b4) s8 |
  e4. d4 a8 |
  b4.~ b4. |
  e4. d4 a8 |
  
  e'4 e8 e[ fis] g |
  fis[ e] fis e4 g8 |
  fis4 fis8 g4 g8 |
  e4 e8 e4 e8 |
  d4.~ d4 d8 |
  b4 c8 d4 d8 |
  
  e4. d4 d8 |
  d4 d8 c4 e8 |
  d4 cis8 d4 d8 |
  d[ e] fis g4 d8 |
  
  e4( fis8) g4 fis8 |
  d4 d8 d4 c8 |
  d8( c4 b4.)\fermata \bar "|."
}
altoWords = \lyricmode {
  
  \set stanza = #"1. "
  O come, di -- vine Mes -- si -- ah!
  The world in si -- lence waits the day
  When hope shall sing its tri -- umph,
  And sad -- ness flee a -- way. __
  
  
  Dear Sav -- ior haste;
  Come, come to earth,
  Dis -- pel the night and show Your face,
  And bid us hail the dawn of grace.

  O come, di -- vine Mes -- si -- ah!
  The world in si -- lence
  
  
  waits the day
  When hope shall sing its tri -- umph,
  And sad -- ness flee a -- way. __
}
altoWordsII = \lyricmode {
  
%\markup\italic
  \set stanza = #"2. "
  O Christ, whom na -- tions sigh for,
  Whom priest and pro -- phet long fore -- told,
  Come break the cap -- tive fet -- ters;
  Re -- deem the long -- lost fold. __
}
altoWordsIII = \lyricmode {
  
  \set stanza = #"3. "
  You come in peace and meek -- ness,
  And low -- ly will Your cra -- dle be;
  All clothed in hu -- man weak -- ness
  Shall we Your God -- head see. __
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
  d8 |
  d4 g8 b4 b8 |
  g4. g4 fis8 |
  b4 b8 c[ b] a |
  a4 g8 fis[ g] a |
  b4 g8 b4 b8 |
  
  g4. g4 a8 |
  b4 g8 fis4 fis8 |
  g4.~ g4 s8 |
  a4. a4 d8 |
  d4.~ d4. |
  a8[ b c] b4 d8 |
  
  b4 b8 c4 b8 |
  d4 a8 c4 b8 |
  d4 d8 e4 d8 |
  c4 c8 a4 a8 |
  fis4.~ fis4 d8 |
  d4 g8 b4 b8 |
  
  g4. g4 fis8 |
  b4 b8 c[ b] a |
  a4 g8 fis[ g] a |
  fis[ g] a d4 b8 |
  
  g4( fis8) e4 a8 |
  g4 g8 fis[ g] fis |
  b([ a8 fis] g4.)^\fermata \bar "|."
}

bassMusic = \relative c {
  d8 |
  g,4 g8 g4 g8 |
  c4. g4 a8 |
  b4 b8 c4 cis8 |
  d4 a8 d[ e] fis |
  g4 g8 g4 g,8 |
  
  c4( d8) e4 fis8 |
  g4 b,8 d4 d8 |
  g,4.~ g4 d'8\rest |
  c4( a8) d4 d8 |
  g,4.~ g4. |
  c8[ b a] b4 d8 |
  
  e4 e8 c[ d] e |
  d[ e] d c[ d] e |
  d[ c] b a4 b8 |
  c4 c8 cis4 cis8 |
  d4.~ d4 d8 |
  g,4 g8 g4 g8 |
  
  c4. g4 a8 |
  b4 b8 c4 cis8 |
  d4 a8 d4 fis8 |
  b,4 b8 g4 g'8 |
  
  c,4. e4 d8 |
  g,8[ a] b d8[ e] d |
  g,2._\fermata \bar "|."
}


\bookpart {
\score {
  <<
   \new ChoirStaff <<
    \new Staff = women <<
      \new Voice = "sopranos" { \voiceOne << \global \sopMusic >> }
      \new Voice = "altos" { \voiceTwo << \global \altoMusic >> }
    >>
    \new Lyrics = "altos"   \lyricsto "altos" \altoWords
    \new Lyrics = "altosII"   \lyricsto "altos" \altoWordsII
    \new Lyrics = "altosIII"  \lyricsto "altos" \altoWordsIII
    \new Lyrics = "altosIV"  \lyricsto "altos" \altoWordsIV
    \new Lyrics = "altosV"   \lyricsto "altos" \altoWordsV
    \new Lyrics = "altosVI"   \lyricsto "altos" \altoWordsVI
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
    >>
  >>
  >>
  \layout { }
  \midi {
    \set Staff.midiInstrument = "flute"
  
    %\context { \Voice \remove "Dynamic_performer" }
  }
}
}

