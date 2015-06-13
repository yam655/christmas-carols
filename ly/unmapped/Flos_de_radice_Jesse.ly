\version "2.14.2"

\header { 
    title = "Flos de radice Jesse"
    composer = "Arranged by Michael Praetorius (1571–1621)"
    %source = \markup { from \italic {HymnsAndCarolsOfChristmas.com}}
  }

global = {
    \key g \major
    \time 4/4
    \tempo 4 = 100
}

sopMusic = \relative c'' {
  d2 d4 d |
  e d d2 |
  b c |
  b4 a2 g4( |
  
  g) fis g2 |
  d' d4 d |
  e d d2 |
  b c |
  
  b4 a2 g4( |
  g) fis g2 |
  b4\rest b4 a fis |
  g e d2 |
  
  b'4\rest d4 d d |
  e d d2 |
  b c |
  b4 a2 g4( |
  g) fis g2 \bar "|."
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c'' {
  b2 b4 g |
  g g fis2 |
  e e |
  d4 d e4.( b8 |
  
  d4) d4 d2 |
  b'2 b4 g |
  g g fis2 |
  e e |
  
  d4 d e4.( b8 |
  d4) d d2 |
  s4 g e d |
  d cis d2 |
  
  s4 fis a g |
  g g fis2 |
  e e |
  g4 e fis2( |
  d4) d d2 \bar "|."
}
altoWords = \lyricmode {
  
  \set stanza = #"1. "
  Flos de ra -- di -- ce Jes -- se, est na -- tus ho -- di -- e.
  Quem no -- bis jam ad -- es -- se, læ -- ta -- mur u -- ni -- ce.
  Flos il -- le Je -- sus est.
  Ma -- ri -- a Vir -- go ra -- dix de qua flos or -- tus est.
}
altoWordsII = \lyricmode {
  
  \set stanza = #"2. "
  Hunc I -- sa -- ias flo -- rem, præ -- sa -- gi -- is ce -- ci -- nit.
  Ad e -- jus nos a -- mo -- rem, Na -- scen -- tis al -- li -- cit.
  Flos vir -- gam su -- pe -- rat
  cœ -- li ter -- ræ -- que ci -- ves, Flos il -- le re -- cre -- at.
}
altoWordsIII = \lyricmode {
  
  \set stanza = #"3. "
  Est cam -- pi flos pu -- di -- ci, est flos con -- val -- li -- um.
  Pul -- crum -- que pot -- est di -- ci, in spi -- nis li -- li -- um.
  O -- do -- ris op -- ti -- mi;
  vel so -- li quod -- vis ce -- dit a -- ro -- ma no -- mi -- ni.
}
altoWordsIV = \lyricmode {
  \set stanza = #"4. "
%  Hic su -- o flos o -- do -- re, fi -- de -- les at -- tra -- hit. 
%  Di -- vi -- no mox a -- mo -- re, at -- trac -- tos im -- bu -- it.
%  O flos o gra -- ti -- a:
%  ad te sus -- pi -- ro, de te me sa -- ti -- a.
}
altoWordsV = \lyricmode {
}
altoWordsVI = \lyricmode {
}
tenorMusic = \relative c' {
  d2 d4 b |
  c b a2 |
  g g |
  b4 d c( b~ |
  
  b) a b2 |
  d d4 b |
  c b a2 |
  g g |
  
  b4 d c( b~ |
  b) a b2 |
  s4 d4 c b |
  b a fis8[( g] a4) |
  
  s4 a4 a b |
  c b a2 |
  gis a |
  d4 c b2( |
  b4) a b2 \bar "|."
}
tenorWords = \lyricmode {

}

bassMusic = \relative c {
  g'2 g4 g |
  c g d2 |
  e c |
  g'4 fis e2 |
  
  d2 g |
  g g4 g |
  c g d2 |
  e c |
  
  g'4 fis e2 |
  d g, |
  d'4\rest g a b |
  g a d,8[( e] fis4) |
  
  d4\rest d fis g |
  c, g' d2 |
  e a, |
  b4 c d2 |
  d g \bar "|."
}
bassWords = \lyricmode {
  \repeat unfold 11 { \skip 1 }
  -di -- e.
  \repeat unfold 11 { \skip 1 }
  -ni -- ce.
  \repeat unfold 17 { \skip 1 }
  -tus est.
}
bassWordsII = \lyricmode {
  \repeat unfold 11 { \skip 1 }
  -ci -- nit.
  \repeat unfold 11 { \skip 1 }
  -li -- cit.
  \repeat unfold 17 { \skip 1 }
  -cre -- at.
}

\bookpart {
\score {
  <<
   \new ChoirStaff <<
    \new Staff = women <<
      \new Voice = "sopranos" { \voiceOne << \global \sopMusic >> }
      \new Voice = "altos" { \voiceTwo << \global \altoMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \sopWords
    \new Lyrics = "altosVI"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWordsVI
    \new Lyrics = "altosV"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWordsV
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "altos" \altoWords
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)(padding . 0.2)) } \lyricsto "tenors" \tenorWords
    \new Lyrics \with { alignBelowContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)(padding . 0.2)) } \lyricsto "basses" \bassWordsII
    \new Lyrics \with { alignBelowContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)(padding . 0.2)) } \lyricsto "basses" \bassWords
  >>
  >>
  \layout {
    \context {
      \Score
      \override SpacingSpanner #'base-shortest-duration = #(ly:make-moment 1 2)
      \override SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 2)
    }
    \context { }
  }
  
  \midi {
    \set Staff.midiInstrument = "flute"
  
    %\context { \Voice \remove "Dynamic_performer" }
  }
}
}
