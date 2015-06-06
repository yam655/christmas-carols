\version "2.14.2"
\include "util.ly"
\header { 
    title = "Es ist ein Ros entsprungen"
    poet = "15th Century German"
    composer = "Arranged by Michael Praetorius (1571–1621)"
    tagline = \markup { from \italic {Christmas Carols and Hymns for School and Choir}, 1910}
  }

global = {
  \key g \major
  \time 4/4
  %\override DynamicLineSpanner #'staff-padding = #0.0
  %\override DynamicLineSpanner #'Y-extent = #'(-1 . 1)
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
  b4\! a2 g4( |
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
  \dropLyricsV
  \set stanza = #"1. "
  Es ist ein Ros ent -- sprung -- en,
  aus ein -- er Wur -- zel zart,
  wie uns die Alt -- en sung -- en,
  von Jes -- se war __ die Art
  Und hat ein Blüm -- lein bracht
  mit -- ten im kalt -- en Win -- ter,
  wohl zu der halb -- en Nacht.
}
altoWordsII = \lyricmode {
  \dropLyricsV
  \set stanza = #"2. "
  Das Rös -- lein, das ich mein -- e,
  da -- von Je -- sai -- a sagt,
  ist Ma -- ri -- a die rei -- ne
  die uns das Blüm -- lein bracht.
  Aus Got -- tes ew’ -- gem Rat
  hat sie ein Kind ge -- bor -- en
  und blieb ein rei -- ne Magd.
}
altoWordsIII = \lyricmode {
  \dropLyricsV
  \set stanza = #"3. "
  Das Blüm -- e -- lein, so klein -- e,
  das duf -- tet uns __ so süß,
  mit sein -- em hel -- len Schein -- e
  ver -- treibt’s die Fin -- ster -- nis.
  Wahr Mensch und wahr -- er Gott,
  hilft uns aus al -- lem Leid -- e,
  ret -- tet von Sünd und Tod.
}
altoWordsIV = \lyricmode {
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
  -zel zart,
  \repeat unfold 11 { \skip 1 }
  die Art
  \repeat unfold 17 { \skip 1 }
  -en Nacht.
}
bassWordsII = \lyricmode {
  \repeat unfold 11 { \skip 1 }
  -a sagt,
  \repeat unfold 11 { \skip 1 }
  -lein bracht.
  \repeat unfold 17 { \skip 1 }
  -ne Magd.
}
bassWordsIII = \lyricmode {
  \repeat unfold 11 { \skip 1 }
  so süß,
  \repeat unfold 11 { \skip 1 }
  -ster -- nis.
  \repeat unfold 17 { \skip 1 }
  und Tod.
}

pianoRH = \relative c' {
  
}
pianoLH = \relative c' {
  
}

\score {
  <<
   \new ChoirStaff <<
%    \new Lyrics = sopranos \with { \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) }
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
    \new Lyrics \with { alignAboveContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((padding . 0.2)) } \lyricsto "tenors" \tenorWords
%{IF_LESSER
    \new Lyrics \with { alignBelowContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)(padding . 0.2)) } \lyricsto "basses" \bassWordsIII
%}%END_IF_LESSER
    \new Lyrics \with { alignBelowContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)(padding . 0.2)) } \lyricsto "basses" \bassWordsII
    \new Lyrics \with { alignBelowContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)(padding . 0.2)) } \lyricsto "basses" \bassWords
  >>
%    \new PianoStaff << \new Staff { \new Voice { \pianoRH } } \new Staff { \clef "bass" \pianoLH } >>
  >>
  \layout { }
  
  \midi {
    \tempo 4 = 100
    \set Staff.midiInstrument = "flute"
  
    \context {
      \Voice
      \remove "Dynamic_performer"
    }
  }
}
