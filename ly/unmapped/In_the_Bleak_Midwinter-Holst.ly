﻿\version "2.14.2"

\header {
  title = "In the Bleak Midwinter"
  poet = "Christina Rosetti (1830–1894)"
  composer = "Gustav Holst (1874–1934)"
  %source = \markup { "from" \italic "CantateDomino.org"}
}

global = {
    \key f \major
    \time 4/4
    \tempo 4 = 90
}

sopMusic = \relative c'' {
  \partial 4 a4 |
  \slurDotted
  a4.( bes8) c4 a |
  g4( g) f bes\rest |
  g4.( a8) g4 d |
  g2.  a4 |
  
  a4.( bes8) c4 a |
  g4.( g8) f4 f |
  g4( a) g4. f8 |
  f2.  f4 |
  
  bes4. a8 bes4( c) |
  d( d) a a |
  c( a) g( f) |
  e2.  a4 |
  
  a4.( bes8) c4 a |
  g2 f4 bes\rest |
  \slurSolid g4( a) g4.( f8) |
  f1 \bar "|."
}
  

altoMusic = \relative c' {
  \partial 4 f4 |
  \slurDotted f4.( f8) f4 c |
  d4( d) d s |
  d4.( d8) d4 c |
  bes2. c4 |
  
  c4.( f8) f4 c |
  d4.( d8) d4 d |
  f4( f) e4. f8 |
  f2. f4 |
  
  f4. f8 f4( ees4) |
  d( d) f f |
  f( e) d( d) |
  c2. c4 |
  
  c4.( f8) f4 c |
  d2 d4 s |
  \slurSolid f2 e4.( f8) |
  f1 \bar "|."
}

altoWords = \lyricmode { 
  \set stanza = #"1. "
  \set ignoreMelismata = ##t
  "" In the bleak mid -- win -- _ ter,
  fros -- ty wind made moan, ""
  Earth stood hard as i -- _ ron, ""
  wa -- ter like a stone, ""
  Snow had fal -- len, snow on snow, ""
  snow __ _ on __ _ snow, ""
  In the bleak mid -- win -- 
  \set associatedVoice = "tenors"
  ter,
  Long a -- _ go.
}

altoWordsII = \lyricmode { 
  \set stanza = #"2. "
  \set ignoreMelismata = ##t
  Our God, Heav’n can -- not hold __ _ Him
  Nor __ _ earth sus -- tain; ""
  Heav’n and earth shall flee a -- way ""
  When He comes to reign; ""
  In the bleak mid -- win -- _ ter a sta -- ble place suf -- ficed
  The Lord __ _ God Al -- migh -- 
  \set associatedVoice = "tenors"
  ty,
  Je -- sus __ _ Christ.
}

altoWordsIII = \lyricmode { 
  \set stanza = #"3. "
  \set ignoreMelismata = ##t
  E -- nough for Him, whom Cher -- u -- bim
  Wor -- ship night and day,
  A breast -- _ ful of milk, __ _
  And a man -- ger -- ful of hay:
  E -- nough for Him, whom an -- _ gels ""
  Fall __ _ down be -- fore,
  The ox and ass and ca -- 
  \set associatedVoice = "tenors"
  mel which a -- _ dore.
}

altoWordsIV = \lyricmode { 
\set ignoreMelismata = ##t
  \set stanza = #"4. "
  "" An -- gels and arch -- an -- _ gels May have ga -- thered there ""
  Cher -- u -- bim and Ser -- a -- phim ""
  Throng -- _ ed the air
  But on -- ly His __ _ mo -- _ ther ""
  In her maid -- en bliss ""
  Wor -- shipped the Be -- lov -- 
  \set associatedVoice = "tenors"
  ed with a __ _ kiss.
}

altoWordsV = \lyricmode { 
\set ignoreMelismata = ##t
  \set stanza = #"5. "
  "" What __ _ can I give __ _ Him,
  Poor __ _ as I am? ""
  If I were a shep -- _ herd ""
  I would bring a lamb; ""
  If I were a wise __ _ man ""
  I would do my part;
  Yet what __ _ can I give 
  \set associatedVoice = "tenors"
  Him
  Give my __ _ heart.
}

tenorMusic = \relative c' {
  \partial 4 c4 |
  \slurDotted c4.( c8) c4 f, |
  a( a) a s |
  g4.( d8) d4 f |
  \slurSolid f2( e4) f |
  
  \slurDotted f4.( c'8) c4 f, |
  a4.( a8) a4 a |
  d( d) bes4. a8 |
  a2. a4 |
  
  bes4. c8 bes4( a) |
  bes( bes) a a |
  f( c') bes( a) |
  g2. f4 |
  
  f4.( c'8) c4 f, |
  a2 a4 s |
  \slurSolid d2 bes4.( a8) |
  a1 \bar "|."
}


bassMusic = \relative c {
  \partial 4 f4 |
  \slurDotted f4.( g8) a4 f |
  d( d) d d\rest |
  bes4.( c8) bes4 a |
  \slurSolid g2( c4) f |
  
  \slurDotted f4.( g8) a4 f |
  d4.( d8) d4 d |
  bes( bes) c4. f8 |
  f2. f4 |
  
  d4. f8 d4( c) |
  bes( bes) d d |
  a( a) bes( bes) |
  c2. f4 |
  
  f4.( g8) a4 f |
  d2 d4 d\rest |
  \slurSolid bes2 c4.( f8) |
  f1 \bar "|."
}


\bookpart {
\score {
  <<
   \new ChoirStaff <<
    \new Staff = women <<
      \new Voice = "sopranos" { \voiceOne << \global \sopMusic >> }
      \new Voice = "altos" { \voiceTwo << \global \altoMusic >> }
    >>
    \new Lyrics = "altos"   \lyricsto "sopranos" \altoWords
    \new Lyrics = "altosII"   \lyricsto "sopranos" \altoWordsII
    \new Lyrics = "altosIII"  \lyricsto "sopranos" \altoWordsIII
    \new Lyrics = "altosIV"   \lyricsto "sopranos" \altoWordsIV
    \new Lyrics = "altosV"   \lyricsto "sopranos" \altoWordsV
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

