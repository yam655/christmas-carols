﻿\version "2.14.2"

\header {
  title = "Riu Riu Chiu"
  composer = "Mateo Flecha el Viejo (1481–1553)"
  %source = \markup { "from" \italic {cpdl.org}}
}

global = {
    \key c \major
    \time 4/4
    \autoBeamOff
    \tempo 4 = 140
}

sopMusic = \relative c' {
  s4*26 |
  
  %\once \override Score.RehearsalMark #'self-alignment-X = #LEFT
  \mark \markup { \abs-fontsize #9 \musicglyph #"scripts.segno" }
  a'8 a g a |
  f4 e8 d4 e8 f g |
  a4 a b\rest |
  b\rest d\rest |
  a8 a g a |
  
  f4 e8 f4 f8 e e |
  d4 d b'\rest |
  b\rest d\rest |
  a8 a g a |
  f4 e8 d4 d8 c c |
  d4 d \bar "||"
    \once \override Score.RehearsalMark #'break-visibility = #end-of-line-visible
    \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
    \mark "Fine"
}
sopWords = \lyricmode {
  \repeat unfold 12 {\skip1}
  Dios guar -- do el
  \repeat unfold 8 {\skip1}
  Dios guar -- do el
}

altoMusic = \relative c' {
  s4*26 |
  
  f8 f e c |
  d4 e8 f4 e8 d d |
  c4 c s |
  s e8 e |
  d c e c |
  
  d4 c8 d4 d8 c c |
  d4 d s |
  s e8 e |
  d c e c |
  d4 c8 a4 a8 a a |
  a4 a \bar "|."
}

altoWords = \lyricmode {
  
  Ri -- u, ri -- u Chi -- u la guar -- da ri -- be -- ra.
  
  Dios guar -- do el lo -- bo,_el
  
  lo -- bo de nues -- tra cor -- de -- ra.
  
  
  Dios guar -- do el lo -- bo,_el
  
  lo -- bo de nues -- tra cor -- de -- ra.
  
}
altoWordsII = \lyricmode {
%\markup\italic
  \set stanza = #"2. "
  \set ignoreMelismata = ##t
}
altoWordsIII = \lyricmode {
  \set stanza = #"3. "
  \set ignoreMelismata = ##t
}
altoWordsIV = \lyricmode {
  \set stanza = #"4. "
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
  s4*26 |
  
  c8 c c a |
  a4 a8 a4 a8 d, d |
  e4 e s |
  c'8 c b c |
  a4 b8 a |
  
  a4 a8 a4 a8 a a |
  a4 a s |
  c8 c b c |
  a4 b8 a |
  a4 a8 f4 f8 e e |
  d4 d \bar "|."
}
tenorWords = \lyricmode {
  \repeat unfold 12 {\skip1}
  Dios guar -- do el lo -- bo, el
  \repeat unfold 8 {\skip1}
  Dios guar -- do el lo -- bo, el
}

bassMusic = \relative c' {
  \oneVoice
  \partial 2 a8 a g a |
  f4 e8 d4 e8 f g |
  \time 3/4 a4 a r |
  \time 2/4 a8 a g a |
  
  \time 4/4 f4 e8 g4 g8 e f |
  \time 3/4 d4 d r |
  \time 2/4 a'8 a g a |
  \time 4/4 f4 e8 g4 g8 e f |
  d4 d \bar "||" 
  
  \voiceTwo
  f8 f c f |
  d4 a8 d4 c8 bes bes |
  \time 3/4 a4 a d\rest |
  \time 2/4 a'8 a g a |
  f4 e8 f |
  
  \time 4/4 d4 a8 d4 d8 a a |
  \time 3/4 d4 d d\rest |
  \time 2/4 a'8 a g a |
  f4 e8 f |
  \time 4/4 d4 a8 d4 d8 a a |
  d4 d \bar "||" 
  
  \oneVoice
  \slurSolid
  {
    %Verse 1
    a'8 a g a f4 e8 g( |
    g) g e f d2 |
    a'8 a g a f4 f8 e |
    
    g g e f d2 |
    a'8 a g a f4 f8 e |
    d e f g a4. a8 |
    
    a a g a f4 f8 e |
    g g e f d4 d \bar "||" 
    \once \override Score.RehearsalMark #'break-visibility = #end-of-line-visible
    \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
    \mark "D.S."
  }
  
  
  {
    %Verse 2
    a'8 a g a f4 e8 g( |
    g) g e f d4 d |
    a'8 a g a f4 f8 e |
    
    g4 e8 f d4 d |
    a'8 a g a f4 f8 e |
    d e f g a4 a8 a |
    
    a a g a f4 f8 e |
    g g e f d4 d \bar "||" 
    \once \override Score.RehearsalMark #'break-visibility = #end-of-line-visible
    \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
    \mark "D.S."
  }
  {
    %Verse 3
    a'8 a g a f4 e8 g |
    g g e f d4 d |
    a'8 a g a f4 f8 e |
    
    g g e f d4 d |
    a'8 a g a f4 f8 e |
    d( e) f g a4 a4 |
    
    a8 a g a f4 f8 e |
    g4 e8 f d4 d \bar "||" 
    \once \override Score.RehearsalMark #'break-visibility = #end-of-line-visible
    \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
    \mark "D.S."
  }
  
  {
    %Verse 4
    a'8 a g a f4 e8 g( |
    g) g e f d4 d |
    a'8 a g a f4 f8 e |
    
    g4 e8 f d4 d |
    a'8 a g a f4 f8 e |
    d e f g a4 a4 |
    
    a8 a g a f4 f8 e |
    g4 e8 f d4 d \bar "||" 
    \once \override Score.RehearsalMark #'break-visibility = #end-of-line-visible
    \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
    \mark "D.S."
  }
  {
    %Verse 5
    a'8 a g a f4 e8 g( |
    g) g e f d4 d |
    a'8 a g a f f f e |
    
    g g e f d4 d |
    a'8 a g a f4 f8 e |
    d( e) f g a4 a4 |
    
    a8 a g a f4 f8 e |
    g4 e8 f d4 d \bar "||" 
    \once \override Score.RehearsalMark #'break-visibility = #end-of-line-visible
    \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
    \mark "D.S."
  }
  {
    %Verse 6
    a'8 a g a f4 e8 g( |
    g) g e f d4 d |
    a'8 a g a f4 f8 e |
    
    g g e f d4 d |
    a'8 a g a f4. e8 |
    d( e) f g a4 a4 |
    
    a8 a g a f4 f8 e |
    g8 g e f d4 d \bar "||" 
    \once \override Score.RehearsalMark #'break-visibility = #end-of-line-visible
    \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
    \mark "D.S."
  }
  {
    %Verse 7
    a'8 a g a f4 e8 g( |
    g) g e f d4 d |
    a'8 a g a f4 f8 e |
    
    g4 e8 f d4 d |
    a'8 a g a f4. e8 |
    d( e) f g a4 a4 |
    
    a8 a g a f4 f8 e |
    g g e f d4 d \bar "||" 
    \once \override Score.RehearsalMark #'break-visibility = #end-of-line-visible
    \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
    \mark "D.S."
  }
}
bassWords = \lyricmode {
  
  Ri -- u, ri -- u Chi -- u la guar -- da ri -- be -- ra.
  Dios guar -- do el lo -- bo de nues -- tra cor -- de -- ra.
  Dios guar -- do el lo -- bo de nues -- tra cor -- de -- ra.
  
  \repeat unfold 42 {\skip1}
  \set stanza = #"1. "
  El lo -- bo ra -- bio -- so la qui -- so mor -- der;
  Mas Dios po -- de -- ro -- so la
  su -- po de -- fen -- der;
  Qui -- zo -- le ha -- zer que no pu -- dies -- se pe -- car,
  Ni aún o -- ri -- gi -- nal es -- ta Vir -- gen no tu -- vie -- ra.
  
  \set stanza = #"2. "
  Es -- te ques na -- çi -- do es el gran mo -- nar -- cha;
  Chris -- to pa -- tri -- ar -- cha de car -- ne ves -- ti -- do;
  Ha -- nos re -- di -- mi -- do con se ha -- zer chi -- qui -- to;
  A un que -- ra_in -- fi -- ni -- to fi -- ni -- to ses hi -- zie -- ra.
  
  \set stanza = #"3. "
  Mu -- chas pro -- fe -- ci -- as Io -- an pro -- fe -- ti -- za -- do
  Ya_un en nue -- stra di -- as lo he -- mos al con -- ça -- do
  A dios hu -- ma -- na -- do ve -- mos en el çie -- lo
  Y_al hom -- bre nel cie -- lo pues quel le quis -- te -- ra.
  
  
  \set stanza = #"4. "
  Yo vi mil’ gar -- ço -- nes que an duan can -- tan -- do
  Por a -- qui bo -- lan -- do ha -- zien -- do mil -- so -- nes
  Du -- zien do a -- ga -- sco -- nes Glo -- ria sean el çie -- lo
  Y pas en el sue -- lo pues Ie -- su nas -- çie -- ra.
  
  \set stanza = #"5. "
  Es -- te vie -- ne a dar a -- los muer -- tos vi -- da
  Y vie -- ne a re -- pa -- rar de to -- dos la sa -- y -- da
  Es la luz del Di -- a a ques -- te mo -- cue -- lo
  Es -- tes al dor -- de -- ro Que San Juan di -- xe -- ra.
  
  
  \set stanza = #"6. "
  Mi -- ra bien que_os cua -- dre que_an -- si na l’o -- ye -- ra
  Que Dios no pu -- die -- ra ha -- zer -- la mas que Ma -- dre
  El que -- ra su Pa -- dre oy d’e -- lla nas -- çio
  Y el que la cri -- o su hi -- jo se di -- xe -- ra.
  
  \set stanza = #"7. "
  Pues que ya -- te ne -- mos lo que des -- se a -- mos
  To -- dos lun -- tos va -- mos pre -- sen -- tes lle -- ve -- mos
  To -- dos le da -- re -- mos
  Nue -- stra vo -- lut -- tad
  Pues as -- ci -- gu -- al -- ar con el hom -- bre vi -- nie -- ra.
}

bassWordsII = \lyricmode {
  \repeat unfold 78{\skip1}
  
  
}

bassWordsIII = \lyricmode {
  \repeat unfold 166 \skip1
  \set ignoreMelismata = ##t
  
}

bassWordsIV = \lyricmode {
}
  

\bookpart {
\score {
  <<
   \new ChoirStaff <<
    \new Staff = women <<
      \new Voice = "sopranos" { \voiceOne << \global \sopMusic >> }
      \new Voice = "altos" { \voiceTwo << \global \altoMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \sopWords
    \new Lyrics = "altosVI"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWordsVI
    \new Lyrics = "altosV"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWordsV
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWords
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "tenors" \tenorWords
    \new Lyrics \with { alignBelowContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "basses" \bassWordsIV
    \new Lyrics \with { alignBelowContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "basses" \bassWordsIII
    \new Lyrics \with { alignBelowContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "basses" \bassWordsII
    \new Lyrics \with { alignBelowContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "basses" \bassWords
  >>
  >>
  \layout {
    \context {
      % Remove all empty staves
       \Staff \RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##t
    }
  }
  \midi {
    \set Staff.midiInstrument = "flute" 
    %\context { \Voice \remove "Dynamic_performer" }
  }
}
}

