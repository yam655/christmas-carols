\version "2.14.2"

songTitle = "Puer natus in Bethlehem"
songSubtitle = "(A Babe is Born in Bethlehem)"
songPoet = "14th century or earlier"
tuneComposer = \markup {from \italic {Piæ Cantiones}, 1582
                and \italic {The Cowley Carol Book}, 1919}
tuneSource = \markup {
       In \italic{Piæ Cantiones} only a tenor and bass part were given,
       and in \italic{The Cowley Carol Book} (and here), the bass line
       from \italic{Piæ Cantiones} is found in the soprano, while the
       tenor is retained as the tenor.}
   }

global = {
    \key f \major
    \time 3/4
    \autoBeamOff
    \tempo 4 = 150
}

sopMusic = \relative c' {
    \partial 4
  \repeat volta 4 {
    g'4 |
    g2 g4 |
    a2 a4 |
    bes2 g4 |
    f2 
    f4 |
    bes2( c4 |
    
    bes2) a4 |
    bes2\fermata 
    bes4 |
    bes2 bes4 |
    a2 g4 |
    g2 f4 |
    g2 
    
    g4 |
    f2( g4 |
    a2 f4 |
    bes2 a4 |
    g2) f4 |
    g2\fermata
  }
  
}
  

altoMusic = \relative c' {
  g'4 |
  bes,2 d4 |
  f2 f4 |
  f2 ees4 |
  d2 \bar "||"
  d4 |
  f2( f4 |
  
  f2) f4 |
  d2 \bar "||"
  d4 |
  g2 f4 |
  f2 d4 |
  ees2 d4 |
  bes2 \bar "||"
  
  d4 |
  d2.( |
  f |
  f |
  d2) d4 |
  d2
}

altoWords = \lyricmode { 
  \set stanza = #"1. "
  Pu -- er na -- tus in Beth -- le -- hem,
  Al -- le -- lu -- ia.
  Un -- de gau -- det Je -- ru -- sa -- lem,
  Al -- le -- lu -- ia. 
}

altoWordsII = \lyricmode { 
  \set stanza = #"2. "
  As -- sum -- psit car -- nem ho -- mi -- nis,
  Al -- le -- lu -- ia.
  Ver -- bum Pa -- tris al -- tis -- si -- mi,
  Al -- le -- lu -- ia. 
}

altoWordsIII = \lyricmode { 
  \set stanza = #"3. "
  Per Ga -- bri -- e -- lis nun -- ti -- um,
  Al -- le -- lu -- ia.
  Vir -- go con -- ce -- pit Fi -- li -- um,
  Al -- le -- lu -- ia. 
}

altoWordsIV = \lyricmode { 
  \set stanza = #"4. "
  De ma -- tre na -- tus vir -- gi -- ne,
  Al -- le -- lu -- ia.
  Si -- ne vi -- ri -- li se -- mi -- ne,
  Al -- le -- lu -- ia. 
}

altoWordsV = \lyricmode { 
  \set stanza = #"5. "
  Si -- ne ser -- pen -- tis vul -- ne -- re,
  Al -- le -- lu -- ia.
  De nos -- tro ve -- nit san -- gui -- ne,
  Al -- le -- lu -- ia.
}

altoWordsVI = \lyricmode { 
  \set stanza = #"6. "
  In car -- ne no -- bis si -- mi -- lis,
  Al -- le -- lu -- ia.
  Pec -- ca -- to sed dis -- si -- mi -- lis,
  Al -- le -- lu -- ia.
}

altoWordsVII = \lyricmode { 
  \set stanza = #"7. "
  Tam -- quam spon -- sus de tha -- la -- mo,
  Al -- le -- lu -- ia.
  Pro -- ces -- sit ma -- tris u -- te -- ro,
  Al -- le -- lu -- ia.
}

altoWordsVIII = \lyricmode { 
  \set stanza = #"8. "
  Hic ja -- cet in præ -- se -- pi -- o,
  Al -- le -- lu -- ia.
  Qui re -- gnat si -- ne ter -- mi -- no.
  Al -- le -- lu -- ia.
}

altoWordsIX = \lyricmode { 
  \set stanza = #"9. "
  Co -- gno -- vit bos et a -- si -- nus
  Al -- le -- lu -- ia.
  Quod Pu -- er e -- rat Do -- mi -- nus.
  Al -- le -- lu -- ia. 
}

altoWordsX = \lyricmode { 
  \set stanza = #"10. "
  Et an -- ge -- lus pas -- to -- ri -- bus,
  Al -- le -- lu -- ia.
  Re -- ve -- lat Quis sit Do -- mi -- nus,
  Al -- le -- lu -- ia.
}

altoWordsXI = \lyricmode { 
  \set stanza = #"11. "
  Ma -- gi de lon -- ge ve -- ni -- unt,
  Al -- le -- lu -- ia.
  Au -- rum, thus, myr -- rham of -- fe -- runt.
  Al -- le -- lu -- ia.
}

altoWordsXII = \lyricmode { 
  \set stanza = #"12. "
  In -- tran -- tes do -- mum in -- vi -- cem,
  Al -- le -- lu -- ia.
  Na -- tum sa -- lu -- tant Ho -- mi -- nem,
  Al -- le -- lu -- ia.
}

altoWordsXIII = \lyricmode { 
  \set stanza = #"13. "
  In hoc na -- ta -- li gau -- di -- o,
  Al -- le -- lu -- ia.
  Be -- ne -- di -- ca -- mus Do -- mi -- no,
  Al -- le -- lu -- ia.
}

altoWordsXIV = \lyricmode { 
  \set stanza = #"14. "
  Lau -- de -- tur san -- cta Tri -- ni -- tas,
  Al -- le -- lu -- ia.
  De -- o di -- ca -- mus gra -- ti -- as,
  Al -- le -- lu -- ia.
}

tenorMusic = \relative c' {
  g4 |
  g2 g4 |
  c2 c4 |
  bes2 bes4 |
  bes2 \bar "||"
  bes4 |
  d2( f4 |
  
  d2) c4 |
  bes2 \bar "||"
  bes4 |
  d2 d4 |
  c2 bes4 |
  c2 a4 |
  g2 \bar "||"
  
  g4 |
  d'2.( |
  c |
  d2 c4 |
  bes2) a4 |
  g2
}


bassMusic = \relative c {
  g'4 |
  g2 g4 |
  f2 f4 |
  d2 ees4 |
  bes'2 \bar "||"
  bes4 |
  bes2( a4 |
  
  bes2) f4 |
  bes,2 \bar "||"
  bes'4 |
  g2 d4 |
  f2 g4 |
  c,2 d4 |
  g,2 \bar "||"
  
  g'4 |
  bes2.( |
  f d2 f4 |
  g2) d4 |
  g,2\fermata
}


\bookpart { 
\header {
  title = \songTitle
  subtitle = \songSubtitle 
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
    \new Lyrics = "altosVI"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWordsVI
    \new Lyrics = "altosV"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWordsV
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "altos" \altoWords
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

