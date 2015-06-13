\version "2.14.2"

\header {
  title = "God Rest You Merry, Gentlemen"
  poet = "Traditional"
  composer = "Traditional"
  arranger = "Arranged by Sir John Stainer (1840–1901)"
  %source = \markup { from \italic {Christmas Carols, New and Old}}
}

global = {
    \key g \major
    \time 2/2
    \tempo 4 = 120
}

sopMusic = \relative c' {
    \partial 4
  \repeat volta 2 {
    e4 |
    e b' b a |
    \slurDotted g( fis) e d |
    \slurSolid e fis g a |
    b2.  e,4 |
    
    e b' b a |
    \slurDotted g( fis) e d |
    \slurSolid
    e fis g a |
    b2 b4\rest  b |
    
    c a b c |
    \slurDotted d( e) b a |
    \slurSolid
    g e fis g |
    a2 
    
    g4( a) |
    b2 c4 b |
    b( a) g fis |
    e2 g8\noBeam fis e4 |
    a2 g4( a) |
    b( c) d e |
    b( a) g fis |
    e2. 
  }
}
  

altoMusic = \relative c' {
  e4 |
  e g fis dis |
  \slurDotted e( d?) c b |
  \slurSolid e dis e e |
  dis2. e4 |
  
  e g fis dis |
  \slurDotted e( d?) c b |
  \slurSolid
  e dis e e |
  dis2 s4 e |
  
  e d d g |
  \slurDotted f( e) d dis |
  \slurSolid
  e cis d g |
  fis2 
  
  g4( d) |
  d2 e4 d |
  g( fis) e dis |
  e2 b8\noBeam b cis4 |
  d2 e4( fis) |
  g2 g4 g |
  g( fis) e dis |
  e2.
}

altoWords = \lyricmode {
    \set stanza = #"1. "
    God rest you mer -- ry, \set ignoreMelismata = ##t
    gen -- tle -- men,
    \unset ignoreMelismata
    Let noth -- ing you dis -- may,
    Re -- mem -- ber Christ our Sav -- ior Was born on Christ -- mas Day,
    To save us all from
    \set ignoreMelismata = ##t
    Sa -- tan’s 
    \unset ignoreMelismata
    pow’r When we were gone a -- stray;
  \set stanza = \markup\dynamic"ff  "
    O __ ti -- dings of com -- fort and joy, com -- fort and joy, O __ ti -- dings of com -- fort and joy. 
}

altoWordsII = \lyricmode { 
  \set stanza = \markup{\dynamic"  mf " "2. "}
    In Beth -- le -- hem in Jew -- ry, This bless -- ed Babe was born,
    And laid with -- in a man -- ger, Up -- on this bless -- ed Morn;
    The which His Moth -- er Ma -- ry, Did noth -- ing take in scorn. 
}

altoWordsIII = \lyricmode { 
  \set stanza = #"3. "
  From God our Heav’n -- ly Fa -- ther, A bless -- ed An -- gel came;
  And un -- to cer -- tain Shep -- herds Brought ti -- dings of the same:
  \set ignoreMelismata = ##t
  How that in Beth -- le -- hem was born The Son of God by Name. 
  \unset ignoreMelismata 
}

altoWordsIV = \lyricmode { 
  \set stanza = #"4. "
  “Fear not then,” said the An -- gel, “Let noth -- ing you af -- fright,
  This day is born a Sav -- ior Of a pure Vir -- gin bright,
  \set ignoreMelismata = ##t
  To free all those who trust in Him From Sa -- tan’s pow’r and might.”
  \unset ignoreMelismata
  \set stanza = \markup\dynamic"ff  "
    O __ ti -- dings of com -- fort and joy,
    com -- fort and joy,
    O __ ti -- dings of com -- fort and joy.
}

altoWordsV = \lyricmode { 
    \set stanza = #"5. "
    The shep -- herds at those ti -- dings Re -- joic -- ed much in mind,
    And left their flocks a -- feed -- ing, In tem -- pest, storm, and wind:
    \set ignoreMelismata = ##t
    And went to Beth -- le -- hem straight way, The Son of God to find.
}

altoWordsVI = \lyricmode { 
  \set stanza = #"6. "
  And when they came to \set ignoreMelismata = ##t
  Beth -- le -- hem
  \unset ignoreMelismata
  Where our dear Sav -- ior lay,
  They found Him in a man -- ger, Where ox -- en feed on hay;
  \set ignoreMelismata = ##t
  His Moth -- er Ma -- ry kneel -- ing down, Un -- to the Lord did pray.
}

altoWordsVII = \lyricmode { 
  \set stanza = #"7. "
  Now to the Lord sing prais -- es,
  All you with -- in this place,
  And with true love and \set ignoreMelismata = ##t
  bro -- ther -- hood
  \unset ignoreMelismata
  Each oth -- er now em -- brace;
  This ho -- ly tide of Christ -- mas
  All oth -- er doth de -- face.
}

tenorMusic = \relative c {
  e4 |
  g e fis b |
  \slurDotted b( b) g g |
  \slurSolid
  g b b e, |
  fis2. e4 |
  
  g e fis b |
  \slurDotted b( b) g g |
  \slurSolid
  g b b e, |
  fis2 s4 g |
  
  a a g g |
  \slurDotted g( g) g fis |
  \slurSolid
  g g a d |
  d( c) 
  
  b( a) |
  g2 g4 g |
  d'( c) b b |
  g2 g8\noBeam g g4 |
  fis( a) d( c) |
  b( g) d' c |
  d( c) b b |
  g2.
}


bassMusic = \relative c {
  e4 |
  e e dis b |
  \slurDotted e( b) c g |
  \slurSolid
  c b e c |
  b2. e4 |
  
  e e dis b |
  \slurDotted e( b) c g |
  \slurSolid
  c b e c |
  b2 d4\rest e |
  
  a fis g e |
  \slurDotted b( c) g b |
  \slurSolid
  e e d b |
  d2 
  
  e4( fis) |
  g2 c,4 g' |
  g,( a) b b |
  e2 e8\noBeam e e4 |
  d( c) b( a) |
  g( e') b c |
  g( a) b b |
  e2.
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
    \new Lyrics = "altosIV"   \lyricsto "altos" \altoWordsIV
    \new Lyrics = "altosV"   \lyricsto "altos" \altoWordsV
    \new Lyrics = "altosVI"   \lyricsto "altos" \altoWordsVI
    \new Lyrics = "altosVII"   \lyricsto "altos" \altoWordsVII
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \repeat unfold 2 \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \repeat unfold 2 \bassMusic >> }
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

