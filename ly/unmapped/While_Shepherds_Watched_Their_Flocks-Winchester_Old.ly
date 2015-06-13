\version "2.14.2"

\header {
    title = "While Shepherds Watched Their Flocks"
    poet = "Nahum Tate (1652–1715)"
    composer = \markup{tune is \italic{Winchester Old}, by George Kirbye (c. 1565–1634)}
    %source = \markup{ from \italic {Church Sunday School Hymn-Book}, 1892, via \italic{HymnsAndCarolsOfChristmas.com}}
  }

global = {
    \key g \major
    \time 4/4
    \autoBeamOff
    \tempo 4 = 92
}

sopMusic = \relative c' {
    \partial 4 g'4 |
    b4. b8 a4 g |
    c c b a |
    b d d cis |
    d2. b4 |
    e4. d8 c4 b |
    a g fis b |
    a g g fis |
    g2. \bar"|."
}

altoMusic = \relative c' {
    \partial 4 d4 |
    g4. g8 fis4 e |
    e g g fis |
    g a a a |
    fis2. g4 |
    g4. g8 g4 g |
    fis e dis d |
    fis e e d |
    d2. \bar "|."
}

tenorMusic = \relative c' {
  \partial 4 b4 |
  d4. d8 d4 b |
  c e d d |
  d d e e |
  d2. d4 |
  c4. b8 c4 d |
  d b b b |
  d b c a |
  b2. \bar "|."
}

bassMusic = \relative c {
  \partial 4 g'4 |
  g4. g8 d4 e |
  c c g' d |
  g fis a a |
  d,2. g4 |
  c4. g8 e4 g |
  d e b g' |
  d e c d |
  g2. \bar "|."
}

altoWords = \lyricmode {
  \set stanza = #"1. "
  While shep -- herds watch’d their flocks by night,
    All seat -- ed on the ground,
  The an -- gel of the Lord came down,
    And glo -- ry shone a -- round,
    And glo -- ry shone a -- round.
}
altoWordsII = \lyricmode {
  \set stanza = #"2. "
  “Fear not,” said he, for might -- y dread
    Had seized their troub -- led mind;
  “Glad tid -- ings of great joy I bring
    To you and all man -- kind,
    To you and all man -- kind.
}
altoWordsIII = \lyricmode {
  \set stanza = #"3. "
  “To you, in Da -- vid’s town, this day,
    Is born of Da -- vid’s line,
  A Sav -- ior, Who is Christ the Lord;
    And this shall be the sign,
    And this shall be the sign:
}
altoWordsIV = \lyricmode {
  \set stanza = #"4. "
  “The heav’n -- ly Babe you there shall find
    To hu -- man view dis -- play’d,
  All mean -- ly wrapp’d in swad -- dling clothes,
    And in a man -- ger laid,
    And in a man -- ger laid.”
}

altoWordsV = \lyricmode {
  \set stanza = #"5. "
  Thus spake the ser -- aph, and forth -- with
    Ap -- peared a shin -- ing throng
  Of an -- gels prais -- ing God, Who thus
    Ad -- dressed their joy -- ful song,
    Ad -- dressed their joy -- ful song:
}

altoWordsVI = \lyricmode {
  \set stanza = #"6. "
  “All glo -- ry be to God on high
    And to the earth be peace;
  Good -- will hence -- forth from heav’n to men,
    Be -- gin and nev -- er cease,
    Be -- gin and nev -- er cease.”
}

\bookpart {
\score {
  <<
   \new ChoirStaff <<
    \new Staff = women <<
      \new Voice = "sopranos" { \voiceOne << \global \sopMusic >> }
      \new Voice = "altos" { \voiceTwo << \global \altoMusic >> }
    >>
    \new Lyrics = "altos"   \lyricsto "sopranos" \altoWords
    \new Lyrics = "altosII"   \lyricsto "sopranos" \altoWordsII
    \new Lyrics = "altosIII"   \lyricsto "sopranos" \altoWordsIII
    \new Lyrics = "altosIV"   \lyricsto "sopranos" \altoWordsIV
    \new Lyrics = "altosV"   \lyricsto "sopranos" \altoWordsV
    \new Lyrics = "altosVI"   \lyricsto "sopranos" \altoWordsVI
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
    >>
  >>
  >>
  \layout { }
  
  \midi {
%   \set Staff.midiInstrument = "flute" 
%   \context { \Voice \remove "Dynamic_performer" }
  }
} 
}

