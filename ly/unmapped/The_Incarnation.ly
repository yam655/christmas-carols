﻿\version "2.14.2"

songTitle = "The Incarnation"
songPoet = "Rev. H. R. Bramley (1833–1917)"
tuneComposer = "Traditional"
tuneSource = \markup {from \italic {Christmas Carols, New and Old}}

global = {
    \key g \major
    \time 3/4
    \autoBeamOff
    \tempo 4 = 120
}

sopMusic = \relative c' {
    \partial 4
  \repeat unfold 2 {
      \repeat volta 3 {
      g'4 |
      g d' d8[ c] |
      b4 b  b8[ a] |
      g[ a] b4 a |
      g2 g4 |
      
      g d' d8[ c] |
      b4 b b8[ a] |
      g[ a] b4 a |
      g2 b4 |
      a a8[ b] c4 |
      
      b8[ a] g[ fis] g[ a] |
      b[ c] d4 cis |
      d2 c8[ b] |
      c[ d] e[ c] b[ a] |
      d4 d8[ c] b[ a] |
      
      g[ a] b4 a |
      g2 
      b4 |
      a a8[ b] c4 |
      b8[ a] g[ fis] g[ a] |
      b[ c] d4 cis |
      
      d2  c8[ b] |
      c[ d] e[ c] b[ a] |
      d4 d8[ c] b[ a] |
      g[ a] b4 a |
      g2 
    }
  }
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  \repeat unfold 2{
    d4 |
    d g g8[ fis] |
    g4 g g8[ e] |
    d4 g fis |
    g2 e4 |
    
    d4 g g8[ fis] |
    g4 g g8[ e] |
    d4 g fis |
    g2 d4 |
    d d e |
    
    d8[ c] b[ a] d[ fis] |
    g4 fis e |
    fis2 d4 |
    e e fis |
    g f8[ e] d[ c] |
    
    b[ c] d4 c |
    b2 |
    d4 |
    d d e |
    d8[ c] b[ a] d[ fis] |
    g4 fis e |
    
    fis2 d4 |
    e e fis |
    g f8[ e] d[ c] |
    b[ c] d4 c |
    b2
  }
}
altoWords = {
  
  \lyricmode {
    \set stanza = #"1. "
    The great God of Heav -- en is __ come down to earth,
    His moth -- er a Vir -- gin, and sin -- less His Birth;
    The Fa -- ther e -- ter -- nal His Fa -- ther a -- lone:
    He sleeps in the man -- ger; He reigns on the Throne.
  }
  \set stanza = \markup\dynamic"  ff "
  \lyricmode {  
    Then let us a -- dore Him, and praise His great love,
    To save us poor sin -- ners He came from a -- bove.
    
    \set stanza = #"4. "
    The won -- der -- ful Coun -- sel -- lor, bound -- less in might,
    The Fa -- ther’s own Im -- age, the Beam of His Light;
    Be -- hold Him now wear -- ing the like -- ness of man,
    Weak, help -- less, and speech -- less, in mea -- sure a span.
  }
  \set stanza = \markup\dynamic"  ff "
  \lyricmode {
    Then let us a -- dore Him, and praise His great love,
    To save us poor sin -- ners He came from a -- bove.
  }
}
altoWordsII = {
  
  \set stanza = \markup{\dynamic"  mf " "2. "}
  \lyricmode {
    A Babe on the breast of a __ maid -- en He lies,
    Yet sits with the Fa -- ther on high in the skies;
    Be -- fore Him their fa -- ces the Ser -- a -- phim hide,
    While Jo -- seph stands wait -- ing, un -- scared, by His side.
    
    \repeat unfold 22 {\skip1}
  }
  \set stanza = \markup{\dynamic"  mf " "5. "}
  \lyricmode{
    Oh! won -- der of won -- ders, which none can un -- fold;
    The An -- cient of days is an hour or two old;
    The Ma -- ker of all things is made of the \set associatedVoice = "sopranos"
    earth,
    \set ignoreMelismata = ##t
    Man \unset associatedVoice \unset ignoreMelismata is wor -- shipped by an -- gels, and God comes to birth.
  }
}
altoWordsIII = \lyricmode {
  
  \set stanza = #"3. "
  Lo! here is Em -- man -- u -- el, __ here is the Child,
  The Son that was prom -- ised to Ma -- ry so mild;
  Whose pow’r and do -- min -- ion shall ev -- er in -- crease,
  The Prince that shall rule o’er a king -- dom of peace.

  \repeat unfold 22 {\skip1}
  
  \set stanza = #"6. "
  The Word in the bliss of the God -- head re -- mains,
  Yet_in flesh comes to suf -- fer the keen -- est of pains;
  He is that He was, and for -- ev -- er shall \set associatedVoice = "sopranos"
  be,
  
  \set ignoreMelismata = ##t
  But \unset associatedVoice be -- \unset ignoreMelismata 
  comes that He was not, for you and for me.
}
altoWordsIV = \lyricmode {
}
altoWordsV = \lyricmode {
}
altoWordsVI = \lyricmode {
}
tenorMusic = \relative c' {
  \repeat unfold 2{
    b4 |
    b d d |
    d d d8[ c] |
    b4 d c |
    b2 c4 |
    
    d4 d d |
    d d d8[ c] |
    b4 d c |
    b2 g4 |
    fis fis g |
    
    g8[ a] b[ c] d4 |
    d a a |
    a2 g4 |
    g g d' |
    d g, e' |
    
    d g, fis |
    g2 |
    g4 |
    fis fis g |
    g8[ a] b[ c] d4 |
    d a a |
    
    a2 g4 |
    g g d' |
    d g, e' |
    d g, fis |
    g2
  }
}
tenorWords = \lyricmode {

}

bassMusic = \relative c {
  \repeat unfold 2{
    g'4 |
    g b b8[ a] |
    g4 g b,8[ c] |
    d4 d d |
    g2 c4 |
    
    b4 b b8[ a] |
    g4 g b,8[ c] |
    d4 d d |
    g2 g4 |
    d d c |
    
    g' g8[ a] b[ a] |
    g4 a a, |
    d2 g4 |
    c, c c |
    b b c |
    
    d d d |
    g2 |
    g4 |
    d d c |
    g' g8[ a] b[ a] |
    g4 a a, |
    
    d2 g4 |
    c, c c |
    b b c |
    d d d |
    g,2
  }
}
bassWords = \lyricmode {

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
    \new Lyrics \with { alignAboveContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \sopWords
     \new Lyrics = "altosVI"  \with { alignBelowContext = #"women"} \lyricsto "altos" \altoWordsVI
    \new Lyrics = "altosV"  \with { alignBelowContext = #"women"} \lyricsto "altos" \altoWordsV
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women"} \lyricsto "altos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women"} \lyricsto "altos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women"} \lyricsto "altos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "altos" \altoWords
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "tenors" \tenorWords
    \new Lyrics \with { alignBelowContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "basses" \bassWords
  >>
  >>
  \layout { }
  \midi {
    \set Staff.midiInstrument = "flute" 
    %\context { \Voice \remove "Dynamic_performer" }
  }
}
}

