﻿\version "2.14.2"

\header {
  title = "Personent hodie"
  poet = \markup {from \italic {Piæ Cantiones}, 1582}
  composer = \markup {from \italic {Piæ Cantiones}, 1582}
  arranger = "Arranged by George Ratcliffe Woodward (1848–1934)"
  %source = \markup{from \italic {The Cowley Carol Book}, 1919}
}

global = {
    \key d \major
    \time 4/4
    \autoBeamOff
    \tempo 4 = 120
}

sopMusic = \relative c' {
  \partial 2 e4 e |
  b'2 a4 a b2 b4 b |
  e2 cis4 d |
  b2 a4 b |
  
  d2 a4 b |
  g2 |
  fis4 e fis d |
  e2 e |
  fis4 g a d, |
  
  e2 e |
  fis4 g |
  a2 a |
  a g4 a |
  b2 b |
  b fis4 g |
  a2 g4 fis |
  e2 |
  fis4 e e d |
  e2 e\fermata \bar "|."
}
  

altoMusic = \relative c' {
    \partial 2
    b4 b |
  d2 d4 d |
  d2 d4 e |
  g2 fis4 fis |
  fis2 fis4 g |
  
  fis2 fis4 fis |
  e2 |
  d4 cis cis d |
  cis2 b |
  d4 e e d |
  
  b2 b |
  d4 d |
  fis2 e |
  fis g4 fis |
  g2 fis |
  
  g fis4 d |
  d2 e4 dis |
  e2 |
  d4 b a a |
  cis2 b \bar "|."
}
altoWords = \lyricmode {
  
  \set stanza = #"1. "
  Per -- so -- nent ho -- di -- e
  vo -- ces pu -- e -- ru -- læ,
  lau -- dan -- tes ju -- cun -- de
  Qui no -- bis est na -- tus,
  sum -- mo De -- o da -- tus,
  et de vir, vir, vir,
  et de vir, vir, vir,
  et de vir -- gi -- ne -- o
  ven -- tre pro -- cre -- a -- tus.
}
altoWordsII = \lyricmode {
  
%\markup\italic
  \set stanza = #"2. "
  In mun -- do na -- sci -- tur,
  pan -- nis in -- vol -- vi -- tur,
  præ -- se -- pi po -- ni -- tur
  sta -- bu -- lo bru -- to -- rum,
  rec -- tor su -- per -- no -- rum,
  per -- di -- dit, dit, dit,
  per -- di -- dit, dit, dit,
  per -- di -- dit spo -- li -- a
  prin -- ceps in -- fer -- no -- rum.
}
altoWordsIII = \lyricmode {
  
  \set stanza = #"3. "
  Ma -- gi tres ve -- ne -- runt,
  par -- vu -- lum in -- qui -- runt,
  Beth -- le -- hem ad -- e -- unt,
  stel -- lu -- lam se -- quen -- do,
  ip -- sum ad -- o -- ran -- do,
  au -- rum thus, thus, thus,
  au -- rum thus, thus, thus,
  au -- rum thus, et myr -- rham
  E -- i of -- fe -- ren -- do.
}
altoWordsIV = \lyricmode {
  
  \set stanza = #"4. "
  Om -- nes cle -- ri -- cu -- li,
  par -- i -- ter pu -- e -- ri,
  can -- tent ut an -- ge -- li:
  Ad -- ven -- is -- ti mun -- do,
  lau -- des Ti -- bi fun -- do.
  Id -- e -- o, o, o,
  id -- e -- o, o, o,
  id -- e -- o, glo -- ri -- a
  in ex -- cel -- sis De -- o.
}
altoWordsV = \lyricmode {
  \set stanza = #"5. "
  \set ignoreMelismata = ##t
}
altoWordsVI = \lyricmode {
  \set stanza = #"6. "
  \set ignoreMelismata = ##t
}
tenorMusic = \relative c' {
  g4 g |
  fis2 fis4 fis |
  g2 g4 b |
  b2 ais4 b |
  d2 d4 d |
  
  d2 d4 d |
  c4( b) |
  a4 a a fis |
  a2 g |
  b4 b a a |
  
  a( fis) gis2 |
  a4 b |
  d2 d4( cis) |
  d2 d4 c |
  e2 e4( dis) |
  
  e2 d4 b |
  a2 b4 a |
  b2 |
  a4 g e fis |
  a2 gis \bar "|."
}
tenorWords = \lyricmode {

}

bassMusic = \relative c {
  e4 e |
  b2 d4 d |
  g,2 g'4 g |
  e2 fis4 b, |
  b2 d4 g |
  
  d2 d4 b |
  c2 |
  d4  a fis b |
  a2 e' |
  b4 e cis fis |
  
  e2 e |
  d4 g |
  fis( g) a2 |
  d, b'4 a |
  g( a) b2 |
  
  e, b'4 g |
  fis2 e4 fis |
  g2 |
  d4 e cis d |
  a2 e'\fermata \bar "|."
}
bassWords = \lyricmode {

}

\bookpart {
\score {
  <<
   \new ChoirStaff <<
    \new Staff = women <<
      \new Voice = "sopranos" { \voiceOne << \global \sopMusic >> }
      \new Voice = "altos" { \voiceTwo << \global \altoMusic >> }
    >>
    \new Lyrics = "altosVI"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsVI
    \new Lyrics = "altosV"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsV
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "sopranos" \altoWords
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

