﻿\version "2.14.2"

\header {
    %source = \markup { "from" \italic {ChristmasCarolMusic.org}}
    %\concat{ "Music from " \italic "The Cowley Carol Book" ", 1919, Words from " \italic "HymnsAndCarolsOfChristmas.com"}}}

    title = "Quem Pastores"
    poet = "Anonymous, 14th Century"
    composer = "14th Century German"
    arranger = "Arranged by Rev. J.R. Lunn, B.D."
  }

global = {
    \key f \major
    \time 3/4
    \autoBeamOff
    \tempo 4 = 120
}

sopMusic = \relative c' {
  f2 a4 |
  c2 a4 |
  bes( c) d |
  c2 g4 |
  a( bes) c |
  
  bes( a) g |
  f2 d4 |
  e2 c4 |
  a'2 bes4 |
  c2 d4 |
  
  c2 g4 |
  a2 f4 |
  bes2 bes4 |
  a( g) c |
  c( a) b |
  c2 f,4 |
  f( d) e |
  f2. \bar "|."
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  f2 f4 |
  g2 f4 |
  f2 f4 |
  e4.( f8) g4 |
  f2 f4 f4.( e8) d[ e] |
  
  d4.( c8) b4 |
  c2 c4 |
  c2 d4 |
  e2 g8[ f] |
  e4( f) g |
  f2 d4~ |
  
  d4 g e |
  f( g8[ f]) e4 |
  a4.( g8) f4 |
  e2 c4 |
  d4.( c8) bes4 |
  c2. \bar "|."
}
altoWords = \lyricmode {
  
  \set stanza = #"1. "
  Quem pas -- to -- res lau -- da -- ve -- re,
  Qui -- bus an -- ge -- li di -- xe -- re,
  “Ab -- sit vo -- bis jam ti -- me -- \set associatedVoice = "tenors"
  re,
  Na -- \unset associatedVoice
  tus est Rex glo -- ri -- æ,
  Rex glo -- ri -- æ.”
}
altoWordsII = \lyricmode {
  
%\markup\italic
  \set stanza = #"2. "
  Ad quem ma -- gi am -- bu -- la -- bant,
  Au -- rum, thus, myr -- rham por -- ta -- bant,
  Im -- mo -- la -- bant hæc sin -- ce -- \set associatedVoice = "tenors"
  re
  Le -- \unset associatedVoice
  o -- ni vic -- to -- ri -- æ,
  vic -- to -- ri -- æ.
}
altoWordsIII = \lyricmode {
  
  \set stanza = #"3. "
  Ex -- ul -- te -- mus cum Ma -- ri -- a
  In cœ -- les -- ti hie -- rar -- chi -- a
  Na -- tum pro -- mat vo -- ce pi -- \set associatedVoice = "tenors"
  a
  Laus, \unset associatedVoice
  ho -- nor et glo -- ri -- a,
  et glo -- ri -- a.
}
altoWordsIV = \lyricmode {
  
  \set stanza = #"4. "
  Chris -- to re -- gi, De -- o na -- to,
  Per Ma -- ri -- am no -- bis da -- to,
  Me -- ri -- to re -- so -- net ve -- \set associatedVoice = "tenors"
  re
  Dul -- \unset associatedVoice
  ci cum me -- lo -- di -- a,
  me -- lo -- di -- a.
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
  a2 c4 |
  c2 c4 |
  bes( a) g |
  g c2 |
  c4( f4.) ees8 |
  d4( c) bes |
  
  a2 g4 |
  g4.( f8) g4 |
  a( g) f |
  g2 g4 |
  g2 c4 |
  c2 d4 |
  
  d4.( c8) bes4 |
  c2 c4 |
  c2 d4 |
  g,2 a8[ g] |
  f2 g4 |
  a2. \bar "|."
}
tenorWords = \lyricmode {

}

bassMusic = \relative c {
  f2 f4 |
  e2 f4 |
  d( c) bes |
  c4.( d8) e4 |
  f2 a,4 |
  bes( c) c |
  
  d8([ e] f4) g |
  c,4.( d8) e4 |
  f( e) d |
  c2 b4 |
  c( d) e |
  f2 bes4 |
  
  g2 g4 |
  f( e) a8[ g] |
  f4.( e8) d4 |
  c4.( bes8) a4 |
  bes4.( a8) g4 |
  f2. \bar "|."
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
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \sopWords
    \new Lyrics = "altosVI"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsVI
    \new Lyrics = "altosV"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsV
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((padding . -0.5))} \lyricsto "sopranos" \altoWords
    \new Lyrics \with { alignAboveContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "tenors" \tenorWords
    \new Lyrics \with { alignBelowContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "basses" \bassWords
  >>
  >>
  
  \midi {
    \set Staff.midiInstrument = "flute" 
    %\context { \Voice \remove "Dynamic_performer" }
  }
}
}

