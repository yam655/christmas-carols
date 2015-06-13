\version "2.14.2"

\header {
    title = "O Come, O Come, Emmanuel"
    poet = "Translated by John Mason Neale (1818–1866)"
    composer = "15th Century French"
    %source = \markup ""
    section = "Advent"
}

global = {
    \key g \major
    \time 4/4
    \autoBeamOff
    \tempo 4 = 100
}

sopMusic = \relative c' {
  \repeat volta 2{
    \partial 4 e4 |
    g b b b |
    a( c b) a |
    g2. a4 |
    b g e g |
    
    a( fis e) d |
    e2. a4 |
    a e e fis |
    g2( fis4) e |
    
    d2. g4 |
    a b b b |
    a( c b) a |
    g2. 
    
    d'4 |
    d2. b4 |
    b2. b4 |
    a( c b) a |
    g2. a4 |
    b g e g |
    a( fis e) d |
    <<e2. {s2^\> s8. s16\!}>> 
  }
  
  
  
  e4 |
  g b b b |
  a( c b) a |
  g2. a4 |
  b g e g |
  
  a( fis e) d |
  e2. a4 |
  a e e fis |
  g2( fis4) e |
  
  d2. g4 |
  a b b b |
  a( c b) a |
  g2. \bar "||"
}
  

altoMusic = \relative c' {
  b4 |
  e b d g |
  g2. fis4 |
  g2. d4 |
  d d c b |
  
  c2(  b4) b |
  b2. e8[ d] |
  c4 c e dis |
  e2( d4) cis |
  
  d2. b4 |
  d d d g |
  g2. fis4 |
  g2. 
  
  g4 |
  fis2. g4 |
  fis2. g4 |
  g2. fis4 |
  g2. fis4 |
  g d e e |
  e( c b) b |
  b2.
  
  
  
  
  b4 |
  e b d g |
  g2. fis4 |
  g2. d4 |
  d d c b |
  
  c2(  b4) b |
  b2. e8[ d] |
  c4 c e dis |
  e2( d4) cis |
  
  d2. b4 |
  d d d g |
  g2. fis4 |
  g2. 
}
altoWords = \lyricmode {
  \set stanza = #"1. "
  O come, O come, Em -- man -- u -- el,  And ran -- som cap -- tive Is -- ra -- el,
  That mourns in lone -- ly ex -- ile here  Un -- til the Son of God __ ap -- pear.
  Re -- joice! Re -- joice! Em -- man -- u -- el Shall come to thee, O Is -- ra -- el.
  
  
  \set stanza = #"4. "
  O come, Thou Key of Da -- vid, come, And o -- pen wide our heav’n -- ly home;
  Make safe the way that leads __ on high, And close the path to mis -- er -- y.
}
altoWordsII = \lyricmode {
  \set stanza = #"2. "
  O come, O come, Thou Lord __ of might, Who to Thy tribes, on Si -- nai’s height,
  In an -- cient times didst give __ the Law, In cloud, and maj -- es -- ty __ and awe.
  
  \repeat unfold 16 \skip1
  \set stanza = #"5. "
  O come, Thou Day -- Spring, come __ and cheer Our spi -- rits by Thine ad -- vent here;
  Dis -- perse the gloom -- y clouds __ of night, And death’s dark shad -- ows put __ to flight.
  
}
altoWordsIII = \lyricmode {
  \set stanza = #"3. "
  O come, Thou Rod of Jes -- se, free Thine own from Sa -- tan’s ty -- ran -- ny;
  From depths of hell Thy peo -- ple save, And give them vic -- t’ry o’er __ the grave.
}
tenorMusic = \relative c' {
  g4 |
  b fis g d' |
  e2( d4) c |
  b2. fis4 |
  g g g g |
  
  e( a g) fis |
  g2. a4 |
  a a b a |
  b( a a) g |
  
  fis2. g4 |
  fis fis g d' |
  e2( d4) c |
  b2.
  
  b4 |
  a2. e'4 |
  d2. d4 |
  e2( d4) c |
  b2. d4 |
  d d c b |
  a2( g4) fis |
  <<g2. {s2_\> s8. s16\!}>>
  
  
  
  
  g4 |
  b fis g d' |
  e2( d4) c |
  b2. fis4 |
  g g g g |
  
  e( a g) fis |
  g2. a4 |
  a a b a |
  b( a a) g |
  
  fis2. g4 |
  fis fis g d' |
  e2( d4) c |
  b2.
}

bassMusic = \relative c {
  e4 |
  e d b g |
  c( a b) d |
  e2. d4 |
  g, b c e |
  
  a,2( b4) b |
  e2. c8[ b] |
  a4 a' g fis |
  e( cis d) a |
  
  d2. e4 |
  d b g b |
  c( a b) d |
  g,2.
  
  g'4 |
  d2. e4 |
  b2. g4 |
  c( a b) d |
  e2. d4 |
  g b, c e |
  c( a b) b |
  e2.
  
  
  
  
  e4 |
  e d b g |
  c( a b) d |
  e2. d4 |
  g, b c e |
  
  a,2( b4) b |
  e2. c8[ b] |
  a4 a' g fis |
  e( cis d) a |
  
  d2. e4 |
  d b g b |
  c( a b) d |
  g,2.
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
    \new Lyrics = "altosII"  \lyricsto "sopranos" \altoWordsII
    \new Lyrics = "altosIII"  \lyricsto "sopranos" \altoWordsIII
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
  }
} 
}

