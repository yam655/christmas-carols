\version "2.14.2"

\header {
    title = "Veni, Veni, Emmanuel"
    composer = "Gregorian"
    section = "Advent"
}

global = {
    \key g \major
    \time 4/4
    \autoBeamOff
    \tempo 4 = 100
}

sopMusic = \relative c' {
    \partial 4
  \repeat volta 2{
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
  \partial 4 b4 |
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
  Ve -- ni, ve -- ni, Em -- ma -- nu -- el
  cap -- ti -- vum sol -- ve Is -- ra -- el,
  qui ge -- mit in ex -- si -- li -- o,
  pri -- va -- tus De -- i Fi -- li -- o.
  
  Gau -- de! Gau -- de! Em -- ma -- nu -- el,
  na -- sce -- tur pro te Is -- ra -- el!
  
  
  \set stanza = #"5. "
  Ve -- ni, Cla -- vis Da -- vi -- di -- ca,
  re -- gna re -- clu -- de cæ -- li -- ca,
  fac i -- ter tu -- tum su -- pe -- rum,
  et clau -- de vi -- as in -- fe -- rum.
}
altoWordsII = \lyricmode {
  
  \set stanza = #"2. "
  Ve -- ni, O Sa -- pi -- en -- ti -- a,
  quæ hic dis -- po -- nis om -- ni -- a,
  ve -- ni, vi -- am pru -- den -- ti -- æ
  ut do -- ce -- as et glo -- ri -- æ.
  
  \repeat unfold 16\skip1
  \set stanza = #"6. "
  Ve -- ni, ve -- ni, O O -- ri -- ens,
  so -- la -- re nos ad -- ve -- ni -- ens,
  noc -- tis de -- pel -- le ne -- bu -- las,
  di -- ras -- que mor -- tis te -- ne -- bras.
}
altoWordsIII = \lyricmode {
  
  \set stanza = #"3. "
  Ve -- ni, ve -- ni, A -- do -- na -- i,
  qui po -- pu -- lo in Si -- na -- i
  le -- gem de -- dis -- ti ver -- ti -- ce
  in ma -- jes -- ta -- te glo -- ri -- æ.
  
  \repeat unfold16\skip1
  \set stanza = #"7. "
  Ve -- ni, ve -- ni, Rex Gen -- ti -- um,
  ve -- ni, Re -- dem -- ptor om -- ni -- um,
  ut sal -- vas tu -- os fa -- mu -- los
  pec -- ca -- ti si -- bi con -- sci -- os.
}
altoWordsIV = \lyricmode {
  
  \set stanza = #"4. "
  Ve -- ni, O Jes -- se vir -- gu -- la,
  ex hos -- tis tu -- os un -- gu -- la,
  de spec -- tu tu -- os tar -- ta -- ri
  e -- duc et an -- tro ba -- ra -- thri.
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
  \partial 4 e4 |
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
    \new Lyrics = "altosII"   \lyricsto "sopranos" \altoWordsII
    \new Lyrics = "altosIII"   \lyricsto "sopranos" \altoWordsIII
    \new Lyrics = "altosIV"   \lyricsto "sopranos" \altoWordsIV
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

