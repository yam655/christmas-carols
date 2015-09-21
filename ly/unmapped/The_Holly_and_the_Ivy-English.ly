\version "2.14.2"

songTitle = "The Holly and the Ivy"
songPoet = "17th Century English"
tuneComposer = "English"
tuneSource = \markup \null

global = {
    \key g \major
    \time 3/4
    \autoBeamOff
    \tempo 4 = 120
}

sopMusic = \relative c'' {
  \partial 4 g4 |
  g8 g8 g4 e' |
  d4 b4. g8 |
  g8 g8 g4 e'4 |
  d2  
  
  d8[ c] |
  b8 a g4 b4 |
  e,8 e d4 g8[ a] |
  b c b4 a4 |
  g2 b8\rest 
  
  g8 |
  g g g4 e'4 |
  d( b -) g8 g |
  g g g4 e' |
  d2  d8[ c] |
  
  b8 a g4 b |
  e,8 e d4 g8 a |
  b c b4 a |
  g2\fermata \bar "|."
  
}
  

altoMusic = \relative c' {
  d4 |
  e8 e d4 g |
   g( g4. -) e8 |
  d4 e4 g4 |
   g4( fis -) 
  
  fis8[ a] |
  g8 fis e4  fis4 |
  e8 e d4  e8[ d] |
  d8 g g4  fis4 |
  g2 s8 
  
  d8 |
  e e d4  g |
  g2 e8 e |
  d d e4 g |
  g( fis -) fis8[ a] |
  
  g fis e4 fis |
  e8 e d4 e8 d |
  d g g4 fis |
  g2 \bar "|."
}

altoWords = \lyricmode { 
    \set stanza = #"1."
    The hol -- ly and the i -- vy,
    When they are both full grown,
    Of all the trees that~are in the wood,
    The hol -- ly bears the crown:
  
  \set stanza = \markup\dynamic"f "
    The ris -- ing of the sun __
    And the run -- ning of the deer,
    The play -- ing of the mer -- ry or -- gan,
    Sweet sing -- ing in the choir.
}

altoWordsII = \lyricmode { 
  \set stanza = #"2."
  The hol -- ly bears a blos -- som,
  As white as the lily flow’r,
  And Ma -- ry bore sweet Je -- sus Christ,
  To be our sweet Sav -- ior:
}

altoWordsIII = \lyricmode { 
    \set stanza = \markup{\dynamic"mf " "3."}
    The hol -- ly bears a ber -- ry,
    As red as an -- y blood,
    And Ma -- ry bore sweet Je -- sus Christ,
    To do poor sin -- ners good:
}

altoWordsIV = \lyricmode { 
    \set stanza = #"4."
    The hol -- ly bears a prick -- le,
    As sharp as an -- y thorn,
    And Ma -- ry bore sweet Je -- sus Christ,
    On Christ -- mas day in~the morn:
}

altoWordsV = \lyricmode { 
    \set stanza = #"5."
    The hol -- ly bears a bark, __ _
    As bit -- ter as any gall,
    And Ma -- ry bore sweet Je -- sus Christ,
    For to re -- deem us all:
}

tenorMusic = \relative c' {
  b4 |
  c8 c b4 c |
   b4( d4.) b8 |
  b4 b4 c4 |
  a2 
  
   a8[ d] |
  e8 d e4  d4 |
  c8 c b4  b8[ a] |
  g e' d4  d8( c -) |
  b2 s8 
  
  b8 |
  c c b4 c |
   b( d -) b8 b |
  b b b4 c |
  a2 a8[ d] |
  
  e8 d e4 d |
  c8 c b4 b8 a |
  g e' d4 c |
  b2 \bar "|."
}


bassMusic = \relative c' {
  g4 |
  c,8 e g4 c, |
   g'4( g4. -) e8 |
  g4 e4 c8( e) |
  d2 
  
   d8[ fis] |
  g8 a b4  b4 |
  c8 c, g'4  e8[ fis] |
  g c, g'4  d4 |
  g2 d8\rest 
  
  g8 |
  c, e g4 c,4 |
   g'2 e8 e |
  g g e4 c |
  d2 d8[ fis] |
  
  g a b4 b |
  c8 c, g'4 e8 fis |
  g c, g'4 d |
  g2\fermata \bar "|."
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
    \new Lyrics = "altos"   \lyricsto "sopranos" \altoWords
    \new Lyrics = "altosII"   \lyricsto "sopranos" \altoWordsII
    \new Lyrics = "altosIII"   \lyricsto "sopranos" \altoWordsIII
    \new Lyrics = "altosIV"   \lyricsto "sopranos" \altoWordsIV
    \new Lyrics = "altosV"   \lyricsto "sopranos" \altoWordsV
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
        \context {
            \Staff \remove "Staff_performer"
        }
        \context {
            \Voice \consists "Staff_performer"
        }
    }
}
}

