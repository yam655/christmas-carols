\version "2.14.2"

\header {
  title = "The Wassail Song"
  poet = "17th Century English"
  composer = "17th Century English"
  %source = \markup { from \italic {Christmas Carols, New and Old}}
}

global = {
    \key e \major
    \time 6/8
    \tempo 4 = 180
}


sopMusic = \relative c' {
  \time 6/8
  \partial 8 e8 |
  e4 fis8 gis4 fis8 |
  \slurDotted e4( fis8) gis4 fis8 |
  e4 b'8 b4 b8 |
  
  \slurSolid b4.( b4) 
  b8 |
  cis4 cis8 b4 gis8 |
  b4.( a4) gis8 |
  \slurDotted fis4( e8) fis4 gis8 |
  a4. 
  
  \time 2/2
  \set Timing.measurePosition = #(ly:make-moment 1/2)
  gis4 a |
  b2 e4 cis |
  b2 gis4 a |
  b b e cis |
  b2 gis4 a |
  b2 cis4 gis |
  
  \slurSolid a( fis) e dis |
  e4.( fis8) gis4 e |
  a2 gis4 a |
  b2 cis4 gis |
  a fis e( dis) |
  e2 \bar ":|" 

}
  

altoMusic = \relative c' {
  \time 6/8
  e8 |
  e4 e8 dis4 dis8 |
  \slurDotted e4( e8) dis4 dis8 |
  e4 e8 a4 gis8 |
  
  fis4.~ fis4 fis8 |
  a4 e8 e4 e8 |
  \slurSolid fis4.( dis4) e8 |
  \slurDotted cis4( e8) dis4 e8 |
  dis4. 
  

  \time 2/2
  \set Timing.measurePosition = #(ly:make-moment 1/2)
  e4 dis |
  e2 e4 fis |
  gis2 e4 dis |
  e dis gis e |
  dis2 gis4 fis |
  fis2 eis4 eis |
  
  \slurSolid fis( cis) b b |
  b4.( dis8) e4 e |
  cis( dis) e e |
  fis2 cis4 cis |
  cis cis b2 |
  b2 \bar ":|" 
}

altoWords = \lyricmode {
    \set stanza = #"1. "
    \set ignoreMelismata = ##t
    _ Here we come a -- was -- sail -- ing A -- mong the leaves so green, _ _
    Here we come a -- wan -- d’ring, So fair __ _ to be seen. 
    \unset ignoreMelismata 
}

altoWordsII = \lyricmode {
    \set stanza = \markup{\dynamic"mf  " "2. "}
    \set ignoreMelismata = ##t
    We are not dai -- ly beg -- _ gars That beg from door to door, _
    But we are neigh -- bors’ chil -- dren Whom you have seen be -- fore.
    \unset ignoreMelismata
    \set stanza = \markup\dynamic"f "

    \set associatedVoice = "altos"
    Love and joy come to you, And to
    
    you your was -- sail too,
    And God bless you, and send you a hap -- py new
    year,
    \unset associatedVoice
    And God 
    send you a hap -- py new year. 
}

altoWordsIII = \lyricmode { 
  \set stanza = #"3. "
  \set ignoreMelismata = ##t
  Good Mas -- ter and good Mis -- _ tress, As you sit by the fire, __ _
  Pray think of us poor chil -- dren Who wan -- der in the mire. 
}

altoWordsIV = \lyricmode { 
    \set stanza = #"4. "
    \set ignoreMelismata = ##t
    We have a lit -- tle purse __ _ Made of ratch -- ing leath -- er skin; _
    We want some of your small _ change To line it well with -- in. 
}

altoWordsV = \lyricmode { 
    \set stanza = #"5. "
    \set ignoreMelismata = ##t
    Call up the but -- ler of this house, Put on his gol -- den ring; _
    Let him bring us a glass of beer, The bet -- ter we shall sing. 
}
altoWordsVI = \lyricmode { 
  \set stanza = #"6. "
  \set ignoreMelismata = ##t
  \skip1 Bring us out a ta -- _ ble And spread it with a cloth; _ _
  Bring us out a cheese, __ _ _ And of your Christ -- mas loaf.
}
altoWordsVII = \lyricmode { 
  \set stanza = #"7. "
  \set ignoreMelismata = ##t
  God bless the mas -- ter of this house, Like -- wise the mis -- tress too; __ _
  And all the lit -- tle chil -- _ dren That round the ta -- ble go.
}
tenorMusic = \relative c' {
  \time 6/8
  gis8 |
  gis4 a8 b4 a8 |
  \slurDotted gis4( a8) b4 a8 |
  gis4 b8 dis4 e8 |
  
  dis4.~ dis4 dis8 |
  e4 a,8 b4 b8 |
  b4.~ b4 b8 |
  cis4( b8) a4 gis8 |
  fis4. \bar "||"
  
  \time 2/2
  \set Timing.measurePosition = #(ly:make-moment 1/2)
  b4 b |
  b2 cis4 dis |
  e2 b4 b |
  b b b ais |
  b2 b4 cis |
  b2 b4 b |
  
  a2 gis4 fis |
  \slurSolid gis4.( a8) b4 cis |
  a2 b4 cis |
  b2 gis4 b |
  a4 a gis( fis) |
  gis2 \bar ":|"
  
}


bassMusic = \relative c {
  \time 6/8
  e8 |
  e4 e8 b4 b8 |
  \slurDotted e4( e8) b4 b8 |
  e4 gis8 fis4 e8 |
  
  b'4.~ b4 b8 |
  a4 a8 gis4 e8 |
  \slurSolid dis4.( fis4) e8 |
  \slurDotted a4( gis8) fis4 e8 |
  b4. 
  
  \time 2/2
  \set Timing.measurePosition = #(ly:make-moment 1/2)
  e4 fis |
  gis2 a4 a |
  e2 e4 fis |
  gis fis e fis |
  b,2 e4 e |
  dis2 cis4 cis |
  
  \slurSolid fis( a,) b b |
  gis'4.( fis8) e4 cis |
  fis2 e4 cis |
  dis2 eis4 eis |
  fis4 a, b2 |
  e2 \bar ":|"
  
}


\bookpart {
\score {
  <<
   \new ChoirStaff <<
    \new Staff = women <<
      \new Voice = "sopranos" { \voiceOne << \global \sopMusic >> }
      \new Voice = "altos" { \voiceTwo << \global \altoMusic >> }
    >>
    \new Lyrics = "altos"   \lyricsto "sopranos" \altoWords
    \new Lyrics = "altosII"   \lyricsto "sopranos" \altoWordsII
    \new Lyrics = "altosIII"   \lyricsto "sopranos" \altoWordsIII
    \new Lyrics = "altosIV"   \lyricsto "sopranos" \altoWordsIV
    \new Lyrics = "altosV"   \lyricsto "sopranos" \altoWordsV
    \new Lyrics = "altosVI"   \lyricsto "sopranos" \altoWordsVI
    \new Lyrics = "altosVII"   \lyricsto "sopranos" \altoWordsVII
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

