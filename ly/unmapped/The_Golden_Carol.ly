\version "2.14.2"

songTitle = "The Golden Carol"
songSubtitle = "of Melchior, Casper and Balthazar"
songPoet = "Traditional"
tuneComposer = "English"
tuneArranger = "Arranged by Sir John Stainer (1840–1901)"
tuneSource = \markup{from \italic{Carols Old and Carols New}, 1916} % via \italic{HymnsAndCarolsOfChristmas.com}}

global = {
    \key f \major
    \time 6/8
    \tempo 4 = 105
}

sopMusic = \relative c'' {
  \partial 8 a8 |
  d4 e8 f4 cis8 |
  d4 d8 a4 bes8 |
  a4 g8 f4 e8 |
  
  d4. d8 bes'\rest  a |
  d4 e8 f4 cis8 |
  d4 d8 a4 bes8 |
  
  a4 g8 f4 e8 |
  d4. d8 bes'\rest  f |
  e4 f8 g4 a8 |
  
  f4 f8 e4 f8 |
  d4 e8 f4 g8 |
  a4. a8 bes\rest  gis |
  
  a4 b8 cis4 a8 |
  d4 d8 cis4 f8 |
  e4 d8 cis4 e8 |
  d4. d4 \bar "|."
}
  

altoMusic = \relative c' {
  f8 |
  a4 a8 a4 g8 |
  f4 g8 a4 g8 |
  a4 d,8 d4 cis8 |
  
  d4. d8 s8 f |
  a4 a8 a4 g8 |
  f4 g8 a4 g8 |
  
  a4 d,8 d4 cis8 |
  d4. d8 s d |
  d4 d8 d4 cis8 |
  
  d4 d8 cis4 cis8 |
  d4 d8 d4 d8 |
  e4. e8 s e |
  
  e4 e8 a4 a8 |
  a4 a8 a4 a8 |
  g4 g8 a4 g8 |
  f4. f4 \bar "|."
}

altoWords = \lyricmode { 
  \set stanza = #"1. "
  We saw a light shine out a -- far, On Christ -- mas in the morn -- ing,
  And straight we knew it was Christ’s star, Bright beam -- ing in the morn -- ing.
  Then did we fall on bend -- ed knee, On Christ -- mas in the morn -- ing,
  And prais’d the Lord, who’d let us see, His glo -- ry at its dawn -- ing.
}

altoWordsII = \lyricmode { 
  \set stanza = #"2. "
  Oh! ev -- er thought be of His Name, On Christ -- mas in the morn -- ing,
  Who bore for us both grief and shame, Af -- flic -- tion’s sharp -- est scorn -- ing.
  And may we die "(when" death shall come,) On Christ -- mas in the morn -- ing,
  And see in heav’n, our glo -- rious home, That Star of Christ -- mas morn -- ing.
}

tenorMusic = \relative c' {
  d8 |
  d4 cis8 d4 e8 |
  d4 d8 d4 d8 |
  d4 bes8 a4 g8 |
  
  f4. f8 s8 d' |
  d4 cis8 d4 e8 |
  d4 d8 d4 d8 |
  
  d4 bes8 a4 g8 |
  f4. f8 s a |
  bes4 a8 bes4 a8 |
  
  a4 a8 a4 g8 |
  f4 e8 d4 d'8 |
  d4. cis8 s b |
  
  cis4 d8 e4 cis8 |
  d4 f8 e4 d8 |
  bes4 d8 e4 cis8 |
  d4. d4 \bar "|."
}


bassMusic = \relative c {
  d8 |
  f4 a8 d,4 a'8 |
  bes4 bes8 f4 g8 |
  f4 g8 a4 a,8 |
  
  d4. d8 d\rest d |
  f4 a8 d,4 a'8 |
  bes4 bes8 f4 g8 |
  
  f4 g8 a4 a,8 |
  d4. d8 d\rest d |
  g4 f8 e4 a,8 |
  
  d4 d8 a4 a8 |
  bes4 bes8 bes4 bes8 |
  a4. a8 d\rest e |
  
  a4 a8 a4 g8 |
  f4 d8 a'4 d,8 |
  g4 bes8 a4 a,8 |
  d4. d4 \bar "|."
}


\bookpart { 
\header {
  title = \songTitle
  subtitle = \songSubtitle
  poet = \songPoet
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
    \new Lyrics = "altos"   \lyricsto "sopranos" \altoWords
    \new Lyrics = "altosII"   \lyricsto "sopranos" \altoWordsII
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

