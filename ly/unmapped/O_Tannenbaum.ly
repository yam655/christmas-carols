\version "2.14.2"

\header {
  title = "O Tannenbaum"
  poet = "Traditional"
  composer = "German Folk Song"
  source = ""
}

global = {
  \key g \major
  \time 3/4
  \tempo "Moderately" 4 = 90
}

sopMusic = \relative c' {
    \partial 8
    \repeat volta 2 {
        d8_\mp |
        g8.\noBeam g16 g4 a |
        b8.\noBeam b16 b4. b8 |
        a8\noBeam b c4 fis, | 
  
        a g b8\rest 
    }
  d8_\mf |
  d\noBeam b e4. d8 |
  d\noBeam c c4. c8 | 
  
  c8\noBeam a d4. c8 |
  c\noBeam b b4 d, |
  g8.\noBeam_\mp g16 g4 a | 
  
  b8.\noBeam b16 b4. b8 |
  a\noBeam b c4 fis, |
  a4 g b8\rest \bar "|."
}
  
altoMusic = \relative c' {
  d8 |
  d8.\noBeam d16 d4 fis |
  g8.\noBeam g16 g4. g8 |
  fis8\noBeam g fis4 d |
  
  d d s8 
  g8 |
  g\noBeam g g4. g8 |
  fis8\noBeam fis fis4. fis8 |
  
  fis\noBeam fis fis4. fis8 |
  g\noBeam g g4 d |
  d8.\noBeam d16 d4 fis |
  
  g8.\noBeam g16 g4. g8 |
  e\noBeam g g4 fis |
  fis g s8 \bar "|."
}

altoWords = \lyricmode {  
  \set stanza = #"1. "
  O Tan -- nen -- baum, o Tan -- nen -- baum,
  Wie treu sind dei -- ne Blät -- ter!
  Du grünst nicht nur zur Som -- mer -- zeit,
  Nein, auch im Win -- ter, wenn es schneit.
  O Tan -- nen -- baum, o Tan -- nen -- baum,
  Wie treu sind dei -- ne Blät -- ter!
}

altoWordsII = \lyricmode { 
  \set stanza = #"2. "
  O Tan -- nen -- baum, o Tan -- nen -- baum,
  Du kannst mir sehr ge -- fal -- len!
  Wie oft hat schon zur Win -- ter -- zeit
  Ein Baum von dir mich hoch er -- freut!
  O Tan -- nen -- baum, o Tan -- nen -- baum,
  Du kannst mir sehr ge -- fal -- len!
}

altoWordsIII = \lyricmode { 
  \set stanza = #"3. "
  O Tan -- nen -- baum, o Tan -- nen -- baum,
  Dein Kleid will mich was lehr -- en:
  Die Hoff -- nung und Be -- ständ -- ig -- keit
  Gibt Mut und Kraft zu je -- der Zeit!
  O Tan -- nen -- baum, o Tan -- nen -- baum,
  Dein Kleid will mich was lehr -- en!
}


tenorMusic = \relative c' {
  d8^\mp |
  b8.\noBeam b16 b4 d |
  d8.\noBeam d16 d4. d8 |
  d\noBeam d d4 a |
  
  c b s8 
  b8^\mf |
  b\noBeam d c4. b8 |
  b\noBeam a a4. a8 |
  
  a\noBeam a a4. d8 |
  d\noBeam d d4 b |
  b8.\noBeam^\mp b16 b4 d |
  
  d8.\noBeam d16 d4. d8 |
  c\noBeam d e4 c |
  c b s8 \bar "|."
}

bassMusic = \relative c {
  d8 |
  g8.\noBeam g16 g4 d |
  g8. g16 g4. g8 |
  c8\noBeam b8\noBeam a4 d, |
  
  d g d8\rest 
  g |
  g\noBeam g g4. g8 |
  d\noBeam d d4. d8 |
  
  d\noBeam d d4. d8 |
  g\noBeam g g4 g |
  g8.\noBeam g16 g4 d |
  
  g8.\noBeam g16 g4. g8 |
  c,\noBeam b a4 d |
  d g d8\rest \bar "|."
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

