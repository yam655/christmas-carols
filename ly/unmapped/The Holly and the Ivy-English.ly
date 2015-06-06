﻿\version "2.14.2"
\include "util.ly"
\header {
  title = "The Holly and the Ivy"
  poet = "17th Century English"
  composer = "English"
  %arranger = \markup"Arranged by BHB"
  tagline = ""
}

global = {
  \key g \major
  \time 3/4
  \autoBeamOff
  %\override DynamicLineSpanner #'staff-padding = #0.0
  %\override DynamicLineSpanner #'Y-extent = #'(-1 . 1)
}

sopMusic = \relative c'' {
  \partial 4 g4 |
  g8\noBeam g8 g4 e' |
  \slurDotted d4( b4.) g8 |
  g\noBeam( g) g\noBeam( g) e'\noBeam( e) |
  d2 \bar"" \break
  
  \slurSolid d8[ c] |
  b8\noBeam a g4 \slurDotted b8\noBeam( b) |
  e,\noBeam e d4 \slurSolid g8[ a] |
  b\noBeam c b4 \slurDotted a8\noBeam( a) |
  g2 b8\rest \bar""\break
  
  g8 |
  g\noBeam g\noBeam g4 e'4 |
  \slurSolid d( b) g8\noBeam g |
  g\noBeam g g4 e' |
  d2 \bar""\break d8[ c] |
  
  b8\noBeam a g4 b |
  e,8\noBeam e d4 g8\noBeam a |
  b\noBeam c b4 a |
  \partial 2 g2\fermata \bar "|."
  
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  d4 |
  e8\noBeam e d4 g |
  \slurDotted g( g4.) e8 |
  d8\noBeam( d) e\noBeam( e) g\noBeam( g) |
  \slurSolid g4( fis) |
  
  fis8[ a] |
  g8\noBeam fis e4 \slurDotted fis8\noBeam( fis) |
  e8\noBeam e d4 \slurSolid e8[ d] |
  d8\noBeam g g4 \slurDotted fis8\noBeam( fis) |
  g2 s8 |
  
  d8 |
  e\noBeam e d4 \slurSolid g |
  g2 e8\noBeam e |
  d\noBeam d e4 g |
  g( fis) fis8[ a] |
  
  g\noBeam fis e4 fis |
  e8\noBeam e d4 e8\noBeam d |
  d\noBeam g g4 fis |
  g2 \bar "|."
}
altoWords = {
  \dropLyricsV
  \lyricmode {
    \set stanza = #"1."
    \set ignoreMelismata = ##t
    The hol -- ly and the i -- vy,
    When they are both _ full __ _ grown,
    Of __ _ all the trees that are in the wood,
    The _ hol -- ly bears the __ _ crown:
  
    \unset ignoreMelismata
  }
  \set stanza = \markup\dynamic"f "
  \lyricmode{
    %\set associatedVoice = "basses"
    The ris -- ing of the sun __
    And the run -- ning of the deer,
    The play -- ing of the mer -- ry or -- gan,
    Sweet sing -- ing in the choir.
  }
}
altoWordsII = \lyricmode {
  \dropLyricsV
  \set stanza = #"2."
  \set ignoreMelismata = ##t
  The hol -- ly bears a blos -- som,
  As white __ _ as the lil -- ly flow’r,
  And _ Ma -- ry bore sweet _ Je -- sus Christ, To __ _ be our sweet Sav -- _ ior:
}
altoWordsIII = {
  \dropLyricsV
  \set stanza = \markup{\dynamic"mf " "3."}
  \lyricmode {
    \set ignoreMelismata = ##t
    The hol -- ly bears a ber -- ry,
    As red as an -- _ y __ _ blood,
    And _ Ma -- ry bore sweet _ Je -- sus Christ, To __ _ do poor sin -- ners _ good:
  }
}
altoWordsIV = \lyricmode {
  \dropLyricsV
  \set stanza = #"4."
  \set ignoreMelismata = ##t
  The hol -- ly bears a prick -- le, As sharp as an -- _ y __ _ thorn,
  And _ Ma -- ry bore sweet _ Je -- sus Christ, On _ Christ -- mas day in the morn:
}
altoWordsV = \lyricmode {
  \dropLyricsV
  \set stanza = #"5."
  \set ignoreMelismata = ##t
  The hol -- ly bears a bark, __ _ As bit -- ter as __ _ an -- y gall,
  And _ Ma -- ry bore sweet _ Je -- sus Christ, For _ to re -- deem us __ _ all:
}
altoWordsVI = \lyricmode {
}
tenorMusic = \relative c' {
  b4 |
  c8\noBeam c b4 c |
  \slurDotted b4( d4.) b8 |
  b\noBeam( b) b\noBeam( b) c\noBeam( c) |
  a2 |
  
  \slurSolid a8[ d] |
  e8\noBeam d e4 \slurDotted d8\noBeam( d) |
  c\noBeam c b4 \slurSolid b8[ a] |
  g\noBeam e' d4 \slurDotted d8\noBeam( c) |
  b2 s8 |
  
  b8 |
  c\noBeam c b4 c |
  \slurSolid b( d) b8\noBeam b |
  b\noBeam b b4 c |
  a2 a8[ d] |
  
  e8\noBeam d e4 d |
  c8\noBeam c b4 b8\noBeam a |
  g\noBeam e' d4 c |
  b2 \bar "|."
}
tenorWords = \lyricmode {

}

bassMusic = \relative c' {
  g4 |
  c,8\noBeam e g4 c, |
  \slurDotted g'4( g4.) e8 |
  g8\noBeam( g) e\noBeam( e) c\noBeam( e) |
  d2 |
  
  \slurSolid d8[ fis] |
  g8\noBeam a b4 \slurDotted b8\noBeam( b) |
  c8\noBeam c, g'4 \slurSolid e8[ fis] |
  g\noBeam c, g'4 \slurDotted d8\noBeam( d) |
  g2 d8\rest |
  
  g8 |
  c,\noBeam e\noBeam g4 c,4 |
  \slurSolid g'2 e8\noBeam e |
  g\noBeam g e4 c |
  d2 d8[ fis] |
  
  g\noBeam a b4 b |
  c8\noBeam c, g'4 e8\noBeam fis |
  g\noBeam c, g'4 d |
  g2\fermata \bar "|."
}
bassWords = \lyricmode {

}

pianoRH = \relative c' {
  
}
pianoLH = \relative c' {
  
}

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
    \new Lyrics = "altosVI"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \altoWordsVI
    \new Lyrics = "altosV"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \altoWordsV
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "sopranos" \altoWords
    \new Lyrics \with { alignAboveContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "tenors" \tenorWords
    \new Lyrics \with { alignBelowContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "basses" \bassWords
  >>
%    \new PianoStaff << \new Staff { \new Voice { \pianoRH } } \new Staff { \clef "bass" \pianoLH } >>
  >>
  \layout { }
  \midi {
    \tempo 4 = 120
    \set Staff.midiInstrument = "flute"
  
    \context {
      \Voice
      \remove "Dynamic_performer"
    }
  }
}
