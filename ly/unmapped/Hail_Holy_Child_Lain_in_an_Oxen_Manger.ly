﻿\version "2.14.2"

\header {
  title = "Hail! Holy Child, Lain in an Oxen Manger"
  poet = "George Ratcliffe Woodward (1848–1934)"
  composer = \markup{Flemish, \italic{Quittez, pasteurs, vos brebis et houlette}}
  arranger = "Arranged by Charles Wood (1866–1926)"
  %source = \markup { from  \italic {The Cambridge Carol Book}, 1924}
}

global = {
    \key f \major
    \time 4/4
    \autoBeamOff
    \tempo 4 = 180
}

sopMusic = \relative c' {
  \partial 4 c'4 |
  a2 g |
  f2. c4 |
  f g a bes |
  c2 c4 c |
  a2 g |
  f2. c4 |
  
  f g a bes |
  c2. f,4 |
  e2 g |
  c,2. f4 |
  e f g e |
  
  f( g) a  g |
  a g a b |
  c2. f4 |
  c2. f4 |
  e d c bes |
  
  a2 g |
  a r4 f' |
  c2. f4 |
  e d c bes |
  a2 g |
  \partial 2. f2.\fermata \bar "|."
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  e4 |
  f2. e4 |
  d2 c |
  d4 e f d |
  f2 e4 e |
  f2. e4 |
  d2 c |
  
  d4 e f d |
  e2. c4 |
  c2 c |
  c2 c |
  c4 d e c |
  
  c2 c4 e |
  f g f d |
  e2 f |
  e f |
  c4 d e e |
  
  f2. e4 |
  f2 f |
  e4( g) a( bes) g g a d, |
  e( f2) e4 |
  f2. \bar "|."
}
altoWords = \lyricmode {  
  
  \set stanza = #"1. "
  \set associatedVoice = "tenors"
  Hail! Ho -- ly Child,
  Lain in an ox -- en man -- ger,
  Of Je -- se stem,
  Yet scorn’d at Beth -- le -- hem,
  In win -- ter wild,
  As ne’er -- to -- fore was stran -- ger,
  Con -- strain’d, as I hear tell,
  Out -- side, out -- side
  a churl -- ish inn to dwell,
  Out -- side, out -- side
  a churl -- ish inn to dwell.
}
altoWordsII = \lyricmode {
  
%\markup\italic
  \set stanza = #"2. "
  \set associatedVoice = "tenors"
  Me -- thinks I stand
  To -- day in Da -- vid’s Ci -- ty,
  And twang the chord
  For Da -- vid’s Son and Lord:
  If, harp in hand,
  I make but tune -- less dit -- ty,
  Yet, Babe, Thou know’st that I
  As -- say, as -- say my best, a lul -- la -- by,
  As -- say, as -- say my best, a lul -- la -- by.
}
altoWordsIII = \lyricmode {
  
  \set stanza = #"3. "
  \set associatedVoice = "tenors"
  What if my flute
  Break time with An -- gel sing -- ers,
  Or not sur -- pass
  The Al -- to of yon ass;
  What if my lute
  Be pluck’d with art -- less fin -- gers,
  Or if my voice be Base,
  Now flat, now flat, now sharp, be -- reft of grace,
  Now flat, now flat, now sharp, be -- reft of grace.
}
altoWordsIV = \lyricmode {
  
  \set stanza = #"4. "
  \set associatedVoice = "tenors"
  Thou wilt ac -- cept
  My song, nor rep -- re -- hend it:
  For Thee, a -- bove
  All earth -- ly things, I love:
  And, tho’ in -- ept my lay,
  Thou wilt a -- mend it,
  And where ’tis out of joint,
  Canst make, canst make my false true coun -- ter -- point,
  Canst make, canst make my false true coun -- ter -- point.
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
  c4 |
  c2 c |
  a a |
  a4 c c bes |
  a2 g4 c |
  c2 c |
  a a |
  
  a4 c c bes |
  g2. a4 |
  g2 e4( f) |
  g2 a |
  c4 bes g g |
  
  a( bes) c c |
  c c c b |
  g2 c4( d) |
  g,2 c4( d) |
  c bes a g |
  
  f( a) bes2 |
  a4( bes) c( d) |
  e2 e4( d) |
  c4 bes a bes |
  c2 c |
  c2. \bar "|."
}
tenorWords = \lyricmode {

}

bassMusic = \relative c {
  c4 |
  f2 c |
  d a |
  d4 c f g |
  f2 c4 c |
  f2 c |
  d a |
  
  d4 c f g |
  c,2. f4 |
  c2. d4 |
  e2 f |
  c4 c c c |
  
  f2 f4 c |
  f e f g |
  c,2 a4( bes) |
  c2 a4( bes) |
  c c c c |
  
  d2 g |
  f4( g) a( bes) |
  c2 c,4( d) |
  e e f g |
  c,2 c |
  f2.\fermata \bar "|."
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
  >>
  \midi {
    \set Staff.midiInstrument = "flute"
  
    %\context { \Voice \remove "Dynamic_performer" }
  }
}
}

