﻿\version "2.14.2"

songTitle = "Blessed be that Maid Marie"
songPoet = "15th Century Middle English Carol, modernized"
tuneComposer = \markup{Melody from William Ballet’s \italic{Lute Book}, c. 1600}
tuneArranger = "Arranged by Charles Wood (1866–1926)"
tuneSource = \markup {from \italic {The Cowley Carol Book}, 1919}

global = {
    \key g \major
    \time 4/4
    \autoBeamOff
    \tempo 4 = 105
}

sopMusic = \relative c' {
  b'4 e e d |
  e d8[ c] b4.( c8) |
  d[ e] d[ c] b4 a8[ g] |
  
  fis8[ e] fis[ g] e2 |
  g8[ a] b[ c] b4 a8[ g] |
  fis[ e] fis[ g] e2 |
  
  g8[ a] b[ c] b4 a8[ g] |
  fis[ e] fis[ g] e2 \bar "||" 
  g4\segno g d d |
  
  e8[ fis] g[ a] b4.( c8) |
  d[ e] d[ c] b4 a8[ g] |
  fis[ e] fis[ g] e2\fermata \bar ":|" 
  \once \override Score.RehearsalMark #'break-visibility = #end-of-line-visible
  \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
  \mark "Fine."
  
  
  b'4 e e d |
  e d8[ c] b4.( c8) |
  d[ e] d[ c] b4 a8[ g] |
  
  fis8[ e] fis[ g] e2 |
  g8[ a] b[ c] b4 a8[ g] |
  fis[ e] fis[ g] e2 |
  
  g8[ a] b[ c] b4 a8[ g] |
  fis[ e] fis[ g] e2 \bar "||"
  \once \override Score.RehearsalMark #'break-visibility = #end-of-line-visible
  \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
  \mark "D.S. al Fine."
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  e4 e e8[ fis] g[ a] |
  b4 a g2 |
  g4 a g e |
  
  c c b( c) |
  b e d e |
  d d d( c) |
  
  d d8[ e] d4 e |
  d d e2 \bar "||"
  d4 c a d |
  
  d c8[ e] d2 |
  g4 a g e |
  d d d8([ c] b4) |
  
  
  
  
  e4 e e8[ fis] g[ a] |
  b4 a g2 |
  g4 a g e |
  
  c c b( c) |
  b e d e |
  d d d( c) |
  
  d d8[ e] d4 e |
  d d e2 \bar "||"
}
altoWords = \lyricmode {
  
  \set stanza = #"1. "
  \set associatedVoice = "basses"
  Bless -- ed
  \set associatedVoice = "altos"
  be __ that 
  \unset associatedVoice
  Maid Ma -- rie; __
  Born He was of her \set associatedVoice = "altos" bo -- \unset associatedVoice dy;
  
  Ve -- ry __ God ere time be -- gan,
  \set associatedVoice = "tenors"
  Born in __
  \unset associatedVoice
  time the Son of Man.
  \markup\italic E -- \markup\italic ya! \markup\italic Je -- \markup\italic sus \markup\italic ho -- \markup\italic di -- \markup\italic e __
  \markup\italic Na -- \markup\italic tus \markup\italic est \markup\italic de \markup\italic Vir --
  \set associatedVoice = "tenors"
  \markup\italic gi -- \markup\italic ne. __
  
  
  
  
  \set stanza = #"4. "
  \set associatedVoice = "basses"
  Fare three
  \set associatedVoice = "altos"
  Kings from
  \unset associatedVoice
  far -- off land, __
  In -- cense, gold and myrrh \set associatedVoice = "altos" in \unset associatedVoice hand;
  In Beth -- lem the Babe they see,
  \set associatedVoice = "tenors"
  \markup\italic Stel -- \markup\italic la
  \unset associatedVoice
  \markup\italic duc -- \markup\italic ti \markup\italic lu -- \markup\italic mi -- \markup\italic ne.
}
altoWordsII = \lyricmode {
  
%\markup\italic
  \set stanza = #"2. "
  \set associatedVoice = "basses"
  In a
  \set associatedVoice = "altos"
  man -- ger
  \unset associatedVoice
  of an ass __
  Je -- su lay and lull -- \set associatedVoice = "altos" ed \unset associatedVoice was;
  
  Born to __ die up -- on the Tree
  \set associatedVoice = "tenors"
  \markup\italic Pro \markup\italic pec --
  \unset associatedVoice
  \markup\italic can -- \markup\italic te \markup\italic ho -- \markup\italic mi -- \markup\italic ne.
  
  
  \repeat unfold 14 \skip1
  
  \set stanza = #"5. "
  \set associatedVoice = "basses"
  Make we
  \set associatedVoice = "altos"
  mer -- ry
  \unset associatedVoice
  on this fest, __
  \markup\italic In \markup\italic quo \markup\italic Chris -- \markup\italic tus \markup\italic na -- \set associatedVoice = "altos" \markup\italic tus \unset associatedVoice \markup{\italic "est" ";"}
  On this Child I pray you call,
  \set associatedVoice = "tenors"
  To as --
  \unset associatedVoice
  soil and save us all.
}
altoWordsIII = \lyricmode {
  
  \set stanza = #"3. "
  \set associatedVoice = "basses"
  Sweet and
  \set associatedVoice = "altos"
  bliss -- ful
  \unset associatedVoice
  was the song __
  Chant -- ed of the An -- \set associatedVoice = "altos" gel \unset associatedVoice throng,
  
  “Peace on earth,” Al -- le -- lu -- ia.
  \set associatedVoice = "tenors"
  \markup\italic In \markup\italic ex --
  \unset associatedVoice
  \markup\italic cel -- \markup\italic sis \markup\italic glo -- \markup\italic ri -- \markup\italic a.
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
  g4 g8[ a] b[ c] d4 |
  g, a d4.( c8) |
  b4 a d b |
  
  a a e2 |
  e8[ fis] g[ a] b4 b |
  b b g2 |
  
  g4 fis8[ g] g[ a] b4 |
  a d, g2 \bar "||"
  g4 e fis g |
  
  g c b4.( a8) |
  b4 a d b |
  a d, e8[( fis] gis4) |
  
  
  
  
  g4 g8[ a] b[ c] d4 |
  g, a d4.( c8) |
  b4 a d b |
  
  a a e2 |
  e8[ fis] g[ a] b4 b |
  b b g2 |
  
  g4 fis8[ g] g[ a] b4 |
  a d, g2 \bar "||"
}
tenorWords = \lyricmode {

}

bassMusic = \relative c {
  e4 e8[ fis] g[ a] b4 |
  e, fis g2 |
  g4 fis g g |
  
  a a, g( a) |
  e' e8[ c] g'4 g |
  b b, c2 |
  
  b4 d8[ c] g'4 g |
  d b c8([ d] e4) \bar "||"
  b4 c d b |
  
  c8[ d] e[ c] g'2 |
  g4 fis g g, |
  d' b a4( e')\fermata |
  
  
  
  
  e4 e8[ fis] g[ a] b4 |
  e, fis g2 |
  g4 fis g g |
  
  a a, g( a) |
  e' e8[ c] g'4 g |
  b b, c2 |
  
  b4 d8[ c] g'4 g |
  d b c8([ d] e4) \bar "||"
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
      \new Voice = "sopranos" { \voiceOne << \global \sopMusic >> }
      \new Voice = "altos" { \voiceTwo << \global \altoMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \sopWords
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
    >>
    \new Lyrics = "altosVI"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsVI
    \new Lyrics = "altosV"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsV
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((padding . -0.5))} \lyricsto "sopranos" \altoWords
    \new Lyrics \with { alignAboveContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "tenors" \tenorWords
  >>
  >>
  \layout { }
  \midi {
    \set Staff.midiInstrument = "flute" 
    %\context { \Voice \remove "Dynamic_performer" }
  }
}
}
