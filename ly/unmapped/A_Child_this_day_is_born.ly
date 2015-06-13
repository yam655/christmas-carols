\version "2.14.2"

songTitle = "A Child this day is born"
songPoet = "Traditional"
tuneComposer = "Traditional"
tuneSource = \markup { from \italic {Christmas Carols, New and Old}}

global = {
    \key d \major
    \time 4/4
    \autoBeamOff
    \slurDotted
    \tempo 4 = 120
}

sopMusic = \relative c' {
  \partial 4
    \repeat volta 2 {
        a'4 |
        a d cis a8[ b] |
        cis2. e4 |
        d4 cis d8[ cis] b4 |
  
        a2. 
        a4 |
        a d, b' d |
        a4.( b8) a4 g |
        fis d' fis, e |
        d2. 
  
        a'4 |
        a d cis a8[ b] |
        cis2. e4 |
        d4 cis d8[ cis] b4 |
  
        a2. 
        a4 |
        a d, b' d |
        \slurSolid
        a4.( b8 a4) g |
        fis d' fis, e |
        d2. 
    }
  
  \slurDotted
  a'4 |
  a d cis a8[ b] |
  cis2. e4 |
  d4 cis d8[ cis] b4 |
  
  a2. 
  a4 |
  a d, b' d |
  a4. b8 a4 g |
  fis d' fis, e |
  d2. \bar "||" 
}

altoMusic = \relative c' {
  fis4 |
  a a a fis |
  a2. a4 |
  gis a a gis |
  
  a2. e4 |
  d d d d |
  d4.( d8) d4 cis |
  d d d cis |
  d2. \bar "||"

  
  fis4 |
  a a a fis |
  a2. a4 |
  gis a a gis |
  
  a2. e4 |
  d d d d |
  \slurSolid
  d4.( d8)~ d4 cis |
  d d d cis |
  d2.
  
  
  
  
  
  \slurDotted
  fis4 |
  a a a fis |
  a2. a4 |
  gis a a gis |
  
  a2. e4 |
  d d d d |
  d4. d8 d4 cis |
  d d d cis |
  d2. \bar "||"
}
altoWords = \lyricmode {
  
  \set stanza = #"1. "
  A Child this day is born,
  A Child of high re -- nown;
  Most wor -- thy of a scep -- tre,
  A scep -- tre and a crown.
  
  Glad tid -- ings to all men,
  Glad tid -- ings sing we may,
  Be -- cause the King of kings __
  Was born on Christ -- mas Day.
  
  
  \set stanza = #"4. "
  They praised the Lord our God
  And our ce -- le -- stial King:
  All glo -- ry be in
\set ignoreMelismata = ##t
  Pa -- ra -- dise,
\unset ignoreMelismata
  This heav’n -- ly host do sing.
}
altoWordsII = \lyricmode {
%\markup\italic
  
}
altoWordsIII = \lyricmode {
  
  \set stanza = #"2. "
  These tid -- ings shep -- herds heard
  Whilst watch -- ing o’er their fold,
  ’Twas by an An -- gel
\set ignoreMelismata = ##t
  un -- to them
\unset ignoreMelismata
  That night re -- vealed and told.
  
  \repeat unfold24 \skip1
  \set stanza = #"5. "
  All glo -- ry be to God,
  That sit -- teth still on high,
  With prais -- es and with
\set ignoreMelismata = ##t
  tri -- umph great,
\unset ignoreMelismata
  And joy -- ful mel -- o -- dy.
}
altoWordsIV = \lyricmode {
  
  \set stanza = #"3. "
  Then was there with the~An -- gel
  An host in -- con -- ti -- nent
  Of heav -- en -- ly bright sol -- diers,
  All from the high -- est sent.
}
altoWordsV = \lyricmode {
}
altoWordsVI = \lyricmode {
}
tenorMusic = \relative c' {
  d4 |
  d fis e d |
  e2. cis4 |
  d e fis d |
  
  cis2. cis4 |
  d a g b |
  d4.( g,8) a4 a |
  a b a g |
  fis2. \bar "||"
  
  
  d'4 |
  d fis e d |
  e2. cis4 |
  d e fis d |
  
  cis2. cis4 |
  d a g b |
  \slurSolid d4.( g,8 a4) a |
  a b a g |
  fis2.
  
  
  
  
  
  \slurDotted
  d'4 |
  d fis e d |
  e2. cis4 |
  d e fis d |
  
  cis2. cis4 |
  d a g b |
  d4. g,8 a4 a |
  a b a g |
  fis2. \bar "||"
}

bassMusic = \relative c {
  d4 |
  fis d a' d |
  a2. cis4 |
  b a d, e |
  
  a2. g4 |
  fis fis g g |
  fis4.( g8) fis4 e |
  d g, a a |
  d2. \bar "||"

  
  d4 |
  fis d a' d |
  a2. cis4 |
  b a d, e |
  
  a2. g4 |
  fis fis g g |
  \slurSolid
  fis4.( g8 fis4) e |
  d g, a a |
  d2.
  
  
  
  
  
  \slurDotted
  d4 |
  fis d a' d |
  a2. cis4 |
  b a d, e |
  
  a2. g4 |
  fis fis g g |
  fis4. g8 fis4 e |
  d g, a a |
  d2. \bar "||"
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
%    \new Lyrics = sopranos \with { \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) }
    \new Staff = women <<
      \new Voice = "sopranos" { \voiceOne << \global \sopMusic >> }
      \new Voice = "altos" { \voiceTwo << \global \altoMusic >> }
    >>
    \new Lyrics = "altos"   \lyricsto "altos" \altoWords
    \new Lyrics = "altosII"   \lyricsto "altos" \altoWordsII
    \new Lyrics = "altosIII"   \lyricsto "altos" \altoWordsIII
    \new Lyrics = "altosIV"   \lyricsto "altos" \altoWordsIV
    \new Lyrics = "altosV"   \lyricsto "altos" \altoWordsV
     \new Lyrics = "altosVI"   \lyricsto "altos" \altoWordsVI
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
    >>
  >>
  >>
  \layout { }
  \midi {
    \set Staff.midiInstrument = "flute"
  
    % \context { \Voice \remove "Dynamic_performer" }
  }
}
}
