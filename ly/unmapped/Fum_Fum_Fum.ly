\version "2.14.2"

\header {
  title = "Fum, Fum, Fum"
  poet = "Catalonian"
  composer = "Arranged by Abel Di Marco, Pbro."
  %source = \markup { from \italic "cpdl.org" "and" \italic"pucpr.edu"}
}

global = {
    \key c \major
    \time 3/4
    \autoBeamOff
    \tempo 4 = 88
}

sopMusic = \relative c' {
  \slurDotted
  \tempo 4 = 88
  a'8. gis16 a8 c b a |
  gis( e) a b8\rest gis b\rest
  \time 2/4 a2 \bar "||" 
  
  \time 3/4 a8. gis16 a8 c b a |
  gis( e) a b8\rest gis b\rest
  \time 2/4 a4. a16 b | 
  \repeat volta 2 {
    c8 c b b |
    
    c c b b |
    c c b b |
    c4 b8\rest b16 c |
    d8. c16 b8 a |
    gis e a gis |
    
    %page2
    a8 c b a |
    \time 3/4 gis8^\markup\italic"rall. before 2nd ending" e a b\rest gis b\rest |
  }
  \alternative {
    {
      \time 2/4 a4. a16 b
    }
    {
      \time 2/4 a2 \bar "|."
    }
  }
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  \slurDotted
  e8. e16 e8 e f f |
  e( e) e s e s |
  e2 |
  
  e8. e16 e8 e f f |
  e( e) e s e s |
  e4. a16 gis |
  \repeat volta 2 {
    a8 a gis gis |
    
    a a f f |
    g g f f |
    g4 s8 gis16 a |
    b8. a16 gis8 f |
    e e e e |
    
    %page2
    e e f f |
    e e e s e s |
  }
  \alternative {
    { e4. a16 gis }
  
    { e2 \bar "|." }
  }
}
altoWords = \lyricmode {
  
  \set ignoreMelismata = ##t
  \set stanza = #"1. "
  Twen -- ty -- fifth day of De -- cem -- ber,
  \markup\italic Fum, \markup\italic fum, \markup\italic fum!
  Twen -- ty -- fifth day of De -- cem -- ber,
  \markup\italic Fum, \markup\italic fum, \markup\italic fum!
  
  For a bless -- ed Babe was born
  Up -- on this day at break of morn
  In a man -- ger poor and low -- ly
  Lay the Son of God most ho -- ly
  \markup\italic Fum, \markup\italic fum, \markup\italic fum!
  
  For a
  \markup\italic fum!
  
}
altoWordsII = \lyricmode {
  
  \set ignoreMelismata = ##t
%\markup\italic
  \set stanza = #"2. "
  Praise we now the Lord a -- bove, __ _
  \markup\italic Fum, \markup\italic fum, \markup\italic fum!
  Praise we now the Lord a -- bove, __ _
  \markup\italic Fum, \markup\italic fum, \markup\italic fum!
  Now we all our voi -- ces raise
  And sing a song of grate -- ful praise
  Cel -- e -- brate in song and sto -- ry
  All the won -- ders of His glo -- ry
  \markup\italic Fum, \markup\italic fum, \markup\italic fum!
  
  Now we
  \markup\italic fum!
}
altoWordsIII = \lyricmode {
  \set stanza = #"3. "
  \set ignoreMelismata = ##t
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
  \slurDotted
  c8. b16 c8 e d c |
  b( gis) a r b r |
  c2 |
  
  c8. b16 c8 e d c |
  b( gis) a r b r |
  c4. c16 d |
  \repeat volta 2 {
    e8 e d d |
    
    e e d d |
    e e d d |
    e4 s8 d16 e |
    f8. e16 d8 c |
    b gis c b |
    
    %page2
    c8 e d c |
    b gis a r b r |
  }
  \alternative {
    { c4. c16 d }
  
    { c2 \bar "|." }
  }
}
tenorWords = \lyricmode {

}

bassMusic = \relative c {
  \slurDotted
  a8 e' a a d, d |
  e( d) c d e e |
  a e a,4 |
  
  a8 e' a a d, d |
  e( d) c d e e |
  a e a,4 |
  \repeat volta 2 {
    a e' |
    
    a d,\rest |
    g g c, d8\rest e16 e |
    d8 e e d |
    e e a e |
    
    %page2
    a8 a d, d |
    e d c d e e |
  }
  \alternative {
    { a e a,4 }
  
    { a'8 e a,4 \bar "|." }
  }
}
bassWords = \lyricmode {
  \repeat unfold 7 \skip1
  \markup\italic Fum, \markup\italic fum, \markup\italic fum, \markup\italic fum, 
  \markup\italic fum, \markup\italic fum, \markup\italic fum.
  
  \repeat unfold 7 \skip1
  \markup\italic Fum, \markup\italic fum, \markup\italic fum, \markup\italic fum, 
  \markup\italic fum, \markup\italic fum, \markup\italic fum.
  
  \markup\italic Fum, \markup\italic fum, \markup\italic fum,
  \markup\italic fum, \markup\italic fum, \markup\italic fum.
  
  \repeat unfold 16 \skip1
  \markup\italic Fum, \markup\italic fum, \markup\italic fum, \markup\italic fum, 
  \markup\italic fum, \markup\italic fum, \markup\italic fum.
  
  
  \markup\italic fum, \markup\italic fum, \markup\italic fum.
  
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
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWords
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "tenors" \tenorWords
    \new Lyrics \with { alignBelowContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 0) (padding . -0.5)) } \lyricsto "basses" \bassWords
  >>
  >>
  \layout { }
  
}

\score {
  \unfoldRepeats

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
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWords
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "tenors" \tenorWords
    \new Lyrics \with { alignBelowContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 0) (padding . -0.5)) } \lyricsto "basses" \bassWords
  >>
  >>
  
  \midi {
    \set Staff.midiInstrument = "flute" 
    %\context { \Voice \remove "Dynamic_performer" }
  }
}
}

