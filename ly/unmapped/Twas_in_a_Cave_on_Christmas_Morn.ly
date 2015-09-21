\version "2.14.2"

songTitle = "’Twas in a Cave on Christmas Morn"
songPoet = "George Ratcliffe Woodward (1848–1934)"
tuneComposer = \markup{\italic{Dich grüssen wir, O Jesulein}, 1623}
tuneArranger = "Arranged by Charles Wood (1866–1926)"
tuneSource = \markup {from \italic {The Cambridge Carol Book}, 1924}

global = {
    \key g \major
    \time 3/4
    \autoBeamOff
    \tempo 4 = 180
}

sopMusic = \relative c' {
  \repeat volta 2 {
    g'4 g a |
    b( a) d |
    cis2 cis4 |
    d2 d4
    cis2 cis4 |
    d2. | 
    
    d4 d e |
    d2 b4 |
    c( b) a |
    b2 g4 |
    a2 b4 |
    c a2 |
    g2.~ |
    g 
  }
}
  

altoMusic = \relative c' {
  d4 d fis |
  g( fis) a |
  a2 a4 |
  fis2 a4 |
  a( g) e |
  fis2. |
  
  g4 a g |
  a2 g4 |
  g2 e4 |
  dis2 b4 |
  d2 d4 |
  e4 d2 |
  b2.~ |
  b
}
altoWords = \lyricmode {
  
  \set stanza = #"1. "
  ’Twas in a cave on Christ -- mas morn,
  No -- el, No -- el,
  Je -- sus, the Son of God was born,
  No -- el, No -- el, No -- el. __
  
  \set stanza = #"4. "
  Then was ful -- fill’d the thing fore -- told,
  E -- ia, E -- ia,
  In ho -- ly writ by bards of old,
  E -- ia, E -- ia, E -- ia. __
}
altoWordsII = \lyricmode {
  
%\markup\italic 
  \set stanza = #"2. "
  See in a crib the heav’n -- ly Child,
  Lul -- lay, Lul -- lay,
  Cra -- dled by Ma -- ry, Maid -- en mild,
  Lul -- lay, Lul -- lay, Lul -- lay. __
  
  \set stanza = #"5. "
  Arm -- ies An -- gel -- ic sang for mirth
  \markup\italic Cum \markup\italic Ma -- \markup\italic ri -- \markup\italic a,
  Mar -- vel -- lous glad o’er Je -- su’s birth
  \markup\italic Ex \markup\italic Ma -- \markup\italic tre \markup\italic Ma -- \markup\italic ri -- \markup\italic a. __
  \set ignoreMelismata = ##t
}
altoWordsIII = \lyricmode {
  
  \set stanza = #"3. "
  Thi -- ther -- ward kings and herd -- men drew
  To Eph -- ra -- tha,
  For to a -- dore the Babe Je -- su,
  At Beth -- lem Eph -- ra -- tha. __
  
  \set stanza = #"6. "
  \markup\italic Glo -- \markup\italic ri -- \markup\italic a \markup\italic ti -- \markup\italic bi, \markup\italic Do -- \markup\italic mi -- \markup\italic ne,
  Al -- le -- lu -- ia,
  \markup\italic Qui \markup\italic na -- \markup\italic tus \markup\italic es \markup\italic pro \markup\italic ho -- \markup\italic mi -- \markup\italic ne,
  Al -- le -- _ _ lu -- ia. __
}
altoWordsIV = \lyricmode {
}
altoWordsV = \lyricmode {
}
altoWordsVI = \lyricmode {
}
tenorMusic = \relative c' {
  b4 d c |
  d2 d4 |
  e2 e4 |
  d2 d4 |
  e2 a,4 |
  a2. |
  
  b4 a b |
  d2 d4 |
  e2 e,4 |
  fis2 g4 |
  g(fis) g |
  g fis2 |
  g2.~ |
  g
}
tenorWords = \lyricmode {

}

bassMusic = \relative c {
  g'4 b a |
  g( d) fis |
  a2 a4 |
  d,2 fis4 |
  a2 a4 |
  d,2. |
  
  g4 fis e |
  fis2 g4 |
  e2 c4 |
  b2 e4 |
  d2 g4 |
  c,4 d2 |
  g,2.~ |
  g
}
bassWords = \lyricmode {

}

  

\bookpart { 
\header {
  title = \songTitle 
  poet = \songPoet 
  composer = \tuneComposer 
  arranger = \tuneArranger 
  source = \tuneSource 
}

\score {
  <<
   \new ChoirStaff <<
    \new Staff = women <<
      \new Voice = "sopranos" { \voiceOne << \global {\sopMusic 
        \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
        \mark "Additional Verses"
        \sopMusic}>> }
      \new Voice = "altos" { \voiceTwo << \global \repeat unfold2\altoMusic >> }
    >>
    \new Lyrics = "altosVI"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWordsVI
    \new Lyrics = "altosV"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWordsV
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWords
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \repeat unfold2\tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \repeat unfold2\bassMusic >> }
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

