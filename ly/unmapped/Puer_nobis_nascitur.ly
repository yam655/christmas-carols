\version "2.14.2"

\header {
    title = "Puer nobis nascitur"
    poet = \markup{Words and tune (14th cent.) from \italic{Piæ Cantiones}, 1582}
    composer = "Arranged by G.H. Palmer"
    source = \markup{ from \italic {The Cowley Carol Book}, 1919}
  }

global = {
    \key d \major
    \time 4/4
    \autoBeamOff
    \tempo 4 = 120
}

sopMusic = \relative c' {
  \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
  \mark \markup\italic"To be sung in Unison."
  d4 e fis g |
  fis e \slurDotted d4( d) |
  a'4 a b cis |
  d2 d2 \bar "||"
  d4 e cis d |
  
  b a a fis |
  a g fis e |
  d( e) fis g |
  a g fis e |
  d4( d) d2 \bar "|."
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  d1~|
  d4 cis d2 |
  d g~ |
  g4 fis8[ e] fis2 \bar "||"
  fis4 g e d |
  
  d2 cis4 d |
  d2 cis |
  b4 cis d2 |
  cis4 d cis2 |
  d4 b a2 \bar "|."
}
altoWords = \lyricmode {
  \set stanza = #"1. "
  Pu -- er no -- bis na -- sci -- tur
  Rec -- tor An -- ge -- lo -- rum,
  In hoc mun -- do pa -- sci -- tur
  Do -- mi -- nus do -- mi -- no -- rum,
  Do -- mi -- nus do -- mi -- no -- rum.
}
altoWordsII = \lyricmode {
  \set stanza = #"2. "
  \set ignoreMelismata = ##t
  In præ -- se -- pe po -- si -- tum
  Sub fœ -- no
  \unset ignoreMelismata
  a -- si -- no -- rum
  Co -- gno -- ve -- runt Do -- mi -- num
  Chris -- tum Re -- gem cæ -- lo -- rum,
  Chris -- tum Re -- gem cæ -- lo -- rum.
}
altoWordsIII = \lyricmode {
  \set stanza = #"3. "
  Hunc He -- ro -- des ti -- mu -- it
  Ma -- gno cum tre -- mo -- re,
  In in -- fan -- tes ir -- ru -- it
  Hos cæ -- dens in fu -- ro -- re,
  Hos cæ -- dens in fu -- ro -- re.
}
altoWordsIV = \lyricmode {
  \set stanza = #"4. "
  Qui na -- tus ex Ma -- ri -- a
  Di -- e ho -- di -- er -- na
  Duc nos tu -- a gra -- ti -- a
  Ad gau -- di -- a su -- per -- na,
  Ad gau -- di -- a su -- per -- na.
}
altoWordsV = \lyricmode {
  \set stanza = #"5. "
  Te Sal -- va -- tor A et O
  Can -- te -- mus in cho -- ro,
  Can -- te -- mus in or -- ga -- no,
  \set ignoreMelismata = ##t
  Be -- ne -- di -- ca -- mus Do -- mi -- no,
  Be -- ne -- di -- ca -- mus Do -- mi -- no.
}
altoWordsVI = \lyricmode {
  \set stanza = #"6. "
  \set ignoreMelismata = ##t
}
tenorMusic = \relative c' {
  fis,4 g a b |
  a4. g8 fis2 |
  a4 d~ d g, |
  a1 \bar "||"
  b4~b a~ a |
  
  g fis e d |
  a' b a g |
  fis2. d4 |
  e b' a g |
  fis g fis2 \bar "|."
}
tenorWords = \lyricmode {

}

bassMusic = \relative c {
  d2. g,4 |
  a2 d |
  fis g4 e |
  d1 \bar "||"
  b'4 e, a fis |
  
  g d a b |
  fis g a2 |
  b2.~ b4 |
  a1 |
  d2 d, \bar "|."
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
    \new Lyrics \with { alignAboveContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \sopWords
    \new Lyrics = "altosVI"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsVI
    \new Lyrics = "altosV"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsV
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWords
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

