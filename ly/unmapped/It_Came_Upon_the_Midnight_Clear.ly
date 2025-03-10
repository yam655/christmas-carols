﻿\version "2.14.2"

\header {
  title = "It Came Upon the Midnight Clear"
  poet = "Edmund H. Sears (1810–1876)"
  composer = "Richard S. Willis (1819–1900)"
  %source = \markup { from \italic {Christmas Carols and Hymns for School and Choir}, 1910}
}

global = {
    \key bes \major
    \time 6/8
    \autoBeamOff
    \tempo 4 = 65
}

sopMusic = \relative c' {
  \partial 8 f8 |
  d'4 a8 c[ bes] g8 |
  f4 g8 f4 f8 |
  g[ a] bes bes[ c] d |
  c4.~ c4 
  
  f,8 |
  d'4 a8 c[ bes] g8 |
  f4 g8 f4 f8 |
  g4 g8 a[ g] f |
  bes4.~bes4 
  
  d8 |
  d4 d,8 d[ e] fis |
  g4 a8 bes4 d8 |
  c[ bes] a g[ a] g |
  f4.~f4 
  
  f8 |
  d'4 a8 c[ bes] g8 |
  f4 g8 f4 f8 |
  g4 g8 a[ g] f |
  bes4.~bes4 \bar "|."
}

altoMusic = \relative c' {
  d8 |
  d4 d8 ees4 ees8 |
  d4 ees8 d4 d8 |
  ees4 ees8 e4 e8 |
  f4.~ f4 
  
  d8 |
  d4 d8 ees4 ees8 |
  d4 ees8 d4 f8 |
  ees4 ees8 ees4 ees8 |
  d4.~ d4 
  
  d8 |
  d4 d8 d[ e] d |
  d4 d8 d4 d8 |
  f4 f8 e4 e8 |
  f4.~ f4 
  
  ees8 |
  d4 d8 ees4 ees8 |
  d4 ees8 d4 f8 |
  ees4 ees8 ees4 ees8 |
  d4.~ d4 \bar "|."
}
altoWords = \lyricmode {
  
  \set stanza = #"1. "
  It came up -- on __ the mid -- night clear,
  That glo -- rious song of old, __
  From an -- gels bend -- ing near the earth
  To touch their harps of gold: __
  “Peace on the earth, good -- will to men
  From heav’n’s all gra -- cious King.”
%8.5x11 __
  The world in sol -- emn still -- ness lay
  To hear the an -- gels sing. __
}
altoWordsII = \lyricmode {
  
  \set stanza = #"2. "
  Still through the clo -- ven skies they come,
  With peace -- ful wings un -- furl’d;
%8.5x11 __
  And still their heav’n -- ly mu -- sic floats
  O’er all the wea -- ry world:
%8.5x11 __
  A -- bove its sad __ and low -- ly plains
  They bend __ on hov -- ’ring wing, __
  And ev -- er o’er __ its Ba -- bel sounds
  The bless -- ed an -- gels sing. __
}
altoWordsIII = \lyricmode {
  
  \set stanza = #"3. "
  O ye, be -- neath life’s crush -- ing load,
  Whose forms are bend -- ing low, __
  Who toil a -- long the climb -- ing way
  With pain -- ful steps and slow! __
  Look now, for glad __ and gold -- en hours
  Come swift -- ly on __ the wing; __
  O rest be -- side __ the wea -- ry road
  And hear the an -- gels sing. __
}
altoWordsIV = \lyricmode {
  
  \set stanza = #"4. "
  For lo! the days are hast -- ’ning on,
  By pro -- phet bards fore -- told, __
  When with the ev -- er -- cir -- cling years
  Comes round the age of gold; __
  When Peace shall o -- ver all the earth
  Its an -- cient splen -- dors fling, __
  And the whole world send back the song
  Which now the an -- gels sing. __
}

tenorMusic = \relative c {
  f8 |
  f4 fis8 g4 a8 |
  bes4 f8 f4 bes8 |
  bes4 bes8 bes4 bes8 |
  a4.~ a4 
  
  bes8 |
  f4 fis8 g4 a8 |
  bes4 f8 f4 bes8 |
  bes4 c8 c[ bes] a |
  bes4.~ bes4 
  
  d,8 |
  d4 fis8 fis[ g] a |
  g4 fis8 g4 g8 |
  a[ d] c bes[ c] bes |
  a4.~ a4 
  
  a8 |
  f4 fis8 g4 a8 |
  bes4 f8 f4 bes8 |
  bes4 c8 c[ bes] a |
  bes4.~ bes4 \bar "|."
}

bassMusic = \relative c {
  bes8 |
  bes4 bes8 bes4 bes8 |
  bes4 a8 bes4 bes8 |
  ees[ f] g g4 c,8 |
  f4.~ f4 
  
  bes,8 |
  bes4 bes8 bes4 bes8 |
  bes4 a8 bes4 d8 |
  ees4 c8 f4 f8 |
  bes,4.~ bes4 
  
  d8 |
  d4 d8 d4 c8 |
  bes4 d8 g4 bes,8 |
  c4 c8 c4 c8 |
  f4.~ f4 
  
  f8 |
  bes,4 bes8 bes4 bes8 |
  bes4 a8 bes4 d8 |
  ees4 c8 f4 f8 |
  bes,4.~ bes4 \bar "|."
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

