\version "2.14.2"


\header {
  title = "The Sussex Carol"
  poet = "Traditional English (17th century or earlier)"
  source = ""
}

global = {
    \key f \major
    \time 6/8
    \autoBeamOff
    \slurDotted
    \tempo 4 = 150
}

sopMusic = \relative c'' {
  \repeat volta 2 {
    \partial 8 c8 |
    c4 a8 bes4 c8 |
    a( g) f g4 e8 |
    f4 f8 g[ a] bes |
    
  }
  \alternative {
    { a4 g8 f4 }
    { a4 g8 f4. }
  }
  
  g4. g4 f8 |
  g[ a] bes c[ bes] a |
  
  g2. |
  \time 9/8 c4. d c |
  \time 6/8 bes4 a8 g[ f] g |
  f2. \bar "|." 
  
  
  
  
  \repeat volta 2 {
    c'8 |
    c4 a8 bes4 c8 |
    a[ g] f g4 e8 |
    f4 f8 g[ a] bes |
    
  }
  \alternative {
    { a4 g8 f4 }
    { a4 g8 f4. }
  }
  
  g4. g4 f8 |
  g[ a] bes c[ bes] a |
  
  g2. |
  \time 9/8 c4. d c |
  \time 6/8 bes4 a8 g[ f] g |
  f2. \bar "|." 
}
  

altoMusic = \relative c'' {
  \repeat volta 2 {
    a8 |
    a4 f8 f4 e8 |
    f( f) f8 c4 c8 |
    d4 d8 c[ f] e |
  }
  \alternative {
    { f4 c8 f4 | }
      
    { f4 c8 f4. | }
  }
  e d4 d8 |
  e[ f] g a[ g] f |
  
  e2. |
  f4. f f |
  f4 f8 c[ d] e |
  f2. \bar "|."
  
  
  
  
  \repeat volta 2 {
    a8 |
    a4 f8 f4 e8 |
    f4 f8 c4 c8 |
    d4 d8 c[ f] e |
  }
  \alternative {
    { f4 c8 f4 | }
  
    { f4 c8 f4. | }
  }
  e d4 d8 |
  e[ f] g a[ g] f |
  
  e2. |
  f4. f f |
  f4 f8 c[ d] e |
  f2. \bar "|."
}
altoWords = \lyricmode {
  
  \set stanza = #"1. "
  On Christ -- mas night all Chris -- tians sing
  To hear the news the an -- gels bring.
  an -- gels bring:
  
  News of great joy, news of great mirth,
  News of our mer -- ci -- ful King’s birth.
  
  
  \set stanza = #"3. "
  When sin de -- parts be -- fore His grace,
  Then life and health come in its place,
  in its place.
  
  An -- gels and men with joy may sing,
  All for to see the new -- born King.
}
altoWordsII = \lyricmode {
  
%\markup\italic
  \set stanza = #"2. "
  \set ignoreMelismata = ##t
  Then why should men on earth be so sad,
  \unset ignoreMelismata
  Since our Re -- deem -- er made us glad?
  made us glad?
  
  When from our sin He set us free,
  All for to gain our lib -- er -- ty.

}
altoWordsIII = \lyricmode {
}
altoWordsIV = \lyricmode { 
  \set stanza = #"4. "
  All out of dark -- ness we have light,
  Which made the an -- gels sing this night,
  sing this night:
  
  “Glo -- ry to God and peace to men,
  Now and for ev -- er -- more, A -- men.”
}

tenorMusic = \relative c' {
  \repeat volta 2 {
    c8 |
    c4 c8 d4 c8 |
    c( bes) a bes4 bes8 |
    a4 a8 bes[ a] c |
  }
  \alternative {
    { d4 bes8 a4 | }
  
    { d4 bes8 a4. | }
  }
  g bes4 a8 |
  bes[ f] c' f,4 c'8 |
  
  c2. |
  a4. bes a |
  d4 c8 c[ a] bes |
  a2. \bar "|."
  
  
  
  
  \repeat volta 2 {
    c8 |
    c4 c8 d4 c8 |
    c[ bes] a bes4 bes8 |
    a4 a8 bes[ a] c |
  }
  \alternative {
    { d4 bes8 a4 | }
  
    { d4 bes8 a4. | }
  }
  g bes4 a8 |
  bes[ f] c' f,4 c'8 |
  
  c2. |
  a4. bes a |
  d4 c8 c[ a] bes |
  a2. \bar "|."
}

bassMusic = \relative c {
  \repeat volta 2 {
    f8 |
    f4 f8 bes,4 c8 |
    f( f) f8 e4 c8 |
    d4 d8 e[ d] c |
  }
  \alternative {
    { d4 e8 f4 | }
  
    { d4 e8 f4. | }
  }
  c g'4 d8 |
  c[ f] e f4 f8 |
  c2. |
  f4. bes, c |
  f4 f8 e[ d] c8 |
  <f f,>2. \bar "|."
  
  
  
  \repeat volta 2 {
    f8 |
    f4 f8 bes,4 c8 |
    f4 f8 e4 c8 |
    d4 d8 e[ d] c |
  }
  \alternative {
    { d4 e8 f4 | }
  
    { d4 e8 f4. | }
  }
  c g'4 d8 |
  c[ f] e f4 f8 |
  c2. |
  f4. bes, c |
  f4 f8 e[ d] c8 |
  <f f,>2. \bar "|."
}

\bookpart {
\score {
  \unfoldRepeats

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

