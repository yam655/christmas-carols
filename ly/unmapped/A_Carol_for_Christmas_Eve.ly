\version "2.14.2"

songTitle = "A Carol for Christmas Eve"
songPoet = "Traditional"
songSection = \markup \null
tuneComposer = "Traditional"
tuneSource = \markup { "from" \italic {Christmas Carols, New and Old}}

global = {
    \key g \major
    \time 4/4
    \autoBeamOff
    \tempo 4 = 120
}

sopMusic = \relative c'' {
  \partial 4 b8[ c] |
  d4 c b a8[ g] |
  c4 b a g |
  fis e b' b |
  
  e,2.  b'8[ c] |
  d4 c b a8[ g] |
  c4 b a g |
  fis e b' b |
  e,2. 
  
  fis4 |
  g4. fis8 g4 a8[ b] |
  a4 g fis d |
  g g d' a |
  b2.  e4 |
  
  d e b a8[ g] |
  c4 b a g |
  fis e b' b |
  e,2. 
  
  fis4 |
  g4. fis8 g4 a8[ b] |
  a4 g fis d |
  g g d' a |
  b2.  e4 |
  
  d4 e b a8[ g] |
  c4 b a g |
  fis e b' b |
  e,2. \bar ":|" 
  
  
  
  b'8[ c] |
  d4 c b a8[ g] |
  c4 b a g |
  fis e b' b |
  
  e,2.  b'8[ c] |
  d4 c b a8[ g] |
  c4 b a g |
  fis e b' b |
  e,2. 
  
  fis4 |
  g4. fis8 g4 a8[ b] |
  a4 g fis d |
  g g d' a |
  b2.  e4 |
  
  d e b a8[ g] |
  c4 b a g |
  fis e b' b |
  e,2. \bar "|."
}

altoMusic = \relative c' {
  d8[ e] |
  fis4 e d c8[ b] |
  e4 d8[ e] fis4 e |
  c e e dis |
  
  e2. g4 |
  fis e d c8[ b] |
  e4 d8[ e] fis4 e |
  c e e dis |
  e2. \bar "||"
  
  dis!4 |
  e4. dis8 e4 fis |
  e cis d d |
  d g g fis |
  g2. e4 |
  
  a g fis e |
  e8[ fis] g4 fis e |
  c e e dis |
  e2. \bar "||"
  
  dis!4 |
  e4. dis8 e4 fis |
  e cis d d |
  d g g fis |
  g2. e4 |
  
  a g fis e |
  e8[ fis] g4 fis e |
  c e e dis |
  e2. \bar ":|"
  
  
  
  
  d8[ e] |
  fis4 e d c8[ b] |
  e4 d8[ e] fis4 e |
  c e e dis |
  
  e2. g4 |
  fis e d c8[ b] |
  e4 d8[ e] fis4 e |
  c e e dis |
  e2. \bar "||"
  
  dis!4 |
  e4. dis8 e4 fis |
  e cis d d |
  d g g fis |
  g2. e4 |
  
  a g fis e |
  e8[ fis] g4 fis e |
  c e e dis |
  e2. \bar "|."
}
altoWords = {
  
  \lyricmode {
    \set stanza = #"1. "
    The Lord at first had A -- dam made Out of the dust and clay,
    And in his nos -- trils breath -- ed life, E’en as the Scrip -- tures say.
    
    And then in E -- den’s Pa -- ra -- dise He pla -- ced him to dwell,
    That he with -- in it should re -- main, To dress and keep it well.
  }
  \set stanza = \markup\dynamic"ff "
  \lyricmode{
    Now let good Chris -- tians all be -- gin A ho -- lier life to live,
    And to re -- joice and mer -- ry be, For this is Christ -- mas Eve.

    \set stanza = #"4."
    Now mark the good -- ness of the Lord, Which He to man -- kind bore;
    His mer -- cy soon He did ex -- tend, Lost man for to re -- store:
    And there -- fore to re -- deem our souls From death and hell and thrall,
    He said His own dear Son should be The Sav -- ior of us all.
  }
}
altoWordsII = {
  
  \set stanza = \markup{\dynamic"mf  " "2. "}
  \lyricmode {
  %\markup\italic
    And thus with -- in the gar -- den he Was set, there -- in to stay;
    And in com -- mand -- ment un -- to him
    These words the Lord did say:
  }
  \set stanza = \markup\dynamic"p "
  \lyricmode{
    “The fruit which in the gar -- den grows To thee shall be for meat,
    Ex -- cept the tree in midst there -- of,
    Of which thou shalt not eat.”
    
    \repeat unfold 28 {\skip1}
  }
  \set stanza = \markup{\dynamic" mf " "5."}
  \lyricmode {
    Which prom -- ise now is brought to pass: Chris -- tians, be -- lieve it well:
    And by the death of God’s dear Son, We are re -- deemed from Hell.
  }
  \set stanza = \markup\dynamic"p "
  \lyricmode{
    So if we tru -- ly do be -- lieve, And do the thing that’s right,
    Then by His mer -- its we at last Shall live in heav -- en bright.
  }
}
altoWordsIII = \lyricmode {
  
  \set stanza = #"3. "
  “For in the day thou shalt it touch Or dost to it come nigh,
  If so thou do but eat there -- of, Then thou shalt sure -- ly die.”
  But A -- dam he did take no heed Un -- to that on -- ly thing,
  But did trans -- gress God’s ho -- ly Law, And so was wrapt in sin.
  
  \repeat unfold 28 {\skip1}
  \set stanza = #"6."
  And now the tide is nigh at hand, In which our Sav -- ior came;
  Let us re -- joice and mer -- ry be In keep -- ing of the same;
  Let’s feed the poor and hun -- gry souls. And such as do it crave;
  And when we die, in heav -- en we Our sure re -- ward shall have.
}
altoWordsIV = \lyricmode {
}
altoWordsV = \lyricmode {
}
altoWordsVI = \lyricmode {
}
tenorMusic = \relative c' {
  g4 |
  a g8[ a] b4 fis8[ g] |
  g[ a] b[ c] d4 b |
  a g g fis |
  
  g2. g4 |
  a g8[ a] b4 fis8[ g] |
  g[ a] b[ c] d4 b |
  a g g fis |
  g2. \bar "||"
  
  b4 |
  b4. b8 b4 d |
  a a a fis |
  d' c b d |
  d2. b4 |
  
  a b b b |
  c d d b |
  a g g fis |
  g2. \bar "||"
  
  b4 |
  b4. b8 b4 d |
  a a a fis |
  d' c b d |
  d2. b4 |
  
  a b b b |
  c d d b |
  a g g fis |
  g2. \bar ":|"
  
  
  
  g4 |
  a g8[ a] b4 fis8[ g] |
  g[ a] b[ c] d4 b |
  a g g fis |
  
  g2. g4 |
  a g8[ a] b4 fis8[ g] |
  g[ a] b[ c] d4 b |
  a g g fis |
  g2. \bar "||"
  
  b4 |
  b4. b8 b4 d |
  a a a fis |
  d' c b d |
  d2. b4 |
  
  a b b b |
  c d d b |
  a g g fis |
  g2. \bar "|."
}

bassMusic = \relative c' {
  g4 |
  d e8[ fis] g4 d8[ e] |
  c4 g' d e |
  a, c b b |
  
  e2. e4 |
  d e8[ fis] g4 d8[ e] |
  c4 g' d e |
  a, c b b |
  e2. \bar "||"
  
  b4 |
  e4. b8 e4 d |
  cis a d c |
  b e d d |
  g2. g4 |
  
  fis e dis e |
  a g d e |
  a, c b b |
  e2. \bar "||"
  
  b4 |
  e4. b8 e4 d |
  cis a d c |
  b e d d |
  g2. g4 |
  
  fis e dis e |
  a g d e |
  a, c b b |
  e2. \bar ":|"
  
  
  
  
  
  g4 |
  d e8[ fis] g4 d8[ e] |
  c4 g' d e |
  a, c b b |
  
  e2. e4 |
  d e8[ fis] g4 d8[ e] |
  c4 g' d e |
  a, c b b |
  e2. \bar "||"
  
  b4 |
  e4. b8 e4 d |
  cis a d c |
  b e d d |
  g2. g4 |
  
  fis e dis e |
  a g d e |
  a, c b b |
  e2. \bar "|."
}



\bookpart {

\header {
    title = \songTitle
    poet = \songPoet
    section = \songSection
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
     \new Lyrics = "altosVI"   \lyricsto "altos" \altoWordsVI
    \new Lyrics = "altosV"   \lyricsto "altos" \altoWordsV
    \new Lyrics = "altosIV"   \lyricsto "altos" \altoWordsIV
    \new Lyrics = "altosIII"   \lyricsto "altos" \altoWordsIII
    \new Lyrics = "altosII"   \lyricsto "altos" \altoWordsII
    \new Lyrics = "altos"   \lyricsto "altos" \altoWords
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
    % \context { \Voice \remove "Dynamic_performer" }
  }
} 
}

