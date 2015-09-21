\version "2.14.2"

songTitle = "While Shepherds Watched Their Flocks"
songPoet = "Nahum Tate (1652–1715)"
tuneComposer = "Adapted from George F. Handel"

global = {
    \key d \major
    \time 4/4
    \autoBeamOff
    \tempo 4 = 95
}

sopMusic = \relative c' {
  \partial 4 fis8.[ g16] |
  a4 d cis b |
  a d,8.[ e16] fis4 fis8.[ g16] |
  a4 a a g8[ fis] |
  
  fis4( e -) b' \rest cis8[ d] | 
  e4 a, g g |
  g fis8[ e] fis4 d'8[ cis] |
  
  b4 a g fis |
  b( a -) b \rest e |
  a, d fis, e |
  d2. \bar "|."
}

altoMusic = \relative c' {
  d4 |
  d4 fis e e |
  fis d8.[ cis16] d4 d |
  d fis d e8[ d] |
  
  d4( cis -) s e |
  e fis d cis |
  e d d d |
  
  d d d d |
  d2 s4 g |
  a fis d4 cis |
  d2. \bar "|."
}
altoWords = \lyricmode {
  \set stanza = #"1. "
  While shep -- herds watch’d their flocks by night;
    All seat -- ed on the ground;
  The an -- gel of the Lord came down,
    And glo -- ry shone a -- round,
    And glo -- ry shone a -- round.
}
altoWordsII = \lyricmode {
  \set stanza = #"2. "
  “To you, in Da -- vid’s town, this day
    Is born of Da -- vid’s line,
  A Sav -- ior, Who is Christ the __ Lord,
    And this shall be the sign,
    And this shall be the sign:
}
altoWordsIII = \lyricmode {
  \set stanza = #"3. "
  The heav’n -- ly Babe you there shall find,
    To hu -- man view dis -- play’d,
  All mean -- ly wrapp’d in swad -- dling bands,
    And in a man -- ger laid,
    And in a man -- ger laid.”
}
altoWordsIV = \lyricmode {
  \set stanza = #"4. "
  “All glo -- ry be to God on high,
    And to the earth be peace;
  Good -- will hence -- forth from heav’n to __ men
    Be -- gin, and nev -- er cease!
    Be -- gin, and nev -- er cease!”
}

tenorMusic = \relative c' {
  a4 |
  a a a b8[ cis] |
  d4 a a a |
  a a a b |
  
  a2 s4 a |
  a fis b a |
  a a8[ g] a4 fis8[ a] |
  
  g4 fis b a |
  g( fis-) s b8[ cis] |
  d4 a a g |
  fis2. \bar "|."
}

bassMusic = \relative c {
  d8.[ e16] |
  fis4 d a' g |
  fis fis8.[ e16] d4 d8.[ e16] |
  fis4 d fis g |
  
  a2 d,4\rest a8[ b] |
  cis4 d e a, |
  d d d d |
  
  d d d d |
  d2 d4\rest g4 |
  fis d a'4 a, |
  d2. \bar "|."
}

\bookpart { 
\header {
    title = \songTitle
    poet = \songPoet
    composer = \tuneComposer
  }

\score {
    <<
        \new ChoirStaff <<
            \new Staff = women <<
                \new Voice = "sopranos" { \voiceOne << \global \sopMusic >> }
                \new Voice = "altos" { \voiceTwo << \global \altoMusic >> }
            >>
            \new Lyrics = "altos"   \lyricsto "sopranos" \altoWords
            \new Lyrics = "altosII"   \lyricsto "sopranos" \altoWordsII
            \new Lyrics = "altosIII"  \lyricsto "sopranos" \altoWordsIII
            \new Lyrics = "altosIV"   \lyricsto "sopranos" \altoWordsIV
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
        \context {
            \Staff \remove "Staff_performer"
        }
        \context {
            \Voice \consists "Staff_performer"
        }
    }
}
}

