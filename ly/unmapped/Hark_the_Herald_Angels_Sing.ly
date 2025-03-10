﻿\version "2.14.2"

\header {
  title = "Hark! the Herald Angels Sing"
  poet = "Charles Wesley (1707–1788)"
  composer = "Felix Mendelssohn (1809–1847)"
  %source = \markup { "from" \concat{\italic "Christmas Carols and Hymns for School and Choir" ", 1910"}}
}

global = {
    \key g \major
    \time 4/4
    \autoBeamOff
    \tempo 4 = 112
}

sopMusic = \relative c' {
  d4 g g4. fis8 |
  g4 b b( a) |
  d d d4. c8 |
  b4 a b2 |
  
  d,4 g g4. fis8 |
  g4 b b( a) |
  d a a4. fis8 |
  fis4 e d2 |
  
  d'4 d d g, |
  c b b( a) |
  d d d g, |
  c b b( a) |
  
  e' e e d |
  c b c2 |
  a4 b8[ c] d4. g,8 |
  g4 a b2 | 
  
  e4. e8 e4 d |
  c b c2 |
  a4 b8[ c] d4. g,8 |
  g4 a g2 \bar "|."
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  d4 d d4. d8 |
  d4 g g( fis) |
  g fis e a |
  g fis g2 |
  
  d4 d d4. d8 |
  b4 g' g2 |
  fis4 e fis4. d8 |
  d4 cis d2 |
  
  d4 d d g |
  a g g( fis) |
  d d d g |
  a g g( fis) |
  
  g g g gis |
  a gis a2 |
  fis4 fis g4. d8 |
  e4 fis g2 |
  
  c4 c c b |
  a gis a2 |
  d,4 fis g4. d8 |
  d4 fis d2 \bar "|."
}
altoWords = \lyricmode {
  
  \set stanza = #"1. "
  \set associatedVoice = "altos"
  Hark! the her -- ald an -- gels sing, __ “Glo -- ry to the new -- born King!
  \unset associatedVoice
  Peace on earth, and
  \set associatedVoice = "basses"
  mer -- cy mild; __
  \unset associatedVoice
  God and sin -- ners re -- con -- ciled.”
  Joy -- ful all ye na -- tions, rise; __
  Join the tri -- umph of the skies;
  With th’an -- gel -- ic hosts pro -- claim,
  “Christ is born in Beth -- le -- hem.”
  
  
  \set associatedVoice = "basses"
  Hark the her -- ald
  an -- gels sing,
  \unset associatedVoice
  Glo -- ry to the new -- born King.
}
altoWordsII = \lyricmode {
  
  \set stanza = #"2. "
  \set associatedVoice = "altos"
  Christ, by high -- est heav’n a -- dored; Christ, the ev -- er -- last -- ing Lord;
  \unset associatedVoice
  Late in time be -- hold
  \set associatedVoice = "basses"
  Him come, __
  \unset associatedVoice
  Off -- spring of the Vir -- gin’s womb.
  Veil’d in flesh the God -- head see; __
  Hail th’In -- car -- nate De -- i -- ty, __
  Pleased as Man with man to dwell, Je -- sus, our Em -- man -- u -- el!
}
altoWordsIII = \lyricmode {
  
  \set stanza = #"3. "
  \set associatedVoice = "altos"
  Mild He lays His glo -- ry by, __
  Born that man no more may die,
  \unset associatedVoice
  Born to raise the
  \set associatedVoice = "basses"
  sons of earth, __
  \unset associatedVoice
  Born to give them sec -- ond birth.
  Ris’n with heal -- ing in His wings,
  Light and life to all He brings,
  Hail, the Sun of Right -- eous -- ness!
  Hail, the heav’n born Prince of Peace!
}
altoWordsIV = \lyricmode {
  
}

tenorMusic = \relative c' {
  b4 b b4. a8 |
  g4 d' d2 |
  d4 d e e |
  d d d2 |
  
  b4 b b4. a8 |
  g4 d' e2 |
  d4 e a,4. a8 |
  b4 g fis2 |
  
  d'4 d d d |
  d d d2 |
  d4 d d d |
  d d d2 |
  
  e4 e c d |
  e e e2 |
  d4 d d4. b8 |
  b4 d d2 |
  
  e4 e e d |
  c e e2 |
  d4 d d4. b8 |
  b4 c b2 \bar "|."
}
tenorWords = \lyricmode {

}

bassMusic = \relative c' {
  g4 g g d |
  b g d'2 |
  b4 b c c |
  d d g,2 |
  
  g'4 g g d |
  e d cis4.( a8) |
  b4 cis d fis, |
  g a d2 |
  
  d'4 d d b |
  fis g d2 |
  d'4 d d b |
  fis g d2 |
  
  c4 c c b |
  a e' a2 |
  c4 c b g |
  e d g,2 |
  
  c'4 c c b |
  a e a( g) |
  fis c' b g |
  d d g2 \bar "|."
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
    \new Lyrics \with { alignAboveContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \sopWords
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
    >>
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWords
    \new Lyrics \with { alignAboveContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "tenors" \tenorWords
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


