\version "2.14.2"

\header {
  title = "The Seven Joys of Mary"
  poet = "Traditional"
  composer = "Old English"
  arranger = "Arranged by Sir John Stainer (1840–1901)"
  %source = \markup { "from" \italic {Christmas Carols, New and Old}}
}

global = {
    \key g \major
    \time 6/8
    \autoBeamOff
    \tempo 4 = 120
}

sopMusic = \relative c' {
  \partial 8 d8^\mf |
  g4 g8 g4 a8 |
  b4 a8 g4 g8 |
  a4 a8 fis4 fis8 | 
  
  g4.~ g4 d8 |
  g4 g8 g4 a8 |
  b4 a8 g4 
  g8 |
  
  \slurDotted a8( a) a8 fis8[ e] fis |
  g4.~ g4 
  g8^\f |
  a8( a) a8 a4 a8 |
  a4 
  
  \slurSolid
  b8 c[ b] a |
  b4 b8 b4 a8 |
  b4( c8 d4\fermata) d16[^\ff c] |
  
  b4 a8 g4 c8 |
  b4 a8 g4 g8 |
  a4 a8 fis8[ e] fis |
  g4. b4\rest \bar "|."
}
  

altoMusic = \relative c' {
  d8 |
  d4 d8 e4 d8 |
  d4 fis8 g4 g8 |
  e4 e8 d4 d8 |
  
  d4.~ d4 d8 |
  d4 d8 e4 d8 |
  d4 fis8 g4 g8 |
  
  \slurDotted
  e8( e) e8 d4 d8 |
  d4.~ d4 
  e8 |
  d8( d) d8 d4 cis8 |
  d4 
  
  \slurSolid
  d8 e4 fis8 |
  g4 g8 g4 fis8 |
  g4.( fis4) d8 |
  
  d4 dis8 e4 g8 |
  g4 fis8 e4 e8 |
  e4 e8 d4 d8 |
  d4. s4 \bar "|."
}

altoWords = \lyricmode { 
  \set stanza = #"1. "
  The first good joy that Ma -- ry had, It was the joy of
  \set stanza = #"1. "
  one; __
  To see the bless -- ed Je -- sus Christ,
  \set stanza = #"1. "
  When He __ was first her Son. __
  When He __ was first her Son,
  
  Good Lord; And hap -- py may we be; __
  Praise Fa -- ther, Son, and Ho -- ly Ghost To all e -- ter -- ni -- ty.
}
altoWordsII = \lyricmode {
  
  \set stanza = #"2–7. "
  The next good joy that Ma -- ry had, It was the joy of
  \set stanza = #"2. "
  two; __
  To see her own Son Je -- sus Christ,
  \set stanza = #"2. "
  \set ignoreMelismata = ##t
  "" Mak -- ing the lame _ to go. __ _
  "" Mak -- ing the lame to go,
}
altoWordsIII = \lyricmode {
  
  \repeat unfold 13 { \skip 1}
  \set stanza = #"3. "
  three; __ To see her own Son Je -- sus Christ,
  \set stanza = #"3. "
  \set ignoreMelismata = ##t
  "" Mak -- ing the blind _ to see. __ _
  "" Mak -- ing the blind to see,
}
altoWordsIV = \lyricmode {
  
  \repeat unfold 13 { \skip 1}
  \set stanza = #"4–7. " "four, five, etc.;" To see her own Son Je -- sus Christ,
  \set stanza = #"4. "
  \set ignoreMelismata = ##t
  "" Read -- ing the Bi -- _ ble o’er. __ _
  "" Read -- ing the Bi -- ble o’er,
}
altoWordsV = \lyricmode {
  
  \repeat unfold 22 { \skip 1}
  \set stanza = #"5. "
  \set ignoreMelismata = ##t
  "" Rais -- ing the dead _ to life. __ _
  "" Rais -- ing the dead to life,
}
altoWordsVI = \lyricmode {
  
  \repeat unfold 22 { \skip 1}
  \set stanza = #"6. "
  Up -- on __ the Cru -- ci -- fix. __
  Up -- on __ the Cru -- ci -- fix,
}
altoWordsVII = \lyricmode {
  
  \repeat unfold 22 { \skip 1}
  \set stanza = #"7. "
  A -- scend -- ing in -- to heav’n. __
  A -- scend -- ing in -- to heav’n,
}
tenorMusic = \relative c' {
  d8_\mf |
  b4 b8 b4 a8 |
  g4 c8 b4 b8 |
  c4 c8 a4 a8 |
  
  b4.~ b4 d8 |
  b4 b8 b4 a8 |
  g4 c8 b4 b8 |
  
  \slurDotted
  c8( c) c8 a4 a8 |
  b4.~ b4 
  b8_\f |
  a8( a) a8 a4 g8 |
  fis4 
  
  \slurSolid
  g8 g4 d'8 |
  d4 d8 d4 d8 |
  d4( g,8 a4) a8_\ff |
  
  g4 a8 b4 e8 |
  d4 c8 b4 b8 |
  c4 c8 a4 a8 |
  b4. s4 \bar "|."
}


bassMusic = \relative c {
  d8 |
  g4 g8 e4 fis8 |
  g4 d8 e4 e8 |
  c4 c8 d4 d8 |
  
  g4.~ g4 d8 |
  g4 g8 e4 fis8 |
  g4 d8 e4 e8 |
  
  \slurDotted
  c8( c) c8 d4 d8 |
  g4.~ g4 
  e8 |
  fis8( fis) fis8 fis4 e8 |
  d4 
  
  \slurSolid
  g8 c,4 d8 |
  g4 g8 g4 d8 |
  g4( e8 d4\fermata) fis8 |
  
  g4 fis8 e4 c8 |
  d4 d8 e4 e8 |
  c4 c8 d4 d8 |
  g4. d4\rest \bar "|."
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

