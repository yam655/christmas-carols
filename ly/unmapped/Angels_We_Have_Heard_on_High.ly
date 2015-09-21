\version "2.14.2"

songTitle = "Angels We Have Heard on High"
songPoet = \markup{\italic{Les Anges dans nos Campagnes}, 18th Century}
songTranslator = "Translated by Bishop James Chadwick (1813–1882)"
tuneComposer = "18th Century French Carol"
tuneSource = \markup{from \italic{Carols Old and Carols New}, 1916}
% via \italic{HymnsAndCarolsOfChristmas.com}}

global = {
    \key g \major
    \time 4/4
    \autoBeamOff
    \tempo 4 = 120
}

sopMusic = \relative c'' {
  b4 b b d |
  d4. c8 b2 |
  b4 a b d |
  b4. a8 g2 |

  b4 b b d |
  d4. c8 b2 |
  b4 a b d |
  b4. a8 g2 |
  
  
  d'2( e8[ d c b] |
  c2 d8[ c b a] |
  b2 c8[ b a g] |
  a4.) d,8 d2 |
  
  g4 a b c |
  b2 a | 
  d2( e8[ d c b] |
  c2 d8[ c b a] |
  
  b2 c8[ b a g] |
  a4.) d,8 d2 |
  g4 a b c |
  b2( a) |
  g2. b4\rest \bar "|."
}
  

altoMusic = \relative c'' {
  g4 g g g |
  fis4. fis8 g2 |
  g4 g g g |
  fis4. fis8 g2 |
  
  g4 fis g g |
  fis4. fis8 g2 |
  g4 g g g |
  fis4. fis8 g2 |

  g4( b8[ a] gis4 e~ |
  e a8[ g] fis4 d~ |
  d g8[ fis] e4 c~ |
  c4.) d8 d2 |
  
  d4 d d e |
  d( g) g( fis) |
  g4( b8[ a] gis4 e~ |
  e a8[ g] fis4 d~ |
  
  d g8[ fis] e4 c~ |
  c4.) d8 d2 |
  d4 d d e |
  d( g2 fis4) |
  d2. s4 \bar "|."
}
altoWords = {
  
  \lyricmode {
    \set stanza = #"1. "
    An -- gels we have heard on high,
    Sweet -- ly sing -- ing o’er the plains;
    And the moun -- tains in re -- ply
    Ech -- o -- ing their joy -- ous strains.
  }
  
  \set stanza = \markup\dynamic"mf  "
  \lyricmode {
    \markup\italic Glo -- \markup\italic ri -- \markup\italic a \markup\italic in \markup\italic ex -- \markup\italic cel -- \markup\italic sis \markup\italic De -- \markup\italic o, __
  }
  \set stanza = \markup\dynamic"f   "
  \lyricmode {
    \markup\italic Glo -- \markup\italic ri -- \markup\italic a \markup\italic in \markup\italic ex -- \markup\italic cel -- \markup\italic sis \markup\italic De -- \markup\italic o!
  }
}
altoWordsII = \lyricmode {
  
  \set stanza = #"2. "
  Shep -- herds, why this ju -- bi -- lee?
  Why your joy -- ous songs pro -- long?
  What the glad -- some ti -- dings be
  Which in -- spire your heav’n -- ly song?
}
altoWordsIII = \lyricmode {
  
  \set stanza = #"3. "
  Come to Beth -- le -- hem and see
  Him whose birth the an -- gels sing;
  Come a -- dore on bend -- ed knee
  Christ, the Lord, our new -- born King.
}
altoWordsIV = \lyricmode {
  
  \set stanza = #"4. "
  See Him in a man -- ger laid,
  Whom the choirs of an -- gels praise;
  Ma -- ry, Jo -- seph, lend your aid,
  While our hearts in love we raise.
}

tenorMusic = \relative c' {
  d4 d d d |
  c d d2 |
  d4 c d b |
  d c b2 |
  
  d4 d e8[ d] c[ b] 
  c4 d d2 |
  d4 e d b |
  d c b2 |
  
  b2( e~ |
  e d~ |
  d c |
  a4) g fis2 |
  
  g4 fis g g |
  g( b) d4.( c8) |
  b2( e~ |
  e d~ |
  
  d c |
  a4) g fis2 |
  g4 fis g g |
  g( b d4. c8) |
  b2. s4 \bar "|."
}


bassMusic = \relative c' {
  g4 g g b |
  a d, g2 |
  g4 g g g |
  d d g2 |
  
  g4 b e8[ d] c[ b] |
  a4 d, g2 |
  g4 c b g |
  d d g2 |
  
  g2( e4 gis |
  a2 d,4 fis |
  g2 c,4 e |
  fis) e d( c) |
  
  b a g c |
  d2 d |
  g2( e4 gis |
  a2 d,4 fis |
  
  g2 c,4 e |
  fis) e d( c) |
  b a g c |
  d1 |
  g2. d4\rest \bar "|."
}


\bookpart { 
\header {
  title = \songTitle
  poet = \songPoet
  translator = \songTranslator
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
    \new Lyrics \with { alignBelowContext = #"women" } \lyricsto "tenors" \altoWords
    \new Lyrics \with { alignBelowContext = #"women" } \lyricsto "tenors" \altoWordsII
    \new Lyrics \with { alignBelowContext = #"women" } \lyricsto "tenors" \altoWordsIII
    \new Lyrics \with { alignBelowContext = #"women" } \lyricsto "tenors" \altoWordsIV
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

