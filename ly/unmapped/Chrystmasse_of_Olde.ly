\version "2.14.2"


\header {
  title = "Chrystmasse of Olde"
  poet = "Eugene Field (1850–1895)"
  composer = \markup{\italic {Swiss Air}}
  %source = \markup \concat{ "from " \italic "Favorite Songs and Hymns for School and Home" ", 1899, via " \italic"books.google.com"}
}

global = {
    \key d \major
    \time 3/4
    \autoBeamOff
    \tempo 4 = 80
}

sopMusic = \relative c' {
    \partial 8*3
  \repeat volta 2 {
    fis8 fis g |
    a4. fis'8 fis e |
    d4( fis,8) a b a |
    a cis, cis e b' a | 
    
    a d, d fis fis g |
    a4. a8 fis' e |
    d4( fis,) a | 
    a8[ gis b] a g e |
    
    d4 b'8\rest a b a |
    a cis, cis e b' a | 
    a d, d a' b a |
    a cis, cis e b' a |
    
    a d, d fis fis g | 
    a4. a8 fis' e |
    d4( fis,) a |
    a8[ gis b] a g e |
    d4. 
  }
  \pageBreak
}
  

altoMusic = \relative c' {
  d8 d e |
  fis4. a8 a g |
  fis4( d8) fis g fis |
  e a, a cis cis cis |
  
  d a a d d e |
  fis4. fis8 a g |
  fis4( d) fis |
  fis8[ e d] cis cis cis |
  
  d4 s8 fis g fis |
  e a, a cis e e |
  d d d fis g fis |
  e a, a cis e e |
  
  d d d d d e |
  fis4. fis8 a g |
  fis4( d) fis |
  fis8[ e d] cis cis cis |
  d4.
}

altoWords = \lyricmode { 
  \set stanza = #"1. "
  God rest you, Chryst -- en gen -- til men, 
    Wher -- ev -- er you may be,
    Wher -- ev -- er you may be,
  God rest you all in fielde or hall,
    Or on __ ye storm -- y sea; 
  For on this morn, this morn, oure Chryst is born, is born,
    That sav -- eth you and me,
    That sav -- eth you and me.
  For on this morn oure Chryst is born
    That sav -- eth you and me.
}

altoWordsII = \lyricmode { 
  \set stanza = #"2. "
  Last night ye shep -- herds in ye east 
    Saw ma -- ny~a won -- drous thing,
    Saw ma -- ny~a won -- drous thing;
  Ye sky last night flamed pass -- ing bright
    Whiles that __ ye stars did sing, 
  And an -- gels came to bless, to bless ye name, ye name
    Of Je -- sus Chryst, oure Kyng,
    Of Je -- sus Chryst, oure Kyng.
  And an -- gels came to bless ye name
    Of Je -- sus Chryst, oure Kyng. 
}

altoWordsIII = \lyricmode { 
  \set stanza = #"3. "
  God rest you, Chryst -- en gen -- til men, 
    Far -- ing wher -- e’er you may,
    Far -- ing wher -- e’er you may;
  In no -- blesse court do thou no sport,
    In tour -- na -- ment no playe, 
  In Pay -- nim lands hold thou, hold thou thy hands, thy hands
    From bloud -- y works this daye,
    From bloud -- y works this daye.
  In Pay -- nim lands hold thou thy hands
    From bloud -- y works this daye.
}

altoWordsIV = \lyricmode { 
  \set stanza = #"4. "
  But think -- ing on ye gen -- til Lord 
    That died up -- on ye tree,
    That died up -- on ye tree,
  Let troub -- lings cease and deeds of peace
    A -- bound __ in Chryst -- an -- tie;
  For on this morn, this morn, oure Chryst is born, is born,
    That sav -- eth you and me,
    That sav -- eth you and me.
  For on this morn oure Chryst is born
    That sav -- eth you and me.
}

tenorMusic = \relative c' {
  a8 a a |
  d4. d8 d a |
  a4. d8 d d |
  cis e, e a g g |
  
  fis fis fis a a a |
  d4. d8 d a |
  a2 d4 |
  d8[ b gis] a a g |
  
  fis4 s8 d' d d |
  cis e, e a g g |
  fis fis fis d' d d |
  cis e, e a g g |
  
  fis fis fis a a a |
  d4. d8 d a |
  a2 d4 |
  d8[ b gis] a a g |
  fis4.
}


bassMusic = \relative c {
  d8 d d |
  d4. d8 d d |
  d4. d8 d d |
  a a a a a a |
  
  d d d d d d |
  d4. d8 d d |
  d2 d4 |
  a4. a8 a a |
  
  d4 d8\rest d d d |
  a a a a a a |
  d d d d d d |
  a a a a a a |
  
  d d d d d d |
  d4. d8 d d |
  d2 d4 |
  a4. a8 a a |
  d4.
}


\bookpart {
\score {
  <<
   \new ChoirStaff <<
    \new Staff = women <<
      \new Voice = "sopranos" { \voiceOne << \global  \sopMusic >> }
      \new Voice = "altos" { \voiceTwo << \global  \altoMusic >> }
    >>
    \new Lyrics = "altos"   \lyricsto "altos" \altoWords
    \new Lyrics = "altosII"  \lyricsto "altos" \altoWordsII
    \new Lyrics = "altosIII"  \lyricsto "altos" \altoWordsIII
    \new Lyrics = "altosIV"   \lyricsto "altos" \altoWordsIV
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global  \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global  \bassMusic >> }
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
