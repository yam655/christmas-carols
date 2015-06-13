
\version "2.14.2"

\header {
  title = "Lætentur Cœli"
  composer = "Rev. Hubert Gruender, S.J."
  source = ""
}

global = {
    \key ees \major
    \time 4/4
    \autoBeamOff
    \tempo 4 = 120
}

sopMusic = \relative c' {
  \oneVoice
  \partial 4 r4 |
  r4 ees g aes |
  bes2 bes~ |
  bes4 bes8 bes c[ d] ees[ c] |
  bes2 g4 g8 g |
  c4( bes aes) g |
  g2 f4 r |
  
  d'2( c4) bes |
  ees2 d4 c |
  bes2( a4.) bes8 |
  bes2 r4 bes |
  f'2 ees4( d) |
  ees2 bes |
  r1 |
  
  r2 r4 bes |
  f'2 ees4( d) |
  ees2 bes |
  r1 |
  r1 |
  ees,2( g4) bes |
  des4. c8 c2 |
  
  c2( f4) ees |
  d2. \repeat volta 2 {
    bes4~ |
    bes1~ |
    bes2 bes4 bes |
    bes1~ |
    bes2 bes4 bes8([ c] |
    d4 ees) f f |
    
    f( d) c4( bes) |
    ees( bes) aes g |
  }
  \alternative {
    {
      g2 f4 
    }
    {
      c'2 f, 
    }
  }
  aes4.( g8 f2) |
  ees1 \bar "|."
  
}
sopWords = \lyricmode {
  Læ -- ten -- tur Cœ -- li __ et ex -- sul -- tet ter -- ra,
  et ex -- sul -- tet ter -- ra
  an -- te fa -- ci -- em Do -- mi -- ni.
  Læ -- ten -- tur __ cœ -- li
  
  Læ -- ten -- tur __ cœ -- li.
  An -- te fa -- ci -- em Do -- mi -- ni.
  Quo -- ni -- am ve -- nit,
  quo -- ni -- am ve -- nit, __
  quo -- ni -- am ve -- nit.
  
  ve -- nit, ve -- nit!
}

bassMusic = \relative c {
  \oneVoice
  \partial 4 bes4 |
  ees2. ees4 |
  d4( ees) f aes8 aes |
  g2( aes8[ bes]) c[ aes] |
  g4( f) ees r4 |
  r bes8 c d4 ees |
  ees2 d4 f(~ |
  
  f g a) bes |
  g( a bes) g8 ees |
  d4( f c8[ d]) ees4 |
  d2 r |
  r4 f bes aes |
  g( bes) aes g8 g |
  f4( g aes) bes |
  
  aes2 g4 r |
  r f bes aes |
  g( bes) aes g8 g |
  f4( g aes) bes |
  aes2 g |
  r4 ees2 g4 |
  bes4. aes8 aes2 |
  
  r4 f4.( g8) a4 |
  bes2. 
  \repeat volta 2 {
    bes,4( |
    ees4 d) ees f |
    ees2 bes4 g'4~(  |
    g f) g aes |
    g2 f4 bes( |
    aes g) f ees |
    
    d2 d4 r |
    r bes8[ c] d4 ees |    
  }
  \alternative {
    {
      ees2 d4
    }
    {
      ees2 ees
    }
  }
  d2.( f4) |
  g1 \bar "|."
}
bassWords = \lyricmode {
  Læ -- ten -- tur Cœ -- li et ex -- sul -- tet ter -- ra,
  et ex -- sul -- tet ter -- ra
  an -- te fa -- ci -- em Do -- mi -- ni.
  Læ -- ten -- tur cœ -- li et ex -- sul -- tet ter -- ra.
  
  Læ -- ten -- tur cœ -- li et ex -- sul -- tet ter -- ra.
  An -- te fa -- ci -- em Do -- mi -- ni.
  Quo -- ni -- am ve -- nit,
  quo -- ni -- am ve -- nit,
  quo -- ni -- am ve -- nit,
  quo -- ni -- am ve -- nit.
  
  ve -- nit, ve -- nit!
}

\bookpart {
\score {
  <<
   \new ChoirStaff <<
    \new Staff = women <<
      \new Voice = "sopranos" { \global \sopMusic }
    >>
    \new Lyrics \with { alignBelowContext = #"women" } \lyricsto "sopranos" \sopWords
   \new Staff = men <<
      \clef bass
      \new Voice = "basses" { \global \bassMusic }
    >>
    \new Lyrics \with { alignBelowContext = #"men" } \lyricsto "basses" \bassWords
  >>
  >>
  \layout { }
  
}

\score {
  \unfoldRepeats

  <<
   \new ChoirStaff <<
    \new Staff = women <<
      \new Voice = "sopranos" { \global \sopMusic }
    >>
    \new Lyrics \with { alignBelowContext = #"women" } \lyricsto "sopranos" \sopWords
   \new Staff = men <<
      \clef bass
      \new Voice = "basses" { \global \bassMusic }
    >>
    %\new Lyrics \with { alignAboveContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "tenors" \tenorWords
    \new Lyrics \with { alignBelowContext = #"men" } \lyricsto "basses" \bassWords
  >>
  >>
  
  \midi {
    \set Staff.midiInstrument = "flute"
  
    %\context { \Voice \remove "Dynamic_performer" }
  }
}
}


