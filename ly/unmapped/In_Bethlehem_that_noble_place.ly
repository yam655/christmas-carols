﻿\version "2.14.2"

\header {
  title = "In Bethlehem, that noble place"
  poet = "James Ryman, 1492"
  composer = "Sir Frederick A. G. Ouseley (1825–1889)"
  %source = \markup { "from" \italic {Christmas Carols, New and Old}}
}

global = {
    \key d \major
    \time 2/4
    \autoBeamOff
    \tempo 4 = 105
}

sopMusic = \relative c' {
  \partial 4 d4 |
  d4. d8 |
  d4 d |
  fis a |
  b b8\rest b |
  a[ b] a[ g] |
  
  fis[^\markup\italic"cresc." g] a4 |
  b8[ cis] d[ e] |
  cis4  \slurDotted a8( a) |
  b4 a |
  d4. a8 |
  b4 a |
  
  d e |
  cis a |
  d cis |
  b8[ a] b4 |
  a2 | 
  a8[ b] cis[ d] |
  
  e[ d] cis[ d] |
  e4 fis |
  d\fermata b8\rest b |
  a4 d |
  e fis |
  e4. d8 |
  d4 \bar ":|" 
  
  
  
  d,4 |
  d4. d8 |
  d4 d |
  fis a |
  b b8\rest b |
  a[ b] a[ g] |
  
  fis[^\markup\italic"cresc." g] a4 |
  b8[ cis] d[ e] |
  cis4  a4 |
  b4 a |
  d4. a8 |
  b4 a |
  
  d e |
  cis a |
  d cis |
  b8[ a] b4 |
  a2 \bar "||"
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  a4 |
  a4. b8 |
  a4 d |
  d e8[ fis] |
  g4 s8 g |
  e4 e |
  
  d d |
  g fis |
  e \slurDotted a8( a) |
  b4 a |
  d,4. fis8 |
  g4 a |
  
  fis e |
  e e |
  fis8[ gis] a4 |
  a gis |
  a2 |
  a4 a |
  
  a a |
  a a 
  fis s8 g |
  e4 d |
  g fis8[ g] |
  a[ b] g4 |
  fis4 |
  
  
  
  a,4 |
  a4. b8 |
  a4 d |
  d e8[ fis] |
  g4 s8 g |
  e4 e |
  
  d d |
  g fis |
  e a4 |
  b4 a |
  d,4. fis8 |
  g4 a |
  
  fis e |
  e e |
  fis8[ gis] a4 |
  a gis |
  a2 |
}
altoWords = {
  
  \lyricmode {
    \set stanza = #"1. "
    In Beth -- le -- hem, that no -- ble place,
    As by the Pro -- phet said it was,
    \set ignoreMelismata = ##t
    Of the
    \unset ignoreMelismata
    Vir -- gin Ma -- ry, filled with Grace,
    \markup\italic Sal -- \markup\italic va -- \markup\italic tor \markup\italic mun --
    \set associatedVoice = "sopranos"
    \markup\italic di \markup\italic na -- \markup\italic tus
    \unset associatedVoice
    \markup\italic est.
    
  }
  \set stanza = \markup\dynamic"ff  "
  \lyricmode {
    Be we mer -- ry in this Fest,
    \markup\italic In \markup\italic quo \markup\italic Sal -- \markup\italic va -- \markup\italic tor \markup\italic na -- \markup\italic tus \markup\italic est.
    
  }
  \set stanza = \markup{\dynamic" mf" "4."}
  \lyricmode{
    “No cause have ye to be a -- fraid,
    For why? this day is Je -- sus laid
  }
  \set stanza = \markup\dynamic"f  "
  \lyricmode{
    On Ma -- ry’s lap, that gen -- tle maid:
    \markup\italic Sal -- \markup\italic va -- \markup\italic tor \markup\italic mun --
    \set associatedVoice = "sopranos"
    \markup\italic di \markup\italic na -- \markup\italic tus \markup\italic est.
    \unset associatedVoice
  }
}
altoWordsII = {
  
  \set stanza = \markup{\dynamic"mf " "2. "}
  \lyricmode {
    On Christ -- mas night an An -- gel told
    The shep -- herds watch -- ing by their fold,
  }
  \set stanza = \markup\dynamic"f  "
  \lyricmode{
    In __ Beth -- le -- hem, full nigh the wold,
    \markup\italic “Sal -- \markup\italic va -- \markup\italic tor \markup\italic mun --
    \set associatedVoice = "sopranos"
    \markup\italic di \markup\italic na -- \markup\italic tus \markup\italic est.”
    \unset associatedVoice
    
    \repeat unfold 15 \skip1
    
    \set stanza = #"5."
    “And thus in faith find Him ye shall
    Laid poor -- ly in an ox -- ’s stall.”
    The shep -- herds then laud -- ed God all,
    \markup\italic Qui -- \markup\italic a \markup\italic Sal -- \markup\italic va --
    \set associatedVoice = "sopranos"
    \markup\italic tor \markup\italic na -- \markup\italic tus \markup\italic est.
    \unset associatedVoice
  }
}
altoWordsIII = \lyricmode {
  
  \set stanza = #"3. "
  The shep -- herds were en -- com -- passed right,
  A -- bout them shone a glo -- rious light,
  “Dread ye naught,” said the An -- gel bright,
  \markup\italic “Sal -- \markup\italic va -- \markup\italic tor \markup\italic mun --
  \set associatedVoice = "sopranos"
  \markup\italic di \markup\italic na -- \markup\italic tus \markup\italic est.”
  
}
altoWordsIV = \lyricmode {
}
altoWordsV = \lyricmode {
}
altoWordsVI = \lyricmode {
  \set stanza = #"6. "
  \set ignoreMelismata = ##t
}
tenorMusic = \relative c' {
  fis,4 |
  fis4. g8 |
  fis4 fis |
  b cis |
  d4 s8 d |
  a4 a |
  
  a d |
  g, a |
  a \slurDotted a8( a) |
  b4 a |
  d4. d8 |
  d4 d |
  
  d b |
  cis e |
  a,8[ b] cis[ d] |
  e[ fis] e[ d] |
  cis2 |
  cis8[ d] e[ d] |
  
  cis[ d] e[ d] |
  cis4 cis |
  d s8 d |
  cis4 a |
  b8[ cis] d4 |
  d cis |
  d |
  
  
  
  fis,4 |
  fis4. g8 |
  fis4 fis |
  b cis |
  d4 s8 d |
  a4 a |
  
  a d |
  g, a |
  a a4 |
  b4 a |
  d4. d8 |
  d4 d |
  
  d b |
  cis e |
  a,8[ b] cis[ d] |
  e[ fis] e[ d] |
  cis2 |
}
tenorWords = \lyricmode {

}

bassMusic = \relative c {
  d4 |
  d4. d8 |
  d4 d8[ cis] |
  b4 a |
  g4 d'8\rest b |
  cis4 cis |
  
  d fis |
  e d |
  a \slurDotted a'8( a) |
  b4 a |
  d4. d,8 |
  g4 fis |
  
  b gis |
  a cis, |
  d a |
  e' e |
  a,2 |
  a'4 a |
  
  a a |
  a fis |
  b\fermata d,8\rest g |
  g4 fis |
  e d |
  a' <a a,> |
  <a d,> |
  
  
  
  d,4 |
  d4. d8 |
  d4 d8[ cis] |
  b4 a |
  g4 d'8\rest b |
  cis4 cis |
  
  d fis |
  e d |
  a a'4 |
  b4 a |
  d4. d,8 |
  g4 fis |
  
  b gis |
  a cis, |
  d a |
  e' e |
  a,2 |
}
bassWords = \lyricmode {

}

  
\bookpart {
\score {
  <<
   \new ChoirStaff <<
%    \new Lyrics = sopranos \with { \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) }
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
     \new Lyrics = "altosVI"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsVI
    \new Lyrics = "altosV"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsV
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "altos" \altoWords
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

