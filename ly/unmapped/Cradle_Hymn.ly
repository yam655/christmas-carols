﻿\version "2.14.2"

songTitle = "Cradle Hymn"
songPoet = "Isaac Watts (1674–1748)"
tuneComposer = \markup{from \italic{Repository of Sacred Music, Part Second}, 1813}
tuneSource = \markup \null

global = {
    \key d \major
    \time 3/4
    \dynamicUp
    \autoBeamOff
    %\override DynamicTextSpanner #'style = #'none
    \tempo 4 = 90
}

sopMusic = \relative c' {
    \partial 4
  \repeat unfold 2 {
    fis8 e |
    d4 d fis8 a |
    e4 e fis8 a |
    b4 a fis8 e |
    d2 
  }
  
  a'8 b16[ cis] |
  d4 cis b8 a |
  b[ a] fis4 a8 b16[ cis] |
  d4 cis b8 a |
  d2 

  fis,8 e |
  d4 d fis8 a |
  e4 e fis8 a |
  b4 a fis8 e |
  d2 
  
  \bar "|."
}
sopWords = \lyricmode {
  \set stanza = #"1. "
	Hush, my dear, lie still and slum -- ber,
    Ho -- ly an -- gels guard thy bed,
  Heav -- n’ly bless -- ings with -- out num -- ber,
    Gen -- tly fall -- ing on thy head.

  Sleep, my babe; thy food and rai -- ment,
    House and home, thy friends pro -- vide;	 
  All with -- out thy care or pay -- ment:	 
    All thy wants are well sup -- plied.
}

sopWordsII = \lyricmode {
  \set stanza = #"2. "
  How much bet -- ter thou’rt at -- tend -- ed,
    Than the Son of God could be,
  When from Heav -- en He de -- scend -- ed,
    And be -- came a child like thee!
    
  Soft and ea -- sy is thy cra -- dle,
    Coarse and hard thy Sav -- ior lay:
  When His birth -- place was a sta -- ble,
    And His soft -- est bed was hay.
}

sopWordsIII = \lyricmode { 
  \set stanza = "3. "
  Bless -- ed babe! what glo -- rious fea -- tures—	 
    Spot -- less fair, di -- vine -- ly bright!	 
  Must He dwell with bru -- tal crea -- tures?	 
    How could an -- gels bear the sight?
  
  Was there noth -- ing but a man -- ger
    Curs -- ed sin -- ners could af -- ford
  To re -- ceive the heav’n -- ly Stran -- ger?
    Did they thus af -- front their Lord?
}

sopWordsIV = \lyricmode {
  \set stanza = #"4. "
  Soft, my child, I did not chide thee,
    Though my song may seem too hard;
  ’Tis thy mo -- ther sits be -- side thee,
    And her arms shall be thy guard.
 
  Yet to tell the shame -- ful sto -- ry,
    How His foes a -- bused their King;
  How they killed the Lord of glo -- ry,
    Makes me an -- gry while I sing.
}

sopWordsV = \lyricmode {
  \set stanza = #"5. "
  See the kind -- er shep -- herds round Him,	 
    Tell -- ing won -- ders from the sky!	 
  Where they sought Him, there they found Him,
    With His Vir -- gin mo -- ther by.	 

  See the love -- ly Babe a -- dress -- ing;	 
    Love -- ly in -- fant, how He smiled!	 
  When He wept, the mo -- ther’s bless -- ing	 
    Soothed and hush’d the ho -- ly Child.
}

sopWordsVI = \lyricmode {
  \set stanza = #"6. "
  Lo, He slum -- bers in His man -- ger,
    Where the horn -- ed ox -- en fed:
  Peace, my dar -- ling; here’s no dan -- ger,
    Here’s no ox a -- near thy bed.

  ’Twas to save thee, child, from dy -- ing,
    Save my dear from burn -- ing flame,
  Bit -- ter groans and end -- less cry -- ing,
    That thy blest Re -- deem -- er came.
}

sopWordsVII = \lyricmode {
  \set stanza = #"7. "
  Mayst thou live to know and fear him,	
    Trust and love him all thy days;
  Then go dwell for -- ev -- er near him,	
    See his face and sing his praise!	
   
  I could give thee thou -- sand kiss -- es,	
    Hop -- ing what I most de -- sire;	
  Not a mo -- ther’s fond -- est wish -- es
    Can to great -- er joys a -- spire.
}

altoMusic = \relative c' {
  \partial 4
  \repeat unfold 2 {
    d8 cis |
    d4 d d8 d |
    cis4 cis d8 d |
    d4 d d8 cis |
    d2 
  }
  
  d8 g |
  fis4 a g8 fis |
  d4 d d8 g |
  fis4 a g8 fis |
  fis2 
  
  d8 cis |
  d4 d d8 d |
  cis4 cis d8 d |
  d4 d d8 cis |
  d2
  
  \bar "|."
}
altoWords = \lyricmode {
}
altoWordsII = \lyricmode {
%\markup\italic
  \set stanza = #"2. "
}
altoWordsIII = \lyricmode {
  \set stanza = #"3. "
}
altoWordsIV = \lyricmode {
  \set stanza = #"4. "
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
  \partial 4
  \repeat unfold 2 {
    a8 g |
    fis4 fis a8 a |
    a4 a a8 a |
    g4 fis a8 g |
    fis2 
  }
  
  a8 g |
  a4 a d8 d |
  g,8[ fis] a4 a8 g |
  a4 a d8 d |
  a2 
  
  a8 g |
  fis4 fis a8 a |
  a4 a a8 a |
  g4 fis a8 g |
  fis2
  
  \bar "|."
}

tenorWords = \lyricmode {
}

tenorWordsII = \lyricmode {
}

tenorWordsIII = \lyricmode {
}

bassMusic = \relative c' {
  \partial 4
  \repeat unfold 2 {
    d,8 a |
    d4 d d8 fis, |
    a4 a d8 fis |
    g4 d a8 a |
    d2 
  }
  
  fis8 e |
  d4 fis g8 d |
  d4 d fis8 e |
  d4 fis g8 d |
  d2 
  
  d8 a |
  d4 d d8 fis, |
  a4 a d8 fis |
  g4 d a8 a |
  d2
  
  \bar "|."
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
      \new Voice = "sopranos" \transpose d ees{ \voiceOne << \global \sopMusic >> }
      \new Voice = "altos" \transpose d ees{ \voiceTwo << \global \altoMusic >> }
    >>
    \new Lyrics = "altos"  \lyricsto "altos" \sopWords
    \new Lyrics = "altosII"  \lyricsto "altos" \sopWordsII
    \new Lyrics = "altosIII"  \lyricsto "altos" \sopWordsIII
    \new Lyrics = "altosIV"  \lyricsto "altos" \sopWordsIV
    \new Lyrics = "altosV"  \lyricsto "altos" \sopWordsV
    \new Lyrics = "altosVI"  \lyricsto "altos" \sopWordsVI
    \new Lyrics = "altosVII"  \lyricsto "altos" \sopWordsVII
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" \transpose d ees{ \voiceOne << \global \tenorMusic >> }
      \new Voice = "basses" \transpose d ees{ \voiceTwo << \global \bassMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"tenors" } \lyricsto "tenors" \tenorWordsIII
    \new Lyrics \with { alignAboveContext = #"tenors" } \lyricsto "tenors" \tenorWordsII
    \new Lyrics \with { alignAboveContext = #"tenors" } \lyricsto "tenors" \tenorWords
  >>
  >>
  \layout {
    \context {
      % Remove all empty staves
      \Staff \RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##t
      
      \override VerticalAxisGroup #'staff-staff-spacing =
      #'((basic-distance . 0)
         (minimum-distance . 0)
         (padding . -1)
         (stretchability . 2))
    }
  }
  \midi {
    %\set midiInstrument = "recorder"
    \set Staff.midiInstrument = "flute"
    %\context { \Voice \remove "Dynamic_performer" }
  }
}
}

