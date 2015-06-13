\version "2.14.2"

\header {
  title = "Carol of the Shepherds"
  poet = "English by Eda Lou Walton (1894–1961)"
  composer = "17th Century Bohemian Carol"
  source = ""
}

global = {
    \key g \major
    \time 3/4
    \autoBeamOff
    \tempo 4 = 120
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
  g2 \bar "|."
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
  d2 \bar "|."
}
altoWords = \lyricmode {
  
  \set stanza = #"1. "
  Come, all __ ye __ shep -- herds and
%8.5x11 __
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
%8.5x11 __
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
  b2 \bar "|."
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
  g2 \bar "|."
}

\bookpart {
\score {
  <<
   \new ChoirStaff <<
%    \new Lyrics = sopranos \with { \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) }
    \new Staff = women <<
      \new Voice = "sopranos" { \voiceOne << \global \sopMusic >> }
      \new Voice = "altos" { \voiceTwo << \global \altoMusic >> }
    >>
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWords
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
    %\context { \Voice \remove "Dynamic_performer" }
  }
}
}

