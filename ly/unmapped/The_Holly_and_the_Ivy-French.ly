\version "2.14.2"

-- The problem with this file is that verses 4 and 5 were are distinctly different.
-- Need to confirm how chorus works with versus 4 and 5

songTitle = "The Holly and the Ivy"
songPoet = "17th Century English"
tuneComposer = "Old French Carol"
tuneSource = \markup {from \italic {Christmas Carols, New and Old}}

global = {
    \key f \major
    \time 6/8
    \autoBeamOff
    \tempo 4 = 90
}

sopMusic = \relative c' {
  \partial 8 d8 |
  a'4 a8 a[ g] a |
  bes4. a4 d,8 |
  e[ f] g f[ e] f |
  
  d4.~ d4  d8 |
  a'4 a8 a4 d8 |
  \slurDotted
  c8( c) bes8 a4 gis8 |
  a4 b8 c4 b8 |
  
  a4.~ a4 bes8\rest \bar "||" 
  e,4 f8 g4 a8 |
  g4 f8 e4 a8 |
  a[ f] a a[ g] f |
  
  e4.~ e4 a8 |
  b4 b8 cis4 cis8 |
  d8 d8 a a4 d8 |
  
  d[ c] bes a[ g] fis |
  g4.~ g4 bes8 |
  a[ bes] g f4 e8 |
  d4.~ d4 \bar ":|" 
  
  
  
  
  d8 |
  a'4 a8 a[ g] a |
  bes4.( a4) d,8 |
  e( f) g f[ e] f |
  
  d4.~ d4  d8 |
  a'4 a8 a4 d8 |
  c4 bes8 a4 gis8 |
  \tieDotted
  a4 b8 c8~ c b8 |
  
  \tieSolid
  a4.~ a4 bes8\rest \bar "||" 
}
  

altoMusic = \relative c' {
  d8 |
  d4 cis8 d4 d8 |
  d4. d4 d8 |
  d4 d8 cis4 cis8 |
  
  d4.~ d4 d8 |
  d4 g8 f4 a8 |
  \slurDotted
  g8( g) g8 f4 e8 |
  a4 a8 a4 gis8 |
  
  a4.~ a4 s8 |
  c,4 c8 c4 c8 |
  d4 d8 c4 e8 |
  f[ d] f f[ e] d |
  
  cis4.~ cis4 e8 |
  e4 e8 e4 e8 |
  a a g fis[ g] a |
  
  d,4 d8 ees4 ees8 |
  d4.~ d4 d8 |
  f4 e8 d4 cis8 |
  d4.~ d4 
  
  
  
  d8 |
  d4 cis8 d4 d8 |
  d4.( d4) d8 |
  d8( d) d8 cis4 cis8 |
  
  d4.~ d4 d8 |
  d4 g8 f4 a8 |
  g4 g8 f4 e8 |
  \tieDotted
  a4 a8 a~ a gis8 |
  
  \tieSolid
  a4.~ a4 s8 |
}

songLyricsA = \lyricmode { 
    \set stanza = #"1."
    The Hol -- ly and the I -- vy,
    Now both are full -- well grown, __
    \set ignoreMelismata = ##t
    Of all the trees that are in the wood,
    \unset ignoreMelismata
    The Hol -- ly bears the crown: __
  \set stanza = \markup\dynamic"p  "
    O the ris -- ing of the sun,
    The run -- ning of the deer,
  \set stanza = \markup\dynamic"   f "
    The play -- ing of the mer -- ry or -- gan,
    Sweet sing -- ing in the quire,
    Sweet sing -- ing in the quire. 
}

songLyricsB = \lyricmode { 
  \set stanza = \markup{\dynamic"mf " "2."}
    The Hol -- ly bears a blos -- som,
    As white as li -- ly -- flow’r; __
  \set stanza = \markup\dynamic"f  "
    And Ma -- ry bore sweet Je -- sus Christ,
    To be our sweet Sav -- ior. __ "" 
}

songLyricsC = \lyricmode { 
  \set stanza = #"3."
  The Hol -- ly bears a ber -- ry,
  As red as an -- y blood, __
  And Ma -- ry bore sweet Je -- sus Christ,
  To do poor sin -- ners good. __
}
songLyricsD = \lyricmode { 
  \set stanza = \markup{\dynamic" mf" "4."}
    The Hol -- ly bears a \set ignoreMelismata = ##t
    prick -- le,
    \unset ignoreMelismata
    As sharp as an -- y thorn, __
  \set stanza = \markup\dynamic"f "
    And Ma -- ry bore sweet Je -- sus Christ,
    On Christ -- mas \set ignoreMelismata = ##t day in the morn. __ _
}
songLyricsE = \lyricmode { 
    \set stanza = #"5."
    The Hol -- ly bears a bark, __
    \set ignoreMelismata = ##t
    As bit -- ter 
    \unset ignoreMelismata
    as an -- y gall; __
    And Ma -- ry bore sweet Je -- sus Christ,
    For to re -- deem us all. __
}

songLyricsF = \lyricmode { 
    \set stanza = #"6."
    The Hol -- ly and the I -- vy,
    Now both are full -- well grown, __
    \set ignoreMelismata = ##t
    Of all the trees that are in the wood,
    \unset ignoreMelismata
    The Hol -- ly bears the crown: __
  \set stanza = \markup\dynamic"p  "
    O the ris -- ing of the sun,
    The run -- ning of the deer,
  \set stanza = \markup\dynamic"   f "
    The play -- ing of the mer -- ry or -- gan,
    Sweet sing -- ing in the quire,
    Sweet sing -- ing in the quire. 
}

tenorMusic = \relative c {
  f8 |
  f4 g8 f[ g] f |
  g4. a4 a8 |
  bes4 bes8 a4 g8 |
  
  f4.~f4 bes8 |
  a4 cis8 d4 d8 |
  \slurDotted
  d8( d) d8 d4 b8 |
  e4 f8 e4 d8 |
  
  c4.~ c4 s8 |
  c4 a8 g4 f8 |
  bes4 a8 g4 g8 |
  f4 f8 bes4 d8 |
  
  a4.~ a4 cis8 |
  b4 b8 a4 a8 |
  a b cis d4 c8 |
  
  bes[ a] g fis[ g] a |
  g4.~ g4 g8 |
  a4 bes8 a4 g8 |
  f4.~ f4 
  
  
  
  
  
  f8 |
  f4 g8 f[ g] f |
  g4.( a4) a8 |
  bes8( bes) bes8 a4 g8 |
  
  f4.~f4 bes8 |
  a4 cis8 d4 d8 |
  d4 d8 d4 b8 |
  \tieDotted
  e4 f8 e~ e d8 |
  
  \tieSolid
  c4.~ c4 s8 |
}

bassMusic = \relative c {
  d8 |
  d4 e8 f[ e] d |
  g4. f4 f8 |
  g4 g,8 a4 a8 |
  
  d4.~ d4 g8 |
  f4 e8 d4 f8 |
  \slurDotted
  g8( g) g8 d4 d8 |
  c4 d8 e4 e8 |
  
  a4.~ a4 d,8\rest |
  a'4 f8 e4 f8 |
  bes,4 bes8 c4 cis8 |
  d4 d8 g4 g8 |
  
  a4.~ a4 a8 |
  gis4 gis8 g4 g8 |
  f f e d[ e] fis |
  
  g4 g8 c,4 c8 bes4.~ bes4 g'8 |
  f4 g8 a4 a,8 |
  d4.~ d4 
  
  
  
  
  d8 |
  d4 e8 f[ e] d |
  g4.( f4) f8 |
  g8( g) g,8 a4 a8 |
  
  d4.~ d4 g8 |
  f4 e8 d4 f8 |
  g4 g8 d4 d8 |
  \tieDotted
  c4 d8 e~ e e8 |
  
  \tieSolid
  a4.~ a4 d,8\rest |
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
    \new Lyrics \lyricsto "sopranos" \songLyricsA
    \new Lyrics \lyricsto "sopranos" \songLyricsB
    \new Lyrics \lyricsto "sopranos" \songLyricsC
    \new Lyrics \lyricsto "sopranos" \songLyricsD
    \new Lyrics \lyricsto "sopranos" \songLyricsE
    \new Lyrics \lyricsto "sopranos" \songLyricsF
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
        \context {
            \Staff \remove "Staff_performer"
        }
        \context {
            \Voice \consists "Staff_performer"
        }
    }
}
}

