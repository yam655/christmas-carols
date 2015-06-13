\version "2.14.2"

\header {
  title = "Kling Glöckchen"
  poet = "Karl Enslin (1819–1875)"
  composer = "Traditional German"
  %source = \markup { "from " \italic "The Wartburg Hymnal" \oldStyleNum", 1918"}
}

global = {
    \key g \major
    \time 4/4
    \autoBeamOff
    \tempo 4 = 120
}

sopMusic = \relative c'' {
  d2 b4 c |
  d8 e d e d4 b\rest |
  c2 a4 d |
  b2 b\rest | 
  a4 a b g |
  
  b2 a |
  c4 c d a |
  c2 b |
  a4 a b cis |
  d2 a |
  
  b4 e d cis |
  e2 d4 b\rest | 
  d2 b4 c |
  d8 e d e d4 b\rest |
  c2 a4 d |
  g,2 b\rest |
  \bar "|."
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  g'2 d4 fis |
  g8 g g fis g4 s |
  fis2 fis4 fis |
  g2 s |
  fis4 fis g d |
  
  g2 fis |
  fis4 fis a fis |
  a2 g |
  g4 g g g |
  fis2 fis |
  
  g4 g fis e |
  g2 fis4 s |
  g2 d4 fis |
  g8 g g fis g4 s |
  e2 fis4 fis |
  g2 s \bar "|."
}
altoWords = \lyricmode {
  
  Kling, Glöck -- chen kling -- e -- ling -- e -- ling!
  Kling, Glöck -- chen kling!
  
  \set stanza = #"1. "
  Laßt mich ein, ihr Kind -- er!
  Ist so kalt der Win -- ter!
  Öff -- net mir die Tü -- ren!
  Laßt mich nicht er -- frie -- ren!
  
  Kling, Glöck -- chen kling -- e -- ling -- e -- ling!
  Kling, Glöck -- chen kling!
}
altoWordsII = \lyricmode {
  
%\markup\italic
  %Kling, Glöck -- chen kling -- e -- ling -- e -- ling!
  %Kling, Glöck -- chen kling!
  \repeat unfold 12 \skip1
  \set stanza = #"2. "
  Mäd -- chen, hört, und Büb -- chen,
  Macht mir auf das Stüb -- chen!
  Bring euch vie -- le Ga -- ben,
  Sollt euch dran er -- la -- ben!
  
  %Kling, Glöck -- chen kling -- e -- ling -- e -- ling!
  %Kling, Glöck -- chen kling!
}
altoWordsIII = \lyricmode {
  
  %Kling, Glöck -- chen kling -- e -- ling -- e -- ling!
  %Kling, Glöck -- chen kling!
  \repeat unfold 12 \skip1
  \set stanza = #"3. "
  Hell er -- glühn die Ker -- zen,
  Öff -- net mir die Her -- zen,
  Will drin woh -- nen fröh -- lich,
  From -- mes Kind, wie se -- lig!
  
  %Kling, Glöck -- chen kling -- e -- ling -- e -- ling!
  %Kling, Glöck -- chen kling!
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
  b2 b4 d |
  b8 c b c b4 s |
  d2 d4 d |
  d2 s |
  d4 d d b |
  
  d2 d |
  d4 a d d |
  d2 d |
  cis4 cis d e |
  d2 d |
  
  g,4 b a a |
  cis2 d4 s |
  b2 b4 d |
  b8 c b c b4 s |
  a2 d4 c |
  b2 s |
  \bar "|."
}
tenorWords = \lyricmode {
}
tenorWordsII = \lyricmode {
}

bassMusic = \relative c {
  g'2 g4 d |
  g8 g g d g4 d\rest |
  a'2 d,4 d |
  g2 d\rest |
  d4 d g, g' |
  
  d2 d |
  d4 d fis d |
  g2 g |
  a4 a a a |
  d,2 d |
  
  g4 e a a |
  a2 d,4 d\rest |
  g2 g4 d |
  g8 g g d g4 d\rest |
  c2 d4 d |
  g2 d\rest \bar "|."
}
bassWordsII = \lyricmode {
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
    \new Lyrics = "altosVI"  \with { alignBelowContext = #"women"  \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \altoWordsVI
    \new Lyrics = "altosV"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsV
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women"  \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \altoWords
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)(padding . -0.35)) } \lyricsto "tenors" \tenorWords
    \new Lyrics \with { alignAboveContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)(padding . -0.35)) } \lyricsto "tenors" \tenorWordsII
    \new Lyrics \with { alignBelowContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)(padding . -0.35)) } \lyricsto "basses" \bassWordsII
    \new Lyrics \with { alignBelowContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)(padding . -0.35)) } \lyricsto "basses" \bassWords
  >>
  >>
  \layout { }
  \midi {
    \set Staff.midiInstrument = "flute" 
    %\context { \Voice \remove "Dynamic_performer" }
  }
}
}

