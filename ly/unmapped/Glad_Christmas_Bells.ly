\version "2.14.2"

\header { 
    title = "Glad Christmas Bells"
    poet = "Anonymous"
    composer = "Anonymous"
    %source = \markup{ from \italic{Franklin Square Song Collection, No. 1}, 1881}
  }

global = {
    \key g \major
    \time 3/4
    \autoBeamOff
    \tempo 4 = 100
}

sopMusic = \relative c' {
    \partial 4
  \repeat volta 5 {
    d8[ g] |
    g8 fis fis4 fis8[ a] |
    a g g4 \bar"||" g8[ b] |
    b4. a8 c b |
    a4 g\fermata 
    
    d8[ g] |
    g fis fis4 fis8[ a] |
    a g g4 b8[ e] |
    d4. g,8 a b |
    a4 g\fermata
  }
}

altoMusic = \relative c' {
  d4 |
  d8 d d4 d |
  d8 d d4 b8[ d] |
  e4. e8 e e |
  fis4 g 
  
  d |
  d8 d d4 d |
  d8 d d4 g |
  g4. g8 g g |
  fis4 g
}

altoLyrics = \lyricmode { 
  \set stanza = #"1. "
  Glad Christ -- mas bells, your mu -- sic tells
    The sweet and pleas -- ant sto -- ry;
  How came to earth, in __ low -- ly birth,
    The Lord of life and glo -- ry. 
}

altoLyricsII = \lyricmode { 
  \set stanza = #"2. "
  No pal -- ace hall its __ ceil -- ing tall
    His king -- ly head spread o -- ver,
  There on -- ly stood a __ sta -- ble rude
    The heav’n -- ly Babe to cov -- er. 
}

altoLyricsIII = \lyricmode { 
  \set stanza = #"3. "
  Nor rai -- ment gay, as __ there He lay,
    A -- dorn’d the in -- fant Stran -- ger;
  Poor, hum -- ble Child of __ moth -- er mild,
    She laid Him in a man -- ger. 
}

altoLyricsIV = \lyricmode { 
  \set stanza = #"4. "
  But from a -- far, a __ splen -- did star
    The wise men west -- ward turn -- ing;
  The live -- long night saw pure and bright,
    A -- bove His birth -- place burn -- ing. 
}

altoLyricsV = \lyricmode { 
  \set stanza = #"5. "
  Where on the hill, all __ safe and still,
    The fold -- ed flocks were ly -- ing,
  Down through the air an __ an -- gel fair
    On wing of flame came fly -- ing. 
}

altoLyricsVI = \lyricmode { 
  \set stanza = #"6. "
  “Fear not,” said he, for __ trem -- bling -- ly
    The shep -- herds stood in won -- der,
  “Glad news I bring, the prom -- ised King
    Lies in a sta -- ble yon -- der.
}

altoLyricsVII = \lyricmode { 
  \set stanza = #"7. "
  “And by this sign, the __ Babe Di -- vine
    You may dis -- cov -- er sure -- ly,
  A __ man -- ger rude His dwell -- ing is,
    There lies He, cra -- dled poor -- ly.”
}

altoLyricsVIII = \lyricmode { 
  \set stanza = #"8. "
  Then swift -- ly came, in __ lines of flame,
    Like count -- less me -- teors blaz -- ing,
  A __ mul -- ti -- tude, and with Him stood,
    A __ spec -- ta -- cle a -- maz -- ing.
}

altoLyricsIX = \lyricmode { 
  \set stanza = #"9. "
  And all the choir, with tongues of fire
    Broke forth in joy -- ful sing -- ing,
  Till __ with their cry the ve -- ry sky
    From end to end was ring -- ing.
}

altoLyricsX = \lyricmode { 
  \set stanza = #"10. "
  “Glo -- ry to Thee for -- ev -- er be,
    God in the high -- est, glo -- ry!
  Good will to men, and peace a -- gain
    O __ earth is beam -- ing o’er Thee!”
}
tenorMusic = \relative c' {
  b4 |
  b8 a a4 a8[ c] |
  c b b4 g |
  g4. g8 a g |
  c4 b 
  
  b |
  b8 a a4 a8[ c] |
  c b b4 d8[ c] |
  b4. b8 c d |
  c4 b
}


bassMusic = \relative c {
  g'4 |
  g8 d d4 d |
  d8 g g4 g |
  c,4. c8 a a |
  d4 g 
  
  g |
  d8 d d4 d |
  d8 g g4 g |
  g4. g8 g g |
  d4 g
}


\bookpart {
\score {
  <<
   \new ChoirStaff <<
    \new Staff = women <<
      \new Voice = "sopranos" { \voiceOne << \global \sopMusic >> }
      \new Voice = "altos" { \voiceTwo << \global \altoMusic >> }
    >>
    \new Lyrics \lyricsto "sopranos" \altoLyrics
    \new Lyrics \lyricsto "sopranos" \altoLyricsII
    \new Lyrics \lyricsto "sopranos" \altoLyricsIII
    \new Lyrics \lyricsto "sopranos" \altoLyricsIV
    \new Lyrics \lyricsto "sopranos" \altoLyricsV
    \new Lyrics \lyricsto "sopranos" \altoLyricsVI
    \new Lyrics \lyricsto "sopranos" \altoLyricsVII
    \new Lyrics \lyricsto "sopranos" \altoLyricsVIII
    \new Lyrics \lyricsto "sopranos" \altoLyricsIX
    \new Lyrics \lyricsto "sopranos" \altoLyricsX
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

