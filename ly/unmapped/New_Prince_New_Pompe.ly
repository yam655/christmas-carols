\version "2.14.2"

\header {
  title = "New Prince, New Pompe"
  poet = "Robert Southwell (1560–1593)"
  composer = \markup {Tune of \italic"We are poor frozen-out gardeners"}
  arranger = "Arranged by Charles Wood (1866–1926)"
  %source = \markup \concat{ "from " \italic "The Cambridge Carol Book" ", 1924"}
}

global = {
    \key bes \major
    \time 4/4
    \autoBeamOff
    \tempo 4 = 105
}

sopMusic = \relative c' {
  \partial 4 d4 |
  g g g8[ f] g[ a] |
  bes4 bes c c |
  d4. c8 bes[ a] g4 |
  
  f2( d4)  d |
  g g g8[ f] g[ a] |
  bes4 bes c c |
  
  d4. c8 c[ bes] g4 |
  g2.  d'8[ ees] |
  f4 d d8[ c] bes4 |
  c c d bes8[ c] |
  d4 g, g8[ f] d4 |
  
  f2.  d4 |
  g g g8[ f] g[ a] |
  bes4 bes c c |
  d4. c8 c[ bes] g4 |
  g2.\fermata \bar "|."
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  d4 |
  d d ees c |
  d d c f |
  f f d ees |
  
  c2( d4) d |
  d d ees c |
  d d c f |
  
  f ees f ees |
  d2. g4 |
  f f a g |
  g f f ees |
  d ees8[ d] c4 d |
  
  c2. d4 |
  bes d ees c |
  d d c f |
  f ees f4. ees8 |
  d2. \bar "|."
}
altoWords = \lyricmode {
  
  \set stanza = #"1. "
  Be -- houlde a se -- ly ten -- der Babe
  In frees -- ing win -- ter nighte, __
  In home -- ly man -- ger trem -- bling lies:
  A -- las, a pit -- ious sighte:
  The inns are full, no man will yelde
  This lit -- tle Pil -- grime bedd:
  But forced He is with se -- ly beastes
  In cribbe to \set associatedVoice = "tenors" shroude His headd.
}
altoWordsII = \lyricmode {
  
%\markup\italic
  \set stanza = #"2. "
  De -- spise not Him for ly -- ing there,
  First what He is en -- quire: __
  An or -- ient perle is of -- ten found
  In depth of dir -- ty mire.
  Waye not His cribbe, His wod -- den dishe,
  Nor beastes that by Him feede:
  Waye not His Moth -- er’s poore at -- tire,
  Nor Jo -- sephe’s \set associatedVoice = "tenors" sim -- ple weede.
  \set ignoreMelismata = ##t
}
altoWordsIII = \lyricmode {
  
  \set stanza = #"3. "
  This sta -- ble is a Prin -- ce’s courte,
  The cribbe His chaire of state: __
  The beastes are par -- cell of His pompe,
  The wod -- den dishe His plate.
  The par -- sons in that poor at -- tire
  His roy -- all live -- ries weare:
  The Prince Him -- self is come from heav’n,
  This pompe is \set associatedVoice = "tenors" pris -- èd there.
  \set ignoreMelismata = ##t
}
altoWordsIV = \lyricmode {
  
  \set stanza = #"4. "
  With joye ap -- proch, O Christ -- en wighte,
  Do hom -- age to thy Kinge: __
  And high -- ly prise this hum -- ble pompe,
  Which He from heav’n doth bring:
  With joye ap -- proch, O Christ -- en wighte,
  Do hom -- age to thy Kinge:
  And high -- ly prise this hum -- ble pompe,
  Which He from \set associatedVoice = "tenors" heav’n doth bring.
  \set ignoreMelismata = ##t
}
altoWordsV = \lyricmode {
  \set stanza = #"5. "
  \set ignoreMelismata = ##t
}
altoWordsVI = \lyricmode {
  \set stanza = #"6. "
  \set ignoreMelismata = ##t
}
tenorMusic = \relative c {
  d4 |
  bes' d c c |
  bes g g a |
  bes a bes bes |
  
  bes( a bes) d, |
  bes' d c c |
  bes g g a |
  
  bes g f g8[ a] |
  bes2. bes4 |
  c d f d |
  c a bes g |
  bes g c bes |
  
  bes2( a4) d, |
  g g c c |
  bes g g a |
  bes g f g8[ a] |
  b2. \bar "|."
}
tenorWords = \lyricmode {

}

bassMusic = \relative c {
  d4 |
  g, bes c ees |
  g4. f8 ees4 f |
  bes f g ees |
  
  f2( bes,4) d |
  g, bes c ees |
  g4. f8 ees4 f |
  
  bes ees, d c |
  g2. g'4 |
  a bes f g |
  ees f bes, ees |
  bes c8[ bes] a4 bes |
  
  f'2. d4 |
  ees bes c ees |
  g4. f8 ees4 f |
  bes ees, d c |
  g2.\fermata \bar "|."
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
    \new Lyrics = "altosVI"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWordsVI
    \new Lyrics = "altosV"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWordsV
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "altos" \altoWords
    \new Lyrics \with { alignAboveContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "tenors" \tenorWords
  >>
%    \new PianoStaff << \new Staff { \new Voice { \pianoRH } } \new Staff { \clef "bass" \pianoLH } >>
  >>
  \layout { }
  \midi {
    \set Staff.midiInstrument = "flute"
  
    %\context { \Voice \remove "Dynamic_performer" }
  }
}
}

