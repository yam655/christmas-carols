\version "2.14.2"

\header {
    title = "Unto us is born a Son"
    subtitle = "(The same, in English)"
    poet = \markup{Words and tune (14th cent.) from \italic{Piæ Cantiones,} 1582}
    composer = "Arranged by G.H. Palmer"
  }

global = {
    \key d \major
    \time 4/4
    \autoBeamOff
    \tempo 4 = 120
}

sopMusic = \relative c' {
  d4 e fis g |
  fis e \slurDotted d4( d) |
  a'4 a b cis |
  d2 d4( d) \bar "||"
  d4 e cis d |
  
  b a a fis |
  a g fis e |
  d( e) fis g |
  a g fis e |
  d4( d) d2 \bar "|."
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  d1~|
  d4 cis d2 |
  d g~ |
  g4 fis8[ e] fis2 \bar "||"
  fis4 g e d |
  
  d2 cis4 d |
  d2 cis |
  b4 cis d2 |
  cis4 d cis2 |
  d4 b a2 \bar "|."
}
altoWords = \lyricmode {
  \set stanza = #"1. "
  \set ignoreMelismata = ##t
  Un -- to us is born a Son, _
  King of Quires su -- per -- nal: _
  \unset ignoreMelismata
  See on earth His life be -- gun,
  Of lords the Lord e -- ter -- nal,
  Of lords the Lord e -- ter -- nal,
}
altoWordsII = \lyricmode {
  \set stanza = #"2. "
  Christ, from heav’n de -- scend -- ing low,
  Comes on earth a stran -- ger:
  Ox and ass their Own -- er know
  Be -- cra -- dled in the man -- ger,
  Be -- cra -- dled in the man -- ger.

}
altoWordsIII = \lyricmode {
  \set stanza = #"3. "
  \set ignoreMelismata = ##t
  This did Her -- od sore af -- fray,
  \unset ignoreMelismata
  And griev -- ous -- ly be -- wil -- der;
  So he gave the word to slay,
  And slew the lit -- tle chil -- der,
  And slew the lit -- tle chil -- der.
}
altoWordsIV = \lyricmode {
  \set stanza = #"4. "
  Of His love and mer -- cy mild
  \set ignoreMelismata = ##t
  This the Christ -- mas sto -- ry:
  \unset ignoreMelismata
  And O that Ma -- ry’s gen -- tle Child
  Might lead us up to glo -- ry,
  Might lead us up to glo -- ry!
  
}
altoWordsV = \lyricmode {
  \set stanza = #"5. "
  \set ignoreMelismata = ##t
  \markup\italic O \markup\italic et \markup\italic A \markup\italic et \markup\italic A \markup\italic et \markup\italic O,
  \markup\italic Cum \markup\italic can -- \markup\italic ti -- \markup\italic bus \markup\italic in \markup\italic cho -- \markup\italic ro,
  \markup\italic Cum \markup\italic can -- \markup\italic ti -- \markup\italic cis \markup\italic et \markup\italic or -- \markup\italic ga -- \markup\italic no,
  \markup\italic Be -- \markup\italic ne -- \markup\italic di -- \markup\italic ca -- \markup\italic mus \markup\italic Do -- \markup\italic mi -- \markup\italic no.
  \markup\italic Be -- \markup\italic ne -- \markup\italic di -- \markup\italic ca -- \markup\italic mus \markup\italic Do -- \markup\italic mi -- \markup\italic no.
}
altoWordsVI = \lyricmode {
  \set stanza = #"6. "
  \set ignoreMelismata = ##t
}
tenorMusic = \relative c' {
  fis,4 g a b |
  a4. g8 fis2 |
  a4 d~ d g, |
  a1 \bar "||"
  b4~b a~ a |
  
  g fis e d |
  a' b a g |
  fis2. d4 |
  e b' a g |
  fis g fis2 \bar "|."
}
tenorWords = \lyricmode {

}

bassMusic = \relative c {
  d2. g,4 |
  a2 d |
  fis g4 e |
  d1 \bar "||"
  b'4 e, a fis |
  
  g d a b |
  fis g a2 |
  b2.~ b4 |
  a1 |
  d2 d, \bar "|."
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
    \new Lyrics = "altosVI"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsVI
    \new Lyrics = "altosV"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsV
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWords
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

