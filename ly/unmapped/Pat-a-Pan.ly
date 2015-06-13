\version "2.14.2"

\header {
  title = "Pat-a-Pan"
  poet = \markup\italic"Guilló, pran ton tamborin"
  composer = "Burgundian carol, 1720"
  arranger = "Arranged by Charles Wood (1866–1926)"
  %source = \markup { Music from \italic {The Cambridge Carol Book}, 1924}
}

global = {
    \key c \major
    \time 4/4
    \autoBeamOff
    \tempo 4 = 150
}

sopMusic = \relative c' {
  \partial 2 a'4 a |
  e' e d e |
  c b8 c d4 b |
  e2 c |
  b2  b4 c |
  
  b gis a b |
  c2 a8 b c d |
  e2 d8 e d c |
  b2  b4 c |
  
  b gis a b |
  c b8 c d4 c8[ b] |
  e2 b |
  a \bar "|."
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  e4 e |
  e gis gis e |
  e e8 e f4 e |
  e2 e |
  e e4 e |
  
  e e a e |
  e2 a8 a a a |
  g2 f8 g f e |
  d2 g4 e |
  
  e e a e |
  e d8 e f4 e |
  e4( a2) gis4 |
  a2 \bar "|."
}

altoWords = \lyricmode { 
  \set stanza = #"1. "
  Wil -- lie, get your lit -- tle drum,
  Rob -- in, bring your flute and come.
  Aren’t they fun to play up -- on?
  \markup\italic Tu -- \markup\italic re -- \markup\italic lu -- \markup\italic re -- \markup\italic lu,
  \markup\italic pat -- \markup\italic a -- \markup\italic pat -- \markup\italic a -- \markup\italic pan,
  When you play your fife and drum,
  \set associatedVoice = "basses"
  How can an -- y -- one be glum?
}
altoWordsII = \lyricmode {
  
%\markup\italic
  \set stanza = #"2. "
  When the men of old -- en days
  Gave the King of Kings their praise,
  They had pipes to play up -- on.
  \markup\italic Tu -- \markup\italic re -- \markup\italic lu -- \markup\italic re -- \markup\italic lu,
  \markup\italic pat -- \markup\italic a -- \markup\italic pat -- \markup\italic a -- \markup\italic pan,
  And al -- so the drums they’d play,
  \set associatedVoice = "basses"
  Full of joy, on Christ -- mas Day.
}
altoWordsIII = \lyricmode {
  
  \set stanza = #"3. "
  God and man to -- day be -- come
  Close -- ly joined as flute and drum.
  Let the joy -- ous tune play on!
  \markup\italic Tu -- \markup\italic re -- \markup\italic lu -- \markup\italic re -- \markup\italic lu,
  \markup\italic pat -- \markup\italic a -- \markup\italic pat -- \markup\italic a -- \markup\italic pan,
  As the in -- stru -- ments you play,
  \set associatedVoice = "basses"
  We will sing, this Christ -- mas Day.
}
altoWordsIV = \lyricmode {
  \set stanza = #"4. "
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
tenorMusic = \relative c' {
  c4 c |
  b b b b |
  c d8 c a4 gis |
  a2 a |
  gis gis!4 a |
  
  b e d b |
  a2 c8 d e f |
  e4( c) a8 a a a |
  b2 b4 a |
  
  b e d b |
  a a8 a a4 gis |
  a8[ b c d] e2 |
  c \bar "|."
}
tenorWords = \lyricmode {

}

bassMusic = \relative c {
  a'4 a |
  gis e e gis |
  a a8 a d,4 e |
  c2 a8[ b c d] |
  e2 e4 a |
  
  gis e fis gis |
  a2 f8 f f f |
  c4( e) f8 f f f |
  g2 e4 a |
  
  gis4 e fis gis |
  a a8 a d,4 e |
  c( a) e'2 |
  a \bar "|."
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
    \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \sopWords
    \new Lyrics = "altosVI"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsVI
    \new Lyrics = "altosV"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsV
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \altoWords
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

