\version "2.14.2"

songTitle = "The Babe of Bethlehem"
songPoet = "Traditional"
tuneComposer = "Traditional"
tuneSource = \markup { "from" \italic {Christmas Carols, New and Old}}

global = {
    \key c \major
    \time 4/4
    \autoBeamOff
    \tempo 4 = 105
}

sopMusic = \relative c' {
  \partial 4 e4 |
  a c b gis |
  a c e,2 |
  c' a4 c |
  b gis e\fermata  e |
  
  a c b gis a c f,\fermata f |
  e8[ dis] e[ fis] gis4 e |
  a2. b4\rest \bar "||" 

  \key a\major 
  cis2 cis4 cis |
  d8([ cis d e] d4) cis8[ b] |
  a4 gis8[ a] b4 cis |
  b2. e,4 | 
  
  a a b b |
  cis e b cis8[ d] |
  e4 a, b a8[ gis] |
  a2. \bar ":|" 
  
  
  
  \key c\major
  e4 |
  a c b gis |
  a c e,2 |
  c' a4 c |
  b gis e\fermata  e |
  
  a c b gis a c f,\fermata f |
  e8[ dis] e[ fis] gis4 e |
  a2. b4\rest \bar "||"
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  e4 |
  a c b gis |
  a c e,2 |
  e e4 e |
  e dis e e |
  
  a c b gis |
  a c f, d |
  b e e d! |
  c2. s4 \bar "||"
  
  \key a\major
  e2 a4 a |
  fis2~ fis4 gis |
  a e d cis |
  e gis8[ a] gis[ fis] e[ d] |
  
  cis4 a' gis fis |
  e8[ fis] g4 fis e |
  e cis fis e |
  e2. 
  
  
  \key c\major
    e4 |
  a c b gis |
  a c e,2 |
  e e4 e |
  e dis e e |
  
  a c b gis |
  a c f, d |
  b e e d! |
  c2. s4 \bar "||"
}
altoWords = {
  
  \lyricmode {
    \set stanza = #"1."
    The Babe in Beth -- lem’s man -- ger laid,
    In hum -- ble form so low;
    By won -- d’ring An -- gels is sur -- vey’d,
    Thro’ all His 
    \set associatedVoice = "sopranos"
    scenes of woe.
    \unset associatedVoice
  }
  \set stanza = \markup\dynamic"ff   "
  \lyricmode{
    \set associatedVoice = "sopranos"
    No -- ël, no -- ël, __
    Now \unset associatedVoice sing a Sav -- ior’s Birth;
    All hail, all hail His com -- ing down to earth,
    Who rais -- es us to Heav’n!
    
    
    \set stanza = #"4."
    To preach the Word of Life Di -- vine,
    And feed with liv -- ing Bread,
    To heal the sick with hand be -- nign,
    And raise to 
    \set associatedVoice = "sopranos"
    life the dead.
  }
}
altoWordsII = {
  
  \set stanza = \markup{\dynamic"  mf " "2."}
  \lyricmode {
    A Sav -- ior! sin -- ners all a -- round
    Sing, shout the won -- drous word;
    Let ev -- ’ry bo -- som hail the sound,
    A Sav -- ior! 
    \set associatedVoice = "sopranos"
    Christ the Lord.
    \unset associatedVoice
    
    \repeat unfold 26 \skip1
  }
  \set stanza = \markup{\dynamic"  mf " "5."}
  \lyricmode{
    He preached, He suf -- fered, bled and died,
    Up -- lift ’twixt earth and skies;
    In sin -- ners’ stead was cru -- ci -- fied,
    For sin a 
    \set associatedVoice = "sopranos"
    sac -- ri -- fice.
    
  }
}
altoWordsIII = \lyricmode {
  
  \set stanza = #"3."
  For not to sit on Da -- vid’s throne
  With world -- ly pomp and joy,
  He came for sin -- ners to a -- tone,
  And Sa -- tan 
  \set associatedVoice = "sopranos"
  to de -- stroy.
  \unset associatedVoice
  
  \repeat unfold 26 \skip1
  \set stanza = #"6."
  Well may we sing a Sav -- ior’s Birth,
  Who need the Grace so giv’n,
  And hail His com -- ing down to earth,
  Who rais -- es 
  \set associatedVoice = "sopranos"
  us to Heav’n.
  
}
altoWordsIV = \lyricmode {
}
altoWordsV = \lyricmode {
}
altoWordsVI = \lyricmode {
}
tenorMusic = \relative c' {
  e,4 |
  a c b gis |
  a c e,2 |
  a a4 a |
  gis a gis e |
  
  a c b gis |
  a c f, a |
  gis8[ fis] gis[ a] b4 gis |
  a2. s4 \bar "||"
  
  \key a\major
  cis2 fis4 fis d2~ d4 |
  e8[ d] |
  cis4 e gis, a |
  gis e'8[ fis] e[ d] cis[ b] |
  
  a4 cis b b |
  b b8[ ais] b[ a] gis4 |
  a a d cis8[ b] |
  cis2. 
  
  
  
  \key c\major
  e,4 |
  a c b gis |
  a c e,2 |
  a a4 a |
  gis a gis e |
  
  a c b gis |
  a c f, a |
  gis8[ fis] gis[ a] b4 gis |
  a2. s4 \bar "||"
}
tenorWords = \lyricmode {

}

bassMusic = \relative c {
  e4 |
  a c b gis |
  a c e,2 |
  a, c4 a |
  b b e\fermata e |
  
  a c b gis |
  a c f,\fermata d |
  e e e e |
  a,2. d4\rest 
  
  \key a\major
  a'2 fis4 fis |
  b8([ a b cis] b4) e, |
  fis cis b a |
  e'2. e4 |
  
  fis fis d d |
  cis cis d e8[ d] |
  cis4 fis d e |
  a,2. 
  
  
  
  \key c\major
  e'4 |
  a c b gis |
  a c e,2 |
  a, c4 a |
  b b e\fermata e |
  
  a c b gis |
  a c f,\fermata d |
  e e e e |
  a,2. d4\rest \bar "||"
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
     \new Lyrics = "altosVI"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsVI
    \new Lyrics = "altosV"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsV
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((padding . -0.9))} \lyricsto "altos" \altoWords
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

