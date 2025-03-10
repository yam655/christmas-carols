﻿\version "2.14.2"

songTitle = "The Manger Throne"
songPoet = "William Chatterson Dix (1837–1898)"
tuneComposer = "Charles Steggall (1826–1905)"
tuneSource = \markup {from \italic {Christmas Carols, New and Old}}

global = {
    \key d \major
    \time 4/4
    \autoBeamOff
    \tempo 4 = 105
}

sopMusic = \relative c'' {
  \slurDotted 
  \partial 4 d4 |
  a b a fis8( fis) |
  e4( e8) fis8 d4 e |
  fis b8( b) a( a) d4 | 
  
  cis2. a4 |
  d4 cis8 b a g fis[ e] |
  fis4 gis8( gis) a4 b8( b) | 
  cis4. d8 e( e) a,4 |
  
  b4( b8) cis8 a4 a |
  b fis a a8 a | 
  b4 fis a a8( a) |
  b8( b) d8( d) e4. fis8 
  d2. |
  
  d8 a b4 a8 a fis4 |
  e4. fis8 d4 e |
  fis4 b8 b a a d4 | 
  cis2. a4 |
  
  d8( d) cis[ b] a( g) fis( e) |
  fis8( fis) gis4 a b8( b) | 
  cis4. d8 e8( e) a,8( a) |
  b4. cis8 a4 a |
  
  b4 fis8( fis) a4. a8 | 
  b4 fis a a8( a) |
  b( b) d8( d) e( e) fis4 |
  d2. \bar "|."
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  \slurDotted 
  fis4 |
  d d d d8( d) |
  d4( d8) d8 d4 a |
  d d8( e) fis( fis) g4 |
  
  a2. a4 |
  d cis8 b a g fis[ e] |
  d[ cis] b8( b) cis4 e8( e) |
  e4 fis e8( e) cis4 |
  
  d4( d8) d8 cis4 cis |
  d d e d8 d |
  d4 d e d8( d) |
  d8( d) g8( g) g4. g8 |
  fis2. 
  
  fis8 d d4 d8 d d4 |
  d4. d8 d4 a |
  d d8 e fis fis g4 |
  a2. a4 |
  
  d8( d) cis[ b] a( g) fis( e) |
  d( cis) b4 cis e8( e) |
  e4 fis e8( e) cis8( cis) |
  d4. d8 cis4 cis |
  
  d4 d8( d) e4 d8( d) |
  d4 d e d8( d) |
  d( d) g8( g) g( g) g4 |
  fis2. \bar "|."
}
altoWords = \lyricmode {
  
  \set stanza = #"1. "
  \set associatedVoice = "sopranos"
  \set ignoreMelismata = ##t
  Like sil -- ver lamps in a 
  \unset ignoreMelismata
  dis -- tant shrine,
  \unset associatedVoice
  The stars are __ spark -- ling bright;
  The bells of the ci -- ty of __ God ring __ out,
  \set ignoreMelismata = ##t
  For the Son of Ma -- ry was born __ _ to -- night;
  \unset ignoreMelismata
  The gloom is past, and the morn at last
  \set ignoreMelismata = ##t
  Is __ _ com -- ing with __ _ or -- ient light.
  
  \unset ignoreMelismata
  \set stanza = #"2. "
  \set associatedVoice = "sopranos"
  Nev -- er fell me -- lo -- dies half so sweet As those which are fill -- ing the skies;
  \unset associatedVoice
  \set ignoreMelismata = ##t
  And nev -- er a __ _ pa -- lace shone __ _ half __ _ so fair
  As the man -- ger bed __ _ where our Sav -- ior lies;
  No night in the year is __ _ half so dear
  As __ _ this __ _ which has end -- ed our sighs.
}
altoWordsII = \lyricmode {
  
%\markup\italic
  \set stanza = #"4. "
  \set associatedVoice = "sopranos"
  The stars of heav’n still
  \set ignoreMelismata = ##t
  shine as at first
  \unset associatedVoice
  They gleamed on this won -- der -- ful night;
  \unset ignoreMelismata
  The bells of the ci -- ty of __ God peal __ out,
  \set ignoreMelismata = ##t
  And the An -- gels’ song _ still rings in the height;
  And love still turns where the God -- head burns,
  Hid in flesh __ _ from __ _ flesh -- ly sight.
  
  \unset ignoreMelismata
  \set stanza = #"3. "
  \set associatedVoice = "sopranos"
  Now a new Pow’r has come on the earth,
  \unset associatedVoice
  A match for the arm -- ies of Hell:
  A child is __ born
  \set ignoreMelismata = ##t
  who shall con -- quer the foe,
  And __ _ all the spi -- rits of __ _ wicked -- ness quell:
  For Ma -- ry’s __ _ Son is the Might -- y One
  Whom the pro -- phets of __ _ God __ _ fore -- tell.
}
altoWordsIII = \lyricmode {
  
  \set stanza = #"5. "
  \set ignoreMelismata = ##t
  \set associatedVoice = "sopranos"
  Faith sees no long -- er the
  sta -- _ ble floor,
  \unset associatedVoice
  The pave -- ment of sap -- phire is there;
  \unset ignoreMelismata
  The clear light of Heav -- en streams out
  \set ignoreMelismata = ##t
  to the world;
  And __ _ Angels of God _ are
  crowd -- ing the air;
  And Heav’n and earth, through the spot -- less Birth,
  Are at peace __ _ on this night so fair.
}
altoWordsIV = \lyricmode {
}
altoWordsV = \lyricmode {
}
altoWordsVI = \lyricmode {
}
tenorMusic = \relative c' {
  \slurDotted 
  a4 |
  fis g fis a8( a) |
  g4( g8) a8 fis4 a |
  a b8( cis) d( d) d4 |
  
  e2. a,4 |
  d cis8 b a g fis[ e] |
  fis'4 e8( e) e4 b8( b) |
  a4 a a8( a) a4 |
  
  gis4( gis8) gis8 a4 cis |
  b d cis d8 d |
  b4 d cis d8( d) |
  d8( d) d8( d) cis4. cis8 |
  d2. 
  
  a8 fis g4 fis8 fis a4 |
  g4. a8 fis4 a |
  a b8 cis d d d4 |
  e2. a,4 |
  
  d8( d) cis[ b] a( g) fis( e) |
  fis'8( fis) e4 e b8( b) |
  a4 a a8( a) a8( a) |
  gis4. gis8 a4 cis |
  
  b d8( d) cis4 d8( d) |
  b4 d cis d8( d) |
  d( d) d8( d) cis( cis) cis4 |
  <d a>2. \bar "|."
}
tenorWords = \lyricmode {

}

bassMusic = \relative c {
  \slurDotted 
  d4 |
  d d d d8( d) |
  d4( d8) d8 d4 cis |
  d g8( g) fis( fis) b4 |
  
  a2. a4 |
  d cis8 b a g fis[ e] |
  d4 e8( e) a4 gis8( gis) |
  a4 fis cis8( cis) fis4 |
  
  e4( e8) e8 a,4 a' |
  g b a fis8 fis |
  g4 b a fis8( fis) |
  g8( g) b8( b) a4. a8 |
  d,2. 
  
  d8 d d4 d8 d d4 |
  d4. d8 d4 cis |
  d g8 g fis fis b4 |
  a2. a4 |
  
  d8( d) cis[ b] a( g) fis( e) |
  d8( d) e4 a gis8( gis) |
  a4 fis cis8( cis) fis8( fis) |
  e4. e8 a,4 a' |
  
  g b8( b) a4 fis8( fis) |
  g4 b a fis8( fis) |
  g8( g) b8( b) a( a) a4 |
  d,2. \bar "|."
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
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \sopWords
     \new Lyrics = "altosVI"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsVI
    \new Lyrics = "altosV"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsV
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWords
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

