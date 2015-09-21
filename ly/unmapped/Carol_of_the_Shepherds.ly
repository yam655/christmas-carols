\version "2.14.2"

songTitle = "Carol of the Shepherds"
songPoet = "English by Eda Lou Walton (1894–1961)"
tuneComposer = "17th Century Bohemian Carol"
tuneSource = \markup \null

global = {
    \key g \major
    \time 3/4
    \autoBeamOff
    \tempo 4 = 86
}

sopMusic = \relative c'' {
  d4 d8[ b] e[ c] |
  d4 d8[ b] e[ c] |
  d4 b8[ d] a[ b] g2 b4\rest | 
  
  d4 d8[ b] e[ c] |
  d4 d8[ b] e[ c] |
  d4 b8[ d] a[ b] g2 b4\rest | 
  
  g4 b8\noBeam g\noBeam b\noBeam d\noBeam |
  g,4 b8\noBeam g\noBeam a\noBeam d,\noBeam |
  g4 b8\noBeam g\noBeam b\noBeam d\noBeam | 
  
  g,4 b8\noBeam g\noBeam a\noBeam d,\noBeam |
  d'4 b8[ d] a[ b] |
  g2 r \bar "|."
}
  

altoMusic = \relative c'' {
  b4 b8[ g] c[ a] |
  b4 b8[ g] c[ a] |
  b4 g fis g2 s4 |
  
  b4 b8[ g] c[ a] |
  b4 b8[ g] c[ a] |
  b4 g fis g2 s4 |
  
  g4 b8\noBeam g\noBeam b\noBeam d\noBeam |
  g,4 b8\noBeam g\noBeam a\noBeam d,\noBeam |
  g4 b8\noBeam g\noBeam b\noBeam d\noBeam |
  
  g,4 b8\noBeam g\noBeam a\noBeam d,\noBeam |
  g4 g fis |
  d2 r \bar "|."
}

altoWords = \lyricmode { 
  \set stanza = #"1. "
  Come, all __ ye __ shep -- herds and
  be not __ dis -- mayed,
  Seek where the low -- ly __ sweet ba -- by __ is __ laid;
  Here in a man -- ger,
  far from all dan -- ger,
  Sleep -- ing be -- hold Him,
  Warm arms en -- fold Him
  In Christ -- mas __ joy.
}
altoWordsII = \lyricmode {
  
  \set stanza = #"2. "
  As we __ were watch -- ing __ our
  flocks where they lay,
  Shown a __ great glo -- ry __ as __ bright as __ the __ day.
  Glad bells were ring -- ing, sweet voi -- ces sing -- ing,
  Through heav’n’s blue por -- tals, “Good will to mor -- tals;”
  Christ -- mas __ is __ come.
}
altoWordsIII = \lyricmode {
  \set stanza = #"3. "
  Now we __ have found Him in __ Beth -- le -- hem stall,
  Sing the __ glad ti -- dings, oh, __ sing them to __ all!
  Shep -- herds a -- dore Him, wise men be -- fore Him
  Lay down their dow -- er, In glitt -- ’ring show -- er,
  Christ -- mas __ is __ come.
}
altoWordsIV = \lyricmode {

}

tenorMusic = \relative c' {
  g4 g g |
  g g g |
  g g d' |
  g,2 s4 |
  
  g g g |
  g g g |
  g g d' |
  g, 2 s4 |
  
  g4 b8\noBeam g\noBeam b\noBeam d\noBeam |
  g,4 b8\noBeam g\noBeam a\noBeam d,\noBeam |
  g4 b8\noBeam g\noBeam b\noBeam d\noBeam |
  
  g,4 b8\noBeam g\noBeam a\noBeam d\noBeam |
  b4 d c |
  b2 r \bar "|."
}


bassMusic = \relative c' {
  g4 g g |
  g g g |
  g g fis |
  g2 d4\rest |
  
  g g g |
  g g g |
  g g d |
  g2 d4\rest |
  
  g4 b8\noBeam g\noBeam b\noBeam d\noBeam |
  g,4 b8\noBeam g\noBeam a\noBeam d,\noBeam |
  g4 b8\noBeam g\noBeam b\noBeam d\noBeam |
  
  g,4 b8\noBeam g\noBeam a\noBeam d,\noBeam |
  d4 d d |
  g2 r \bar "|."
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
        \context {
            \Staff \remove "Staff_performer"
        }
        \context {
            \Voice \consists "Staff_performer"
        }
    }
}
}


