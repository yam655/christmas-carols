\version "2.14.2"

\header { 
    title = "Lo, How a Rose E’er Blooming"
    poet = "15th Century German"
    translator = "Translated by Theodore Baker (1851–1934)"
    composer = "Arranged by Michael Praetorius (1571–1621)"
    source = \markup { "from" {\italic {Christmas Carols and Hymns for School and Choir}, 1910}}
  }

global = {
    \key g \major
    \time 4/4
    \tempo 4 = 100
}

sopMusic = \relative c'' {
  d2 d4 d |
  e d d2 |
  b c |
  b4 a2 g4( |
  
  g) fis g2 |
  d' d4 d |
  e d d2 |
  b c |
  
  b4 a2 g4( |
  g) fis g2 |
  b4\rest b4 a fis |
  g e d2 |
  
  b'4\rest d4 d d |
  e d d2 |
  b c |
  b4 a2 g4( |
  g) fis g2 \bar "|."
}

altoMusic = \relative c'' {
  b2 b4 g |
  g g fis2 |
  e e |
  d4 d e4.( b8 |
  
  d4) d4 d2 |
  b'2 b4 g |
  g g fis2 |
  e e |
  
  d4 d e4.( b8 |
  d4) d d2 |
  s4 g e d |
  d cis d2 |
  
  s4 fis a g |
  g g fis2 |
  e e |
  g4 e fis2( |
  d4) d d2 \bar "|."
}

altoWords = \lyricmode { 
  \set stanza = #"1. "
  Lo, how a Rose e’er bloom -- ing
  From ten -- der stem __ has sprung!
  Of Jes -- se’s lin -- eage com -- ing
  As men of old __ have sung.
  It came, a flow’r -- et bright,
  A -- mid the cold of win -- ter
  When half -- spent was __ the night.
}

altoWordsII = \lyricmode { 
    \set stanza = #"2. "
    I -- sa -- iah ’twas fore -- told it,
    The Rose I had __ in mind;
    With Ma -- ry we be -- hold it,
    The Vir -- gin Moth -- er kind.
    To show God’s love a -- right
    She bore to men a Sav -- ior,
    When half -- spent was __ the night.
}

altoWordsIII = \lyricmode { 
  \set stanza = #"3. "
  O Flow’r, whose fra -- grance ten -- der
  With sweet -- ness fills __ the air,
  Dis -- pel with glo -- rious splen -- dor
  The dark -- ness ev -- ’ry -- where;
  True man, yet ve -- ry God,
  From Sin and death now save us,
  And share our ev -- ’ry load.
}

tenorMusic = \relative c' {
  d2 d4 b |
  c b a2 |
  g g |
  b4 d c( b~ |
  
  b) a b2 |
  d d4 b |
  c b a2 |
  g g |
  
  b4 d c( b~ |
  b) a b2 |
  s4 d4 c b |
  b a fis8[( g] a4) |
  
  s4 a4 a b |
  c b a2 |
  gis a |
  d4 c b2( |
  b4) a b2 \bar "|."
}


bassMusic = \relative c {
  g'2 g4 g |
  c g d2 |
  e c |
  g'4 fis e2 |
  
  d2 g |
  g g4 g |
  c g d2 |
  e c |
  
  g'4 fis e2 |
  d g, |
  d'4\rest g a b |
  g a d,8[( e] fis4) |
  
  d4\rest d fis g |
  c, g' d2 |
  e a, |
  b4 c d2 |
  d g \bar "|."
}
bassWords = \lyricmode {
  \repeat unfold 11 { \skip 1 }
  has sprung!
  \repeat unfold 11 { \skip 1 }
  have sung.
  \repeat unfold 17 { \skip 1 }
  the night.
}
bassWordsII = \lyricmode {
  \repeat unfold 11 { \skip 1 }
  in mind;
  \repeat unfold 11 { \skip 1 }
  -er kind.
  \repeat unfold 17 { \skip 1 }
  the night.
}
bassWordsIII = \lyricmode {
  \repeat unfold 11 { \skip 1 }
  the air,
  \repeat unfold 11 { \skip 1 }
  ’ry -- where;
  \repeat unfold 17 { \skip 1 }
  ’ry load.
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
    \new Lyrics = "altosIII"   \lyricsto "altos" \altoWordsIII
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
    >>

    \new Lyrics  \lyricsto "basses" \bassWords
    \new Lyrics  \lyricsto "basses" \bassWordsII
    \new Lyrics  \lyricsto "basses" \bassWordsIII
  >>
  >>
  \layout { }
  
  \midi {
    \set Staff.midiInstrument = "flute"
  
    %\context { \Voice \remove "Dynamic_performer" }
  }
}
}

