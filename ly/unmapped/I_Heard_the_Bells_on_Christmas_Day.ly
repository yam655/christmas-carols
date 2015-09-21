\version "2.14.2"

\header {
    title = "I Heard the Bells on Christmas Day"
    poet = "Henry Wadsworth Longfellow (1807–1882)"
    composer = "John Baptiste Calkin (1827–1905)"
    %source = \markup{from \italic{HymnsAndCarolsOfChristmas.com}}
    %\markup \fill-line { \concat{ "from " \italic"Carols Old and Carols New" ", 1916, via " \italic"HymnsAndCarolsOfChristmas.com" }}
  }

global = {
    \key ees \major
    \time 4/4
    \tempo 4 = 105
}

sopMusic = \relative c' {
  \partial 4 ees4 |
  g4. fis8 g4 g4 |
  aes4. g8 aes4 a |
  bes4 ees d c |
  c4. bes8 bes4  
  
  bes4 |
  bes4. aes8 g4 aes |
  g4. f8 ees4 f |
  g aes bes c |
  d,4. f8 ees4 \bar "|."
}
  

altoMusic = \relative c' {
  ees4 |
  ees4. ees8 ees4 des |
  d4. cis8 d4 ees |
  ees g g ees |
  f4. f8 f4 
  
  ees4 |
  ees4. ees8 ees4 c |
  b4. b8 c4 ees |
  ees ees ees ees |
  d4. d8 ees4 \bar "|."
}
altoWords = \lyricmode {
  
  \set stanza = #"1. "
  I heard the bells on Christ -- mas Day Their old fa -- mil -- iar car -- ols play,
  And wild and sweet the words re -- peat Of peace on earth, good will to men.
}
altoWordsII = \lyricmode {
  
%\markup\italic
  \set stanza = #"2. "
  I thought how, as the day had come, The bel -- fries of all Chris -- ten -- dom
  Had rolled a -- long th’un -- bro -- ken song Of peace on earth, good will to men.
}
altoWordsIII = \lyricmode {
  
  \set stanza = #"3. "
  And in de -- spair I bowed my head, “There is no peace on earth,” I said,
For hate is strong, and mocks the song Of peace on earth, good will to men.
}
altoWordsIV = \lyricmode {
  
  \set stanza = #"4. "
  Then pealed the bells more loud and deep: “God is not dead, nor doth He sleep;
  The wrong shall fail, the right pre -- vail, With peace on earth, good will to men.
}
altoWordsV = \lyricmode {
  
  \set stanza = #"5. "
  Till, ring -- ing, sing -- ing on its way, The world re -- volved from night to day,
  A voice, a chime, a chant sub -- lime, Of peace on earth, good will to men.
}

tenorMusic = \relative c' {
  g4 |
  bes4. a8 bes4 bes |
  bes4. bes8 bes4 c |
  bes4 bes bes bes |
  d4. d8 d4 
  
  ees4 |
  c4. c8 bes4 ees, |
  g4. g8 g4 a |
  bes c bes f |
  f4. aes8 g4 \bar "|."
}


bassMusic = \relative c {
  ees4 |
  ees4. ees8 ees4 e |
  f4. e8 f4 fis |
  g ees ees g |
  aes4. aes8 aes4 
  
  g4 |
  aes4. aes8 ees4 ees |
  d4. d8 c4 c |
  bes aes g aes |
  bes4. bes8 ees4 \bar "|."
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

