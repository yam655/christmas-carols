﻿\version "2.14.2"

\header {
  title = "In natali Domini"
  poet = "14th Century"
  composer = "Melody from Nürnberg Gesangbuch, 1544"
  arranger = "Arranged by G.H. Palmer"
  %source = \markup{ from \italic {The Cowley Carol Book}, 1919}
}

global = {
    \key d \major
    \time 3/4
    \tempo 4 = 180
}

sopMusic = \relative c' {
  \repeat volta 2 {
    e2 g4 |
    fis2 e4 |
    d2 e4 |
    fis2 b4\rest \bar "||"
    fis2 g4 |
    a2 b4 |
    g4 fis2 |

    e2. \bar "||"
    fis2 g4 |
    a2 g4 |
    fis4 e2 |
    d2 b'4\rest \bar "||"
    a2 b4 |
    d2 cis4 |

    b2 a4 |
    b2. \bar "||"  \once \override Score.RehearsalMark #'self-alignment-X = #LEFT \mark "Chorus"
    b2 b4 |
    a2 a4 |
    b2 g4 |
    fis2 b4\rest \bar "||"
    b2 b4 |

    a4( b) c |
    b( a) g |
    fis2. \bar "||"
    fis2 g4 |
    a2 b4 |
    g4 fis2 |
    e2. 
  }
  
  \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
  \mark "Additional verses"
  e2 g4 |
  fis2 e4 |
  d2 e4 |
  fis2 b4\rest \bar "||"
  fis2 g4 |
  a2 b4 |
  g4 fis2 |
  
  e2. \bar "||"
  fis2 g4 |
  a2 g4 |
  fis4 e2 |
  d2 b'4\rest \bar "||"
  a2 b4 |
  d2 cis4 |
  
  b2 a4 |
  b2. \bar "||"
}
sopWords = \lyricmode {
}

altoMusic = \relative c' {
  b2 d4 |
  d2 b4 |
  d2 cis4 |
  d2 s4 \bar "||"
  d2 e4 |
  fis2 g4 |
  d4 d2 |
  
  b2. \bar "||"
  d2 d4 |
  cis4( d) d |
  d2 cis4 |
  d2 s4 \bar "||"
  d2 g4 |
  fis2 fis4 |
  
  d2 d4 |
  d2. \bar "||"
  d2 g4 |
  g( fis) e |
  d2 e4 |
  d2 s4 \bar "||"
  g2 g4 |
  
  fis2 g4 |
  g( d) d |
  d2. \bar "||"
  d2 d4 |
  c2 b4 |
  d4 d2 |
  b2.
  
  
  
  b2 d4 |
  d2 b4 |
  d2 cis4 |
  d2 s4 \bar "||"
  d2 e4 |
  fis2 g4 |
  d4 d2 |
  
  b2. \bar "||"
  d2 d4 |
  cis4( d) d |
  d2 cis4 |
  d2 s4 \bar "||"
  d2 g4 |
  fis2 fis4 |
  
  d2 d4 |
  d2. \bar "||"
}
altoWords = \lyricmode {
  
  \set stanza = #"1. "
  In na -- tá -- li Dó -- mi -- ni,
  Gau -- dent om -- nes An -- ge -- li 
  Et can -- tant cum jú -- bi -- lo_:
  Gló -- ri -- a u -- ni De -- o.
  
  \set associatedVoice = "tenors"
  Vir -- go De -- um gé -- nu -- it, 
  Vir -- go Chris -- tum pé -- pe -- rit,
  \unset associatedVoice
  Vir -- go sem -- per in -- tác -- ta.


  \set stanza = #"3. "
  Na -- tus est E -- má -- nu -- el,
  Quem præ -- dí -- xit Gá -- bri -- el,
  Tes -- tis est E -- zé -- chi -- el_:
  A Pa -- tre pro -- cés -- _ sit.
}
altoWordsII = \lyricmode {
  
  \set stanza = #"2. "
  Nun -- ti -- á -- vit An -- ge -- lus
  Gáu -- di -- um pas -- tó -- ri -- bus, 
  Chris -- ti na -- ti -- vi -- tá -- tem
  Ma -- gnam ju -- cun -- di -- tá -- tem.
  
  \repeat unfold 21 {\skip1}
  \set stanza = #"4. "
  Chris -- tus na -- tus hó -- di -- e
  Ex Ma -- rí -- a vír -- gi -- ne,
  Non con -- cép -- tus sé -- mi -- ne
  Ap -- pá -- ru -- it hó -- di -- e_:

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
  g'2 g4 |
  a2 g4 |
  a2 g4 |
  a2 s4 \bar "||"
  b2 b4 |
  d2 d4 |
  g,4 a2 |
  
  g2. \bar "||"
  a2 d4 |
  a2 b4 |
  a2 g4 |
  fis2 s4 \bar "||"
  a2 g4 |
  b2 a4 |
  
  g2 fis4 |
  fis2. \bar "||"
  g2 d'4 |
  d2 c4 |
  b2 b4 |
  b2 s4 \bar "||"
  d2 d4 |
  
  d2 e4 |
  d( c) b |
  a2. \bar "||"
  a2 g4 |
  e( fis) g |
  g a2 |
  g2.
  
  
  
  
  
  g2 g4 |
  a2 g4 |
  a2 g4 |
  a2 s4 \bar "||"
  b2 b4 |
  d2 d4 |
  g,4 a2 |
  
  g2. \bar "||"
  a2 d4 |
  a2 b4 |
  a2 g4 |
  fis2 s4 \bar "||"
  a2 g4 |
  b2 a4 |
  
  g2 fis4 |
  fis2. \bar "||"
}
tenorWords = \lyricmode {
}

bassMusic = \relative c {
  e2 b4 |
  d2 e4 |
  fis2 e4 |
  d2 d4\rest \bar "||"
  b2 e4 |
  d2 g,4 |
  b4 d2 |
  
  e2. \bar "||"
  d2 b4 |
  fis'2 g4 |
  d4 a2 |
  d2 d4\rest \bar "||"
  fis2 e4 |
  b2 fis'4 |
  
  g2 d4 |
  b2. \bar "||"
  g'2 g4 |
  d2 d4 |
  g2 e4 |
  b2 d4\rest \bar "||"
  g,2 b4 |
  
  d2 c4 |
  g'2 g4 |
  d2. \bar "||"
  d2 b4 |
  a2 g4 |
  b4 d2 |
  e2.
  
  
  
  
  
  e2 b4 |
  d2 e4 |
  fis2 e4 |
  d2 d4\rest \bar "||"
  b2 e4 |
  d2 g,4 |
  b4 d2 |
  
  e2. \bar "||"
  d2 b4 |
  fis'2 g4 |
  d4 a2 |
  d2 d4\rest \bar "||"
  fis2 e4 |
  b2 fis'4 |
  
  g2 d4 |
  b2. \bar "||"
}
bassWords = \lyricmode {

}

  

\bookpart {
\score {
  <<
   \new ChoirStaff <<
    \new Staff = women <<
      \new Voice = "sopranos" { \voiceOne << \global \sopMusic >> }
      \new Voice = "altos" { \voiceTwo << \global \altoMusic >> }
    >>
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 0) (padding . -1))} \lyricsto "sopranos" \sopWords
     \new Lyrics = "altosVI"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 0))} \lyricsto "sopranos" \altoWordsVI
    \new Lyrics = "altosV"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 0))} \lyricsto "sopranos" \altoWordsV
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 0))} \lyricsto "sopranos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 0))} \lyricsto "sopranos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 0))} \lyricsto "sopranos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWords
    \new Lyrics \with { alignAboveContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 0) (padding . -1)) } \lyricsto "tenors" \tenorWords
    \new Lyrics \with { alignBelowContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 0)) } \lyricsto "basses" \bassWords
  >>
  >>
  \layout { }
  \midi {
    \set Staff.midiInstrument = "flute" 
    %\context { \Voice \remove "Dynamic_performer" }
  }
}
}

