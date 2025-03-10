﻿\version "2.14.2"

songTitle = "There’s a Song in the Air!"
songPoet = "Josiah G. Holland (1819–1881)"
tuneComposer = "Karl P. Harrington (1861–1953)"
tuneSource = \markup \null % {from \italic {HymnsAndCarolsOfChristmas.com}} 

global = {
    \key g \major
    \time 3/4
    \tempo 4 = 105
}

sopMusic = \relative c' {
  \partial 4 d8.\noBeam e16 |
  d4 g e |
  fis2 d8.\noBeam d16 |
  d4 g b |
  d2  d,8.\noBeam e16 |
  d4 g e | 
  
  fis2 fis8.\noBeam fis16 |
  g4 fis e |
  d2  d'8.\noBeam d16 |
  e4 d b |
  a g e | 
  
  d fis a |
  d2  d8.\noBeam d16 |
  e4 d b |
  a g c\fermata |
  b a d, |
  g2 \bar "|."
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  b8.\noBeam b16 |
  b4 b b |
  c2 c8.\noBeam c16 |
  b4 d g |
  fis2 c8.\noBeam  c16 |
  b4 d d |
  
  d2 d8.\noBeam d16 |
  cis4 cis cis |
  d2 fis8.\noBeam  fis16 |
  g4 g d |
  b b b |
  
  c4 c c |
  c2 fis8.\noBeam fis16 |
  f4 f f |
  e e g |
  fis fis d |
  d2 \bar "|."
}
altoWords = \lyricmode {
  
  \set stanza = #"1. "
  There’s a song in the air!
  There’s a star in the sky!
  There’s a moth -- er’s deep prayer
  And a ba -- by’s low cry!
  And the star rains its fire while the beau -- ti -- ful sing,
  For the man -- ger of Beth -- le -- hem cra -- dles a King!
}
altoWordsII = \lyricmode {
  
  \set stanza = #"2. "
  There’s a tu -- mult of joy
  O’er the won -- der -- ful birth,
  For the Vir -- gin’s sweet Boy
  Is the Lord of the earth.
  Ay! the star rains its fire while the beau -- ti -- ful sing,
  For the man -- ger of Beth -- le -- hem cra -- dles a King!
}
altoWordsIII = \lyricmode {
  
  \set stanza = #"3. "
  In the light of that star
  Lie the a -- ges im -- pearled,
  And that song from a -- far
  Has swept o -- ver the world.
  Ev -- ’ry hearth is a -- flame, and the beau -- ti -- ful sing
  In the homes of the na -- tions that Je -- sus is King!
}
altoWordsIV = \lyricmode {
  
  \set stanza = #"4. "
  We re -- joice in the light,
  And we ech -- o the song
  That comes down thro’ the night
  From the heav -- en -- ly throng.
  Ay! we shout to the love -- ly e -- van -- gel they bring,
  And we greet in His cra -- dle our Sav -- ior and King!
}
altoWordsV = \lyricmode {
}
altoWordsVI = \lyricmode {
}
tenorMusic = \relative c' {
  g8.\noBeam g16 |
  g4 d d |
  d2 fis8.\noBeam fis16 |
  g4 b d |
  c2 fis,8.\noBeam fis16 |
  g4 b bes |
  
  a2 a8.\noBeam a16 |
  b4 a g |
  fis2 c'8.\noBeam c16 |
  b4 b g |
  d d g |
  
  fis a fis |
  fis2 c'8.\noBeam c16 |
  b4 b d |
  c c ees |
  d c c |
  b2 \bar "|."
}
tenorWords = \lyricmode {

}

bassMusic = \relative c {
  g8.\noBeam g16 |
  g4 g g |
  a2 d8.\noBeam d16 |
  g4 g g |
  a2 d,8.\noBeam d16 |
  g4 g, g |
  
  a2 a8.\noBeam a16 |
  a4 a a |
  d2 d8.\noBeam d16 |
  g4 g g |
  g, g g |
  
  a a d |
  d2 d8.\noBeam d16 |
  g4 g g |
  c c a\fermata |
  d, d d |
  g,2 \bar "|."
}
bassWords = \lyricmode {

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
    \new Lyrics \with { alignAboveContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \sopWords
    \new Lyrics = "altosVI"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsVI
    \new Lyrics = "altosV"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsV
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \altoWords
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

