﻿\version "2.14.2"

songTitle = "Christmas Day"
songPoet = "tr. by Rev. H.R. Bramley (1833–1917) from Latin"
tuneComposer = "Sir John Stainer (1840–1901)"
tuneSource = \markup {from \italic {Christmas Carols, New and Old}}

global = {
    \key e \major
    \time 4/4
    \autoBeamOff
    \tempo "Allegro vivace." 4 = 105
}

sopMusic = \relative c' {
  gis'4. gis8 a4 gis |
  fis b e,2 |
  gis4 ais b dis |
  cis2 b |
  
  b4. b8 cis4 b |
  ais dis b2 |
  b4 cis dis fis |
  cis2 b |
  
  e4 dis cis b |
  a cis b( a) |
  gis fis e a |
  gis2 fis \bar "||" 
  
  b4 gis fis4. gis8 |
  a4 fis e( fis) |
  gis gis b8[ a] gis4 |
  fis e fis2 |
  
  e'4. dis8 b4 cis |
  gis a b( cis) |
  dis e b8[ a] gis4 |
  gis fis e2 \bar "|."
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  e4 e e e |
  e dis e2 |
  gis4 fisis gis gis |
  gis( fis8[ e]) dis2 |
  
  gis4. gis8 gis4 gis |
  gis fisis gis2 |
  dis4 fis fis fis |
  e2 dis |
  
  e4 fis e eis |
  fis fis fis2 |
  e4 fis e fis |
  e2 dis \bar "||"
  
  gis4 e dis4. e8 |
  fis4 dis cis( dis) |
  e e fis e |
  cis e dis2 |
  
  cis'4. b8 gis4 a |
  e fis gis( a) |
  a gis fis e |
  e dis e2 \bar "|."
}
altoWords = {
  
  \lyricmode {
    \set stanza = #"1. "
    \set associatedVoice = "basses"
    Wake all mu -- sic’s ma -- gic pow’rs,
    On this bliss -- ful morn -- ing,
    Born to -- day, the Child is ours,
    Theme of Pro -- phet’s warn -- ing;
    \unset associatedVoice
    Gi -- ant in the race He tow’rs,
    Toil and dan -- ger scorn -- ing.
  }
  
  \set stanza = \markup\dynamic"p "
  \lyricmode {
    O that bless -- ed go -- ing out, __
    Which sal -- va -- tion brought a -- bout,
  }
  
  \set stanza = \markup\dynamic "ff  "
  \lyricmode {
    O that bless -- ed go -- ing out, __
    Which sal -- va -- tion brought a -- bout.
  }
}
altoWordsII = \lyricmode {
  
%\markup\italic
  \set stanza = #"2. "
  \set associatedVoice = "basses"
  Let this glo -- rious hol -- i -- day
  Find such ho -- ly spend -- ing,
  That the sim -- ple -- heart -- ed may
  Joy with -- out of -- fend -- ing,
  And sweet cha -- ri -- ty may stay,
  With our con -- course blend -- ing.
}
altoWordsIII = {
  
  \set stanza = \markup{\dynamic"mf  " "3. "}
  \lyricmode {
    \set associatedVoice = "basses"
    Give we glo -- ry to this Feast,
  }
  \set stanza = \markup\dynamic"  ff "
  \lyricmode{
    For man’s res -- to -- ra -- tion:
  }
  \set stanza = \markup\dynamic"mf  "
  \lyricmode{
    Now the guil -- ty is re -- leased,
  }
  \set stanza = \markup\dynamic"  ff "
  \lyricmode{
    Freed from con -- dem -- na -- tion:
  }
  \set stanza = \markup\dynamic"mf   "
  \lyricmode{
    By the wid -- ow’s son de -- ceased,
  }
  \set stanza = \markup\dynamic"  ff"
  \lyricmode{
    See E -- li -- sha’s sta -- tion!
  }
}
altoWordsIV = \lyricmode {
  
  \set stanza = #"4. "
  \set associatedVoice = "basses"
  O how bright is this day made,
  Day with ra -- diance glow -- ing,
  Which the Light of Light dis -- played,
  Light in dark -- ness show -- ing;
  Chas -- ing thus death’s gloom -- y shade,
  Bright -- ness o’er us throw -- ing!
}
altoWordsV = \lyricmode {
  
  \set stanza = #"5. "
  \set associatedVoice = "basses"
  Ris’n to -- day in splen -- dor bright,
  Shin -- ing to all a -- ges,
  Beams the Sun, whose dis -- tant light
  Touch’d the Pro -- phet’s pa -- ges;
  Now, to end the reign of night,
  Christ His pow’r en -- ga -- ges.
}
altoWordsVI = \lyricmode {
  \set stanza = #"6. "
  \set ignoreMelismata = ##t
}
tenorMusic = \relative c' {
  b4 b a b |
  cis b8[ a] gis2 |
  cis4 cis b b |
  b( ais) b2 |
  dis4. dis8 e4 dis |
  dis dis dis2 |
  b4 ais b b |
  ais2 b |
  
  b4 bis cis cis |
  cis a fis2 |
  b4 bis cis cis |
  b2 b \bar "||"
  
  s2 dis4 b |
  a4. b8 cis4 a |
  b4. b8 b4 b |
  a4 gis b2 |
  
  e4. dis8 b4 cis |
  gis a b( cis) |
  b b b b |
  b4. a8 gis2 \bar "|."
}
tenorWords = {
  \lyricmode {
    \repeat unfold 39 { \skip 1 }
  }
  \set stanza = \markup\dynamic"p"
  \lyricmode {
    O that bless -- ed go -- ing out, sal -- va -- tion brought a -- bout,
  }
}
bassMusic = \relative c {
  e4 dis cis b |
  a b cis2 |
  e4 dis gis fis |
  e( fis) b,2 |
  
  gis'4. gis8 cis,4 gis' |
  dis dis gis2 |
  gis4 fis b dis, |
  fis2 b, |
  
  gis'4 gis a gis |
  fis e dis2 |
  e4 dis cis a |
  b2 b \bar "||"
  
  dis2\rest b'4 gis |
  fis4. gis8 a4 fis |
  e4. e8 dis4 e |
  a, cis b2 |
  
  cis'4. b8 gis4 a |
  e fis gis( a) |
  fis e dis e |
  b b e2 \bar "|."
}


\bookpart { 
\header {
  title = \songTitle 
  poet = \songPoet 
  composer = \tuneComposer 
  source = \tuneSource 
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
     \new Lyrics = "altosVI"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsVI
    \new Lyrics = "altosV"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsV
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((padding . -0.8))} \lyricsto "altos" \altoWords
    \new Lyrics \with { alignAboveContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)(padding . 0.1)) } \lyricsto "tenors" \tenorWords
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



