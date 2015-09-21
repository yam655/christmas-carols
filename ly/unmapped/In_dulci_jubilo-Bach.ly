\version "2.14.2"

\header {
    title = "In dulci jubilo"
    poet = "Heinrich Seuse (1300–1366)"
    composer = "Arranged by J.S. Bach (1685–1750)"
    
    %source = \markup \concat { "from " \italic "The Cowley Carol Book" ", 1919"}
  }

global = {
    \key f \major
    \time 6/4
    \tempo 4 = 160
}

sopMusic = \relative c' {
  \partial 4 f4 |
  f2 f4 a2 bes4 |
  c2( d4 c2) c4 |
  f,2 f4 a2 bes4 |
  c2( d4 c2) c4 | 

  c2 d4 c2 bes4 |
  a4.( bes8[ a g]) f2 f4 |
  g2 g4 a2 g4 |
  f2( g4 a2) a4 |
  c2 d4 c2 bes4 |
  a4.( bes8[ a g]) f2 f4 | 

  g2 g4 a2 g4 |
  f2( g4 a2.) |
  d,2 d4 e2 e4 |
  f8([ e f g a bes] c2.) |
  a2 a4 g2 g4 |
  f2.~ f2 \bar "|."
}


altoMusic = \relative c' {
  \partial 4 c4 |
  d2 d4 e2 e4 |
  f2.~ f2 f4 |
  f( e) d4 c2 d4 |
  c( e g e2) e4 |
  
  f2 f4 e( f) g |
  cis,( d e) f2 f4 |
  f4( e8[ d]) e4 f2 e4 |
  f4.( g8[ f e] f2) f4 |
  
  f2 f4 g( f) g |
  g( f e) d2 f4~ |
  f e8[ d] e4 f2 e4~ |
  e a,( d cis2.) |
  
  d2 d4~ d c8[ d] e4~ |
  e d2( c2.) |
  c4( f8[ e]) f4 f2 e4 |
  f8 [ ees d c d bes] c2 \bar "|." 
}

altoWords = \lyricmode { 
  \set stanza = #"1. "
  In dul -- ci ju -- bi -- lo __
  Nun sing -- et und seid froh! __ _
  Al -- le un -- ser Won -- ne
  Liegt in præ -- se -- pi -- o, __
  Sie leuch -- tet wie \set associatedVoice = "altos" 
  die Son --
  \unset associatedVoice
  ne
  Ma -- tris in gre -- mi -- o __
  Al -- pha es et O! __
  Al -- pha es 
  \set associatedVoice = "altos"
  et O! __ 
}

altoWordsII = \lyricmode { 
  \set stanza = #"2. "
  O Je -- su, par -- vu -- le, __
  Nach Dir ist mir so weh. __ _
  Tröst mir mein Ge -- mü -- te, _
  O Puer op -- ti -- me, __ _
  Durch all Dei -- \set associatedVoice = "altos" 
  ne Gü --
  \unset associatedVoice
  te,
  O Prin -- ceps glo -- ri -- æ. __
  Tra -- he me post Te! __
  Tra -- he me 
  \set associatedVoice = "altos"
  post Te! __
}

altoWordsIII = \lyricmode { 
  \set stanza = #"3. "
  O Pa -- tris ca -- ri -- tas! __
  O na -- ti lem -- i -- tas! __
  Wir wär -- en all ver -- lor -- en,
  Per nos -- tra cri -- mi -- na; __
  So hat er uns \set associatedVoice = "altos" 
  er -- wor --
  \unset associatedVoice
  ben
  Cœ -- lo -- rum gau -- di -- a. __
  Quan -- ta gra -- ti -- a! __
  Quan -- ta gra -- 
  \set associatedVoice = "altos"
  ti -- a! __
}

altoWordsIV = \lyricmode { 
  \set stanza = #"4. "
  U -- bi sunt gau -- di -- a __ _
  Nir -- gend mehr denn da, __ _
  Wo die Eng -- el sing -- en _
  No -- va can -- ti -- ca __ _
  Und die Har -- \set associatedVoice = "altos" 
  fen kling --
  \unset associatedVoice
  en
  In Re -- gis cu -- ri -- a __
  E -- ia, wär’n wir da! __
  E -- ia, wär’n
  \set associatedVoice = "altos"
  wir da! __
}

tenorMusic = \relative c' {
  \partial 4 a4 |
  a2 bes4 c2 bes4 |
  a2( bes4 a2) a4 |
  a2 bes4 a( g) f |
  g( c b g2) g4 |
  
  a2 bes4 c( d) e |
  a,( b cis) d2 c4 |
  d( bes) c c2 c4 |
  c( a c c2) c4 |
  
  a2 bes4 g2 e'4 |
  e( d cis) a2 c4 |
  d( bes) c c2 c4 |
  a2( bes4 e,2.) |
  
  r8 f[ g a] bes[ a] g4( a8[ bes]) c[ bes] |
  a4.( g8 f4 g2.) |
  a4( bes) c d( bes) c~ |
  c bes8([ a bes g] a2) \bar "|."
}


bassMusic = \relative c {
  \partial 4 f4 |
  d( c) bes a( bes8[ a]) g[ a] |
  f([ f' ees d c bes] f'2) f4 |
  d( c) bes f'( e) d |
  e( c g c2) c4 |
  
  f2 bes4~ bes a g~ |
  g f( e) d2 a4 |
  bes( g) c f,8[ g a bes] c[ bes] |
  a4( f c f2) f4 |
  
  f'4( e) d e( d) c |
  f8([ g] a4 a,) 
  d2 a4 |
  bes( g) c f,8[ g a bes] c[ a] |
  d4( c bes a2.) |
  
  bes4( a) g c( bes) a |
  d8([ c d e f d] e2.) |
  f,4( g) a bes( g) c |
  a( bes2 f2) \bar "|."
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
        \context {
            \Staff \remove "Staff_performer"
        }
        \context {
            \Voice \consists "Staff_performer"
        }
    }
}
}

