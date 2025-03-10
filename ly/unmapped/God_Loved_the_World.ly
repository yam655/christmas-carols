﻿\version "2.14.2"

tuneTitle = "Also hat Gott die Welt geliebt"
tuneComposer = \markup \null
tuneArranger = "arr. by B. Luard Selby (1853–1918)"
tuneSource = \markup {from \italic {The Cowley Carol Book}, 1919}

songTitle = "God Loved the World"
songSubtitle = \markup{(\tuneTitle)}
songPoet = "from the Trier Gesangbuch, 1871"

global = {
    \key c \major
    \time 2/4
    \autoBeamOff
    \tempo 4 = 120
}

sopMusic = \relative c'' {
  \override DynamicText #'X-offset = #-4
  \once\override DynamicText #'X-offset = #-5
  c4_\mf b8 a |
  g4 g |
  a b c b\rest |
  c_\p b8 a |
  
  g4 g |
  a b |
  c b\rest \bar "||" 
  \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
  \mark "Chorus"
  c2 |
  b4 b |
  
  a2 |
  b4 b |
  a b\rest |
  c d |
  e2 |
  c4 d |
  
  e b\rest |
  e d8 c |
  b4 a^\markup\italic"rall."
  a gis |
  a2\fermata \bar ":|"
  a\fermata \bar "|."
  \once \override Score.RehearsalMark #'break-visibility = #end-of-line-visible
  \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
  \mark\markup\italic"Last verse." 
  
  
  \once\override DynamicText #'X-offset = #-5
  c4_\mf  % \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
  \mark "Additional verses"
    b8 a |
  g4 g |
  a b c b\rest |
  c_\p b8 a |
  
  g4 g |
  a b |
  c b\rest \bar "||" 
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  e8[ fis] g f |
  d4 e8[ d] |
  c4 f |
  e s |
  e8[ g] f f |
  
  f4 e8[ d] |
  c4 f |
  e s |
  e4.( fis8) |
  g4 g |
  
  g8([ e] fis4) |
  b,8[ c] d[ e] |
  fis4 s |
  e a |
  gis2 |
  a4 g8[ f] |
  
  e4 s |
  e8[ fis] g g |
  f[ g] f4 |
  g8[ f] e[ d] |
  e2 |
  e \bar "|."
  
  
  
  e8[ fis] g f |
  d4 e8[ d] |
  c4 f |
  e s |
  e8[ g] f f |
  
  f4 e8[ d] |
  c4 f |
  e s \bar "||"
}
altoWords = {
  
  \lyricmode {
    \set stanza = #"1. "
    God loved the world so that He gave
    His on -- ly Son the world to save.
  }
  \set stanza = \markup\dynamic"  mf "
  \lyricmode {
    Then sing for joy, sing for joy.
  }
  \set stanza = \markup\dynamic"f  "
  \lyricmode {
    Near and far, 
  }
  \set stanza = \markup\dynamic"  pp "
  \lyricmode {
    O and A,
  }
  \set stanza = \markup\dynamic"f  "
  \lyricmode {
    Bless ye the Lord.
    Al -- le -- lu -- ia.
    -ia.
    
    \set stanza = #"5."
    Choos -- ing Him pov -- er -- ty be -- low,
    To make man rich for ev -- er -- mo.
  }
}
altoWordsII = \lyricmode {
  
%\markup\italic
  \set stanza = #"2. "
  Our Sav -- ior He, and chief -- est good,
  Like to our own, took flesh and blood.
  
  \repeat unfold 22 {\skip1}
  \set stanza = #"6."
  What! God the serf, and man the knight!
  Sure, this of love the ve -- ry height.
}
altoWordsIII = \lyricmode {
  
  \set stanza = #"3. "
  The same that sit -- teth thron’d on high,
  A Babe in low -- ly crib doth lie.
  
  \repeat unfold 22 {\skip1}
  \set stanza = #" 7."
  The gate of E -- den once was barr’d,
  But now no need of Cher -- ub -- guard.
}
altoWordsIV = \lyricmode {
  
  \set stanza = #"4. "
  See, the Al -- might -- y Lord of all
  Doth on the garb of com -- mon thrall.
  
  \repeat unfold 22 {\skip1}
  \set stanza = #" 8."
  Where -- fore, I pray you, mer -- ry make,
  And ca -- rol for the Ba -- by’s sake.
}
altoWordsV = \lyricmode {
  \set stanza = #" 5. "
  \set ignoreMelismata = ##t
}
altoWordsVI = \lyricmode {
  \set stanza = #" 6. "
  \set ignoreMelismata = ##t
}
tenorMusic = \relative c' {
  c4 e8 c |
  b4 c8[ bes] |
  a4 f |
  g s |
  c8[ e] d c |
  
  b[ d] c[ bes] |
  a[ g] f4 |
  g s |
  a8[ b c d] |
  d4 d |
  
  d2 |
  g,8[ a] b[ cis] |
  d4 s |
  c8[ b] a4 |
  b2 |
  a4 b |
  
  c s |
  c d8 e |
  d4 c8[ b16 c] |
  d4 b |
  c2 |
  cis2 \bar "|."
  
  
  
  c4 e8 c |
  b4 c8[ bes] |
  a4 f |
  g s |
  c8[ e] d c |
  
  b[ d] c[ bes] |
  a[ g] f4 |
  g s |
}
tenorWords = \lyricmode {

}

bassMusic = \relative c {
  \override DynamicText #'X-offset = #-4
  \once\override DynamicText #'X-offset = #-5
  a'4^\mf e8 f |
  g[ f] e[ c] |
  f[ e] d4 |
  c d\rest |
  c^\p d8 d |
  
  e4 c |
  f8[ e] d4 |
  c d\rest |
  a'2 |
  g8[ a] b[ c] |
  
  d2 |
  g,4 g |
  d d\rest |
  a'8[ g] f4 |
  e2 |
  f8[ e] d4 |
  
  c4 d\rest |
  a b8 c |
  d[ e] f4 |
  d e |
  a,2\fermata |
  a\fermata \bar "|."
  
  
  
  \once\override DynamicText #'X-offset = #-5
  a'4^\mf e8 f |
  g[ f] e[ c] |
  f[ e] d4 |
  c d\rest |
  c^\p d8 d |
  
  e4 c |
  f8[ e] d4 |
  c d\rest |
}


\bookpart { 
\header {
  title = \songTitle
  subtitle = \songSubtitle
  poet = \songPoet
  tuneComposer = \tuneComposer
  arranger = \tuneArranger
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
    \new Lyrics = "altosVI"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsVI
    \new Lyrics = "altosV"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsV
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "sopranos" \altoWords
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "tenors" \tenorWords
  >>
  >>
  \layout { }

    \midi {
        \set Staff.midiInstrument = "flute" 
        \context {
            \Staff \remove "Staff_performer"
        }
        \context {
            \Voice \consists "Staff_performer"
        }
    }
}
}




