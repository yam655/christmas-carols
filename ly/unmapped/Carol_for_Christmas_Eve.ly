\version "2.14.2"

\header {
  title = "Carol for Christmas Eve"
  poet = "Rev. H. R. Bramley (1833–1917)"
  composer = "Sir Frederick A. G. Ouseley (1825–1889)"
  %source = \markup { "from" \italic {Christmas Carols, New and Old}}
}

global = {
    \key c \major
    \time 2/4
    \autoBeamOff
    \tempo 4 = 80
}

sopMusic = \relative c' {
  \repeat volta 2 {
    c8 c' b a |
    g8. e16 c8 d |
    e16[ f] g8 e c' |
    b2 |
    a8 b c e | 
    
    d fis, g a |
    b c a8. g16 |
    g4 b\rest |
    d8 d e8. e16 |
    e8. d16 d8 g, | 
    
    c d e d16[ c] |
    d4 b\rest |
    d8. d16 d8 c |
    b8. c16 a8 e |
    f a a gis | 
    
    a b\rest b\rest 
    b |
    c b\rest b\rest g |
    e b'\rest b\rest g |
    a g f g |
    a g e4 | 
    
    c'8 c16 c f8 e |
    d4 d |
    e8 d c b |
    a g f e |
    a16[ b] c8 d8.-> c16 |
    c4 b\rest 
  }
}

altoMusic = \relative c' {
  c8 c' b a |
  g8. e16 c8 b |
  c d e fis |
  g2 |
  e8 g g a16[ g] |
  
  fis8 d16[ c] b8 e |
  d c e d16[ c] |
  b4 s |
  g'8 g g8. g16 |
  g8. g16 g8 g |
  
  g g g g |
  g4 s |
  f8. f16 e8 e |
  d8. e16 c8 e |
  d d e e |
  
  e s s g |
  g s s e |
  c s s e |
  e e d e |
  f e16[ d] c4 |
  
  a'8 a16 a a8 g |
  g4 g |
  g8 g e e |
  c c c16[ b] c8 |
  f g f8. e16 |
  e4 s
}
altoWords = \lyricmode {
  
  \set stanza = #"1. "
  Lis -- ten, Lord -- ings, un -- to me, a tale I will you tell;
  Which, as on this night of glee, in Da -- vid’s town be -- fell.
  Jo -- seph came from Na -- za -- reth, with Ma -- ry that sweet maid:
  Wea -- ry were they, nigh to death; and for a lodg -- ing pray’d.
  
  \set associatedVoice = "tenors"
  Sing high, sing high,
  \set associatedVoice = "basses" sing low,
  sing low, sing high, sing low,
  \unset associatedVoice
  sing to and fro,
  Go tell it out with speed, Cry out and shout all round a -- bout,
  That Christ is born in -- deed.
  
  
  \set stanza = #"3. "
  Shep -- herds lay a -- field that night, to keep the sil -- ly sheep,
  Hosts of An -- gels in their sight came down from heav’n’s high steep.
  Ti -- dings! Ti -- dings! un -- to you: to you a Child is born,
  Pur -- er than the drops of dew, and bright -- er than the morn.
  
  \set associatedVoice = "tenors"
  Sing high, sing high,
  \set associatedVoice = "basses" sing low,
  sing low, sing high, sing low,
  \unset associatedVoice
  sing to and fro,
  Go tell it out with speed, Cry out and shout all round a -- bout,
  That Christ is born in -- deed.
}
altoWordsII = \lyricmode {
  
%\markup\italic
  \set stanza = #"2. "
  In the Inn they found no room; a scan  -- ty bed they made:
  Soon a Babe from Ma -- ry’s womb was in the man -- ger laid.
  Forth He came as light through glass: He came to save us all.
  In the sta -- ble ox and ass be -- fore their Ma -- ker fall.
  
  \repeat unfold 32 \skip1
  
  \set stanza = #"4. "
  On -- ward then the An -- gels sped, the shep -- herds on -- ward went,
  God was in His man -- ger bed, in wor -- ship low they bent.
  In the morn -- ing see ye mind, my mas -- ters one and all,
  At the Al -- tar Him to find, Who lay with -- in the stall.
}
altoWordsIII = \lyricmode {
}
altoWordsIV = \lyricmode {
}
altoWordsV = \lyricmode {
  \set stanza = #"5. "
  \set ignoreMelismata = ##t
}
altoWordsVI = \lyricmode {
  \set stanza = #"6. "
  \set ignoreMelismata = ##t
}
tenorMusic = \relative c {
  c8 c' b a |
  g8. e16 c8 g' |
  g g g a |
  d2 |
  c8 d c c16[ b] |
  
  a8 b16[ a] g8 g |
  g g g fis |
  g4 s |
  b8 b b8. c16 |
  c8. b16 b8 g |
  
  a b c b16[ a] |
  b4 s |
  a8. a16 a8 a |
  gis8. gis16 a8 a |
  a a b b |
  
  c8 s s d |
  e c c c |
  g c\rest c\rest c |
  c c a c |
  c b c4 |
  
  c8 c16 c c8 c |
  b4 b |
  c8 b c g |
  a e f g |
  c e b8. c16 |
  c4 s
}

bassMusic = \relative c {
  c8 c' b a |
  g8. e16 c8 g |
  c b c a |
  g2 |
  g'8 f e c |
  
  d d e c |
  d e c d |
  g,4 d'\rest |
  g8 g e8. c16 |
  g'8. g16 g8 g |
  
  e d c c |
  g'4 d\rest |
  d8. d16 a8 a |
  e'8. e16 f8 c |
  d f e e |
  
  a d,\rest d\rest g |
  c d,\rest d\rest c |
  c c c c |
  a c d c |
  f g a4 |
  
  f8 f16 f f8 c' |
  g4 g |
  c8 g a e |
  f c d e |
  f c g8. c16 c4 d\rest
}

\bookpart {
\score {
  <<
   \new ChoirStaff <<
    \new Staff = women <<
      \new Voice = "sopranos" { \voiceOne << \global \repeat unfold 2 \sopMusic >> }
      \new Voice = "altos" { \voiceTwo << \global \repeat unfold 2 \altoMusic >> }
    >>
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \repeat unfold 2 \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \repeat unfold 2 \bassMusic >> }
    >>
     \new Lyrics = "altosVI"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsVI
    \new Lyrics = "altosV"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsV
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWords
  >>
  >>
  \layout { }
  \midi {
    \set Staff.midiInstrument = "flute"
  
    %\context { \Voice \remove "Dynamic_performer" }
  }
}
}

