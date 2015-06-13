\version "2.14.2"

\header {
    %source = \markup \concat{ "from " \italic "The Cambridge Carol Book" ", 1924"}

    title = "To Us This Morn a Child is Born"
    poet = "George Ratcliffe Woodward (1848–1934)"
    composer = \markup{\italic "Jog on, jog on the footpath way"}
    arranger = "Arranged by Charles Wood (1866–1926)"
  }

global = {
    \key g \major
    \time 6/8
    \autoBeamOff
    \tempo 4 = 90
}

sopMusic = \relative c' {
  \partial 8 d8 |
  g4 d8 g4 a8 |
  b8.[ c16] b8 a[ fis] d |
  g8.[ a16] g8 d'4 c8 |
  b4. a4  d,8 |
  
  a'4 b8 c8.[ d16] c8 |
  b8.[ c16] b8 a8.[ g16] fis8 |
  g8.[ a16] g8 fis8.[ g16] fis8 |
  e4. d4 \bar "|."
}
  

altoMusic = \relative c' {
  d8 |
  d4 d8 e4 fis8 |
  g4 g8 fis[ d] d |
  e4 g8 g4 g8 |
  g4. fis4 d8 |
  
  d4 g8 g4 fis8 |
  g4 g8 fis8.[ e16] d8 |
  b4 cis8 d4 d8~ |
  d cis!4 d4 \bar "|."
}
altoWords = \lyricmode {  
  
  \set stanza = #"1. "
  To us this morn a Child is born,
  His Fa -- ther is none o -- ther
  Than God the King of ev -- ’ry thing,
  Maid Ma -- ry is His Mo -- ther.
}
altoWordsII = \lyricmode {
  
%\markup\italic
  \set stanza = #"2. "
  Her Babe is Lord by all a -- dored
  I -- sa -- iah had fore -- shown her:
  Now came’t to pass that ox and ass
  Bow’d down a -- fore their Own -- er.
  \set ignoreMelismata = ##t
}
altoWordsIII = \lyricmode {
  
  \set stanza = #"3. "
  When Her -- od heard the Ma -- ges’ word,
  He smote the babes a -- sun -- der
  In all that coast, a blame -- less host,
  From two years old and un -- der.
  \set ignoreMelismata = ##t
}
altoWordsIV = \lyricmode {
  
  \set stanza = #"4. "
  Now, faith -- ful quire, bless God the Sire,
  Bless God the Spi -- rit Ho -- ly,
  Bless God, the Son ere time be -- gun,
  Now lain in man -- ger low -- ly.
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
  b8 |
  b4 a8 b4 d8 |
  d8.[ e16] d8 d4 b8 |
  b4 c8 d4 e8 |
  d4. d4 b8 |
  
  a4 d8 c4 a8 |
  d4 d8 d4 a8 |
  g4 g8 a4 a8 |
  a4. fis4 \bar "|."
}


bassMusic = \relative c {
  g'8 |
  g4 fis8 e4 d8 |
  g4 g,8 d'4 g8 |
  e4 e8 b4 c8 |
  g'4. d4 g8 |
  
  fis4 g8 e4 a8 |
  g4 g8 d4 d8 |
  e4 e8 fis4 d8 |
  a4. d4 \bar "|."
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
    \new Lyrics \with { alignBelowContext = #"women" } \lyricsto "basses" \altoWords
    \new Lyrics \with { alignBelowContext = #"women" } \lyricsto "basses" \altoWordsII
    \new Lyrics \with { alignBelowContext = #"women" } \lyricsto "basses" \altoWordsIII
    \new Lyrics \with { alignBelowContext = #"women" } \lyricsto "basses" \altoWordsIV
    \new Lyrics \with { alignBelowContext = #"women" } \lyricsto "basses" \altoWordsV
    \new Lyrics \with { alignBelowContext = #"women" } \lyricsto "basses" \altoWordsVI
  >>
  >>
  \layout { }
  
  \midi {
    \set Staff.midiInstrument = "flute" 
    %\context { \Voice \remove "Dynamic_performer" }
  }
}
}

