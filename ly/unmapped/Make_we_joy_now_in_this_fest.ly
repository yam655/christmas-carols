﻿\version "2.14.2"

\header {
  title = "Make we joy now in this fest"
  poet = "Old English Carol"
  composer = "Old English Carol"
  arranger = "Arranged by George Ratcliffe Woodward (1848–1934)"
  %source = \markup{ "from " \italic "The Cowley Carol Book" ", 1919"}
}

global = {
    \key g \major
    \time 3/4
    \autoBeamOff
    \tempo 4 = 165
}

sopMusic = \relative c' {
  \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
  \mark "Chorus"
  \repeat volta 3 {
    b'2 b4 |
    b2 d4 |
    c2 b8[ a] |
    g2. |
    b2 d4 |
    b2 a4 |
    
    g4 fis2 |
    e2. |
    \time 14/4
    b'2( a4 b c b) b2( a g1\fermata) \bar "||"
    \once \override Score.RehearsalMark #'break-visibility = #end-of-line-visible
    \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
    \mark "Fine." 
    \time 3/4 
    
    d'4^"Verse" |
    e2 d4 |
    d2 b4 |
    d2 c4 |
    b2 d4 |
    \slurDotted
    e4( e) e4 |
    
    \slurSolid
    d2 b4 |
    b2 a4 |
    g2  g4 |
    b2 b4 |
    a2 a4 |
    
    c2 b8[ a] |
    g2 g4 |
    b4 d2 |
    b4 a2 |
    g4 fis2 |
    e2.\fermata 
    
  }
  
  d'4 |
  e2 d4 |
  d2 b4 |
  d2 c4 |
  b2 d4 |
  e2 e4 |
  
  d2 b4 |
  b2 a4 |
  g2  g4 |
  b2 b4 |
  a2 a4 |
  
  c2 b8[ a] |
  g2 g4 |
  b4 d2 |
  b4 a2 |
  g4 fis2 |
  e2.\fermata
  \once \override Score.RehearsalMark #'break-visibility = #end-of-line-visible
  \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
  \mark "D.C." \bar "||" 
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  g'2 g4 |
  g2 g4 |
  g2 fis4 |
  g2. |
  g2 a4 |
  g2 fis4 |
  
  e4 dis2 |
  e2. |
  \time 14/4
  d2( d c4 d) d1( b) \bar "||"
  \time 3/4
  
  g'4 |
  g2 fis4 |
  g2 g4 |
  g2 g4 |
  g2 g4 |
  \slurDotted
  g4( g) a4 |
  
  \slurSolid
  fis2 g4 |
  fis2 fis4 |
  g2 g4 |
  g2 g4 |
  e2 f4 |
  
  g2 f4 |
  e2 d4 |
  e4 fis2 |
  d4 c2 |
  e4 e( dis) e2.
  
  
  
  g4 |
  g2 fis4 |
  g2 g4 |
  g2 g4 |
  g2 g4 |
  g2 a4 |
  
  fis2 g4 |
  fis2 fis4 |
  g2 g4 |
  g2 g4 |
  e2 f4 |
  
  g2 f4 |
  e2 d4 |
  e4 fis2 |
  d4 c2 |
  e4 e( dis) e2. \bar "||"
}
altoWords = \lyricmode {
  
  Make we joy now in this fest
  \markup\italic In \markup\italic quo \markup\italic Chris -- \markup\italic tus \markup\italic na -- \markup\italic tus \markup\italic est.
  \markup\italic E -- \markup\italic ia. __
  
  \set stanza = #"1. "
  \markup\italic A \markup\italic Pa -- \markup\italic tre \markup\italic U -- \markup\italic ni -- \markup\italic gen -- \markup\italic i -- \markup\italic tus
  Is through a maid -- en come to us:
  Sing we of Him and say Wel -- come,
  \markup\italic Ve -- \markup\italic ni, \markup\italic Re -- \markup\italic dem -- \markup\italic ptor
  \set associatedVoice = "sopranos"
  \markup\italic gen -- \markup\italic ti -- \markup\italic um.
  
  
  \set stanza = #"4. "
  \unset associatedVoice
  \markup\italic Ma -- \markup\italic ri -- \markup\italic a \markup\italic ven -- \markup\italic tre \markup\italic con -- \markup\italic ce -- \markup\italic pit,
  The Ho -- ly Ghost was ay her with,
  Of her in Beth -- lem born He is,
  \markup\italic Con -- \markup\italic sors \markup\italic pa -- \markup\italic ter -- \markup\italic ni
  \set associatedVoice = "sopranos"
  \markup\italic lu -- \markup\italic mi -- \markup\italic nis.
}
altoWordsII = \lyricmode {
  
  \repeat unfold 16{\skip1}
  \set stanza = #"2. "
  \markup\italic A -- \markup\italic gno -- \markup\italic scat \markup\italic o -- \markup\italic mne \markup\italic sæ -- \markup\italic cu -- \markup\italic lum,
  A bright star made three kings to come,
  Him for to seek with their pre -- sen’s,
  \markup\italic Ver -- \markup\italic bum \markup\italic su -- \markup\italic per -- \markup\italic num
  \set associatedVoice = "sopranos"
  \markup\italic prod -- \markup\italic i -- \markup\italic ens.
  
  
  \set stanza = #"5. "
  \unset associatedVoice
  \markup\italic O \markup\italic lux \markup\italic be -- \markup\italic a -- \markup\italic ta \markup\italic Tri -- \markup\italic ni -- \markup\italic tas,
  He lay be -- tween an ox and ass,
  Be -- side His moth -- er maid -- en free,
  \markup\italic Glo -- \markup\italic ri -- \markup\italic a \markup\italic Ti -- \markup\italic bi,
  \set associatedVoice = "sopranos"
  \markup\italic Do -- \markup\italic mi -- \markup\italic ne.
}
altoWordsIII = \lyricmode {
  
  \repeat unfold 16{\skip1}
  \set stanza = #"3. "
  \markup\italic A \markup\italic so -- \markup\italic lis \markup\italic or -- \markup\italic tus \markup\italic car -- \markup\italic di -- \markup\italic ne
  \set ignoreMelismata = ##t
  So might -- y a Lord is none as He;
  \unset ignoreMelismata
  And to our kind He hath Him knit,
  \markup\italic A -- \markup\italic dam \markup\italic pa -- \markup\italic rens \markup\italic quod
  \set associatedVoice = "sopranos"
  \markup\italic pol -- \markup\italic lu -- \markup\italic it.
}
altoWordsIV = \lyricmode {
  \repeat unfold 16{\skip1}
}
altoWordsV = \lyricmode {
  \repeat unfold 16{\skip1}
}
altoWordsVI = \lyricmode {
  \set stanza = #"6. "
  \set ignoreMelismata = ##t
}
tenorMusic = \relative c' {
  d2 d4 |
  e2 d4 |
  e2 d8[ c] |
  b2. |
  e2 a,4 |
  d2 c4 |
  
  b4 b2 |
  g2. |
  \time 14/4
  g2( a g4 g) g2( fis g1) \bar "||"
  \time 3/4
  
  b4 |
  c( b) a |
  b( c) d |
  d2 e4 |
  d2 b4 |
  \slurDotted
  c( b) a |
  
  \slurSolid
  a( b) g |
  d'2 d4 |
  b2 e4 |
  d2 e4 |
  c2 c8[ d] |
  
  e2 d8[ c] |
  b2 b4 |
  g a2 |
  g4 e( fis) |
  g8[ a] b2 |
  g2.
  
  
  b4 |
  c( b) a |
  b( c) d |
  d2 e4 |
  d2 b4 |
  c( b) a |
  
  a( b) g |
  d'2 d4 |
  b2 e4 |
  d2 e4 |
  c2 c8[ d] |
  
  e2 d8[ c] |
  b2 b4 |
  g a2 |
  g4 e( fis) |
  g8[ a] b2 |
  g2. \bar "||"
}
tenorWords = \lyricmode {

}

bassMusic = \relative c {
  g'2 g4 |
  e2 b4 |
  c2 d4 |
  e2. |
  e2 fis4 |
  g2 a4 |
  
  b4 b,2 |
  e2. |
  \time 14/4
  g2( fis e4 g) b,2( d g1\fermata) \bar "||"
  \time 3/4
  
  g4 |
  c,2 d4 |
  g2 g4 |
  b2 c4 |
  g2 g4 |
  \slurDotted
  e4( e) c4 |
  
  \slurSolid
  d2 e4 |
  b2 d4 |
  g2 c4 |
  g2 e4 |
  a( g) f |
  
  c2 d4 |
  e2 g4 |
  e4 d2 |
  g,4 a2 |
  e'4 b2 |
  e2.\fermata
  
  
  g4 |
  c,2 d4 |
  g2 g4 |
  b2 c4 |
  g2 g4 |
  e2 c4 |
  
  d2 e4 |
  b2 d4 |
  g2 c4 |
  g2 e4 |
  a( g) f |
  
  c2 d4 |
  e2 g4 |
  e4 d2 |
  g,4 a2 |
  e'4 b2 |
  e2.\fermata \bar "||"
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

