﻿\version "2.14.2"

songTitle = "Corde Natus"
songPoet = "Marcus Aurelius Clemens Prudentius (348–413?)"
tuneComposer = \markup{\italic{Divinum Mysterium}, 13th Century Melody}
tuneSource = \markup{From \italic{Great Hymns of the Church Compiled by the Late Right Reverend John Freeman Young}, 1887}
%   \concat{"via " \italic"HymnsAndCarolsOfChristmas.com"}
% }

global = {
    \key f \major
    \time 10/2
    \autoBeamOff
    \tempo 4 = 180
}

sopMusic = \relative c' {
  \repeat volta 3 {
    f2. g4 a2 bes a g a2.( g4) f1 |
    a2 bes c d c( a1) bes2 c1 \bar "||"
    
    d2. e4 f2 c c bes a2.( g4) f1 |
    d2. e4 f2 g f( d1) e2 f1 \bar "||"
    
    f2. g4 a2 bes a g c1 d |
    c2( a) bes c( f,) e 
    
    d2 e f2.( d4 c1) |
    f2. g4 a2 c a f g1( f)
  }
}

altoMusic = \relative c' {
  f2. f4 f2 f f f f1 f |
  f2 f f f e( f1) f2 e1 \bar "||"
  
  f2. g4 f2 f f f4( g) f2( e) d1 |
  bes2. c4 c2 d c1 bes a \bar "||"
  
  f'2. f4 f2 f f g f1 f |
  e2( f) f f( c) c 
  
  bes2 bes a2.( bes4 a1) |
  f'2. f4 f2 e e f e1( f)
}

altoWords = \lyricmode { 
  \set stanza = #"1. "
  Cor -- de na -- tus ex pa -- ren -- tis
  An -- te mun -- di~ex -- or -- di -- um
  A et O co -- gno -- mi -- na -- tus,
  ip -- se fons et clau -- su -- la
  Om -- ni -- um quæ sunt, fu -- e -- runt,
  quæ -- que post fu -- tu -- ra sunt. __
  Sæ -- cu -- lo -- rum sæ -- cu -- lis. __ 
}

altoWordsII = \lyricmode {
  \set stanza = #"2. "
  Ip -- se jus -- sit et cre -- a -- ta,
  di -- xit ip -- se~et fac -- ta sunt,
  Ter -- ra, cæ -- lum, fos -- sa pon -- ti,
  tri -- na re -- rum ma -- chi -- na,
  Quæ -- que~in his vi -- gent sub al -- to
  so -- lis et lu -- næ glo -- bo. __
  Sæ -- cu -- lo -- rum sæ -- cu -- lis. __ 
}

altoWordsIII = \lyricmode { 
  \set stanza = #"3. "
  Cor -- po -- ris for -- mam ca -- du -- ci,
  mem -- bra mor -- ti~ob -- no -- xi -- a
  In -- du -- it, ne gens per -- i -- ret
  pri -- mo -- plas -- ti~ex ger -- mi -- ne,
  Mer -- se -- rat quem lex pro -- fun -- do
  no -- xi -- a -- lis tar -- ta -- ro. __
  Sæ -- cu -- lo -- rum sæ -- cu -- lis. __ 
}

altoWordsIV = \lyricmode { 
  \set stanza = #"4. "
  O be -- a -- tus or -- tus il -- le,
  vir -- go cum pu -- er -- pe -- ra
  E -- di -- dit nos -- tram sa -- lu -- tem,
  fe -- ta San -- cto Spi -- ri -- tu,
  Et pu -- er re -- dem -- ptor or -- bis
  os sa -- cra -- tum pro -- tu -- lit. __
  Sæ -- cu -- lo -- rum sæ -- cu -- lis. __
}

altoWordsV = \lyricmode { 
  \set stanza = #"5. "
  Psal -- lat al -- ti -- tu -- do cæ -- li,
  psal -- lant om -- nes an -- ge -- li,
  Quid -- quid est vir -- tu -- tis us -- quam
  psal -- lat in lau -- dem De -- i,
  Nul -- la lin -- gua -- rum si -- les -- cat,
  vox et om -- nis con -- so -- net. __
  Sæ -- cu -- lo -- rum sæ -- cu -- lis. __
}

altoWordsVI = \lyricmode { 
  \set stanza = #"6. "
  Ec -- ce, quem va -- tes ve -- tus -- tis
  con -- ci -- ne -- bant sæ -- cu -- lis,
  Quem pro -- phe -- ta -- rum fi -- de -- les
  pa -- gi -- næ spo -- pon -- de -- rant,
  E -- mi -- cat pro -- mis -- sus o -- lim;
  cun -- cta con -- lau -- dent e -- um. __
  Sæ -- cu -- lo -- rum sæ -- cu -- lis. __
}

altoWordsVII = \lyricmode { 
  \set stanza = #"7. "
  Mac -- te ju -- dex mor -- tu -- o -- rum,
  mac -- te rex vi -- ven -- ti -- um,
  Dex -- ter in Pa -- ren -- tis ar -- ce
  qui clu -- is vir -- tu -- ti -- bus,
  Om -- ni -- um ven -- tu -- rus in -- de
  jus -- tus ul -- tor cri -- mi -- num. __
  Sæ -- cu -- lo -- rum sæ -- cu -- lis. __
}

altoWordsVIII = \lyricmode { 
  \set stanza = #"8. "
  Te se -- nes et te ju -- ven -- tus,
  par -- vu -- lo -- rum te cho -- rus,
  Tur -- ba ma -- trum, vir -- gi -- num -- que,
  sim -- pli -- ces pu -- el -- lu -- læ,
  Vo -- ce con -- cor -- des pu -- di -- cis
  per -- stre -- pant con -- cen -- ti -- bus. __
  Sæ -- cu -- lo -- rum sæ -- cu -- lis. __
}

altoWordsIX = \lyricmode { 
  \set stanza = #"9. "
  Ti -- bi, Chris -- te, sit cum Pa -- tre
  ha -- gio -- que Pne -- u -- ma -- te
  Hym -- nus, de -- cus, laus pe -- ren -- nis,
  gra -- ti -- a -- rum ac -- ti -- o,
  Ho -- nor, vir -- tus, vic -- to -- ri -- a,
  re -- gnum æ -- ter -- na -- li -- ter. __
  Sæ -- cu -- lo -- rum sæ -- cu -- lis. __
}

tenorMusic = \relative c' {
  a2. bes4 c2 d c bes c2.( bes4) a1 |
  c2 bes a bes g( f1) f2 g1 \bar "||"
  
  d'2. c4 c2 f4( e) d2 d c2.( bes4) a1 |
  bes2. g4 f2 f f1. c2 c1 \bar "||"
  
  a'2. bes4 c2 d c2. bes4 bes2( a) bes1 |
  g2( f2.) g4 a2( f) f 
  
  f2 g f1~f |
  a2. bes4 c2 c c a bes1( a)
}


bassMusic = \relative c {
  f2. f4 f2 f f f f1 f |
  f2 e4( d) c2 bes c( f1) d2 c1 \bar "||"
  
  bes'2. bes4 a2 a bes g c,1 d |
  bes2. bes4 a2 bes a( bes1) bes2 f1 \bar "||"
  
  f'2. f4 f2 f f e f1 bes, |
  c2( f) d a( a) a 
  
  bes2 bes f1~ f |
  f'2. f4 f2 a,4( bes) c2 d c1( f)
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
    \new Lyrics   \lyricsto "sopranos" \altoWords
    \new Lyrics   \lyricsto "sopranos" \altoWordsII
    \new Lyrics   \lyricsto "sopranos" \altoWordsIII
    \new Lyrics   \lyricsto "sopranos" \altoWordsIV
    \new Lyrics   \lyricsto "sopranos" \altoWordsV
    \new Lyrics   \lyricsto "sopranos" \altoWordsVI
    \new Lyrics   \lyricsto "sopranos" \altoWordsVII
    \new Lyrics   \lyricsto "sopranos" \altoWordsVIII
    \new Lyrics   \lyricsto "sopranos" \altoWordsIX
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

