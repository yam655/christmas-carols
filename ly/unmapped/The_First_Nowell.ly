\version "2.14.2"

songTitle = "The First Noël"
songPoet = "Traditional"
tuneComposer = "18th Century French Melody"
tuneSource = \markup {from \italic {Christmas Carols, New and Old}}

global = {
    \key d \major
    \time 3/4
    \autoBeamOff
    \tempo 4 = 90
}

sopMusic = \relative c' {
  \partial 4 fis8[^\mf e] |
  d4.( e8) fis[ g] |
  a2 b8[ cis] |
  \slurDotted d4( cis) b |
  a2 b8\noBeam( cis) |
  d4( cis) b |
  
  a( b) cis |
  d( a) g |
  fis2 \slurSolid fis8[ e] |
  d4.( e8) \slurDotted fis8\noBeam( g) |
  \slurSolid a2 b8[ cis] |
  
  \slurDotted d4( cis) b |
  a2 b8\noBeam( cis) |
  d4( cis) b |
  a( b) cis |
  \slurSolid d( a) g |
  fis2 
  
  fis8[ e] |
  d4.( e8) fis[ g] |
  a2 d8[ cis] |
  b2 b4 |
  a2. |
  d4 cis b |
  a( b) cis |
  d( a) g |
  fis2 \bar "|."
}

altoMusic = \relative c' {
  \partial 4 d4 |
  a2 d4 |
  e2 e4 |
  \slurDotted a4( a) g |
  fis2 d8\noBeam( e) |
  a4( fis) g |
  
  a( d,) g |
  fis( fis) e |
  d2 cis4 |
  a2 d8\noBeam( d) |
  e2 e4 |
  
  a4( a) g |
  fis2 d8\noBeam( e) |
  a4( fis) g |
  a( g) g |
  fis2 e4 |
  d2 
  
  cis4 |
  a2 d4 |
  cis2 fis4 |
  g2 g4 |
  \slurSolid fis2( a4) |
  fis4 fis g |
  fis2 g4 |
  fis2 e4 |
  d2 \bar "|."
}
altoWords = {
  
  \lyricmode {
    \set stanza = #"1. "
    The first __ No -- ël the
    \set ignoreMelismata = ##t
    an -- gel did say,
    Was to cer -- tain poor shep -- herds in fields as they lay;
    \unset ignoreMelismata
    
    In __ fields __ where they lay __
    \set ignoreMelismata = ##t
    
    keep -- ing their sheep
    On a cold win -- ter’s night _ that was __ _ so deep.
    \unset ignoreMelismata
  }
  \set stanza = \markup\dynamic"ff   "
  \lyricmode {
    
    No -- ël, __ No -- ël, No -- ël,
    \set associatedVoice = "altos"
    No -- ël, __
    \unset associatedVoice
    Born is the King of Is -- ra -- el.
  }
}
altoWordsII = \lyricmode {
  
  \set stanza = #"2. "
  They look -- ed __ up and
  \set ignoreMelismata = ##t
  saw __ _ a Star
  Shin -- ing in __ _ the East __ _ be -- yond __ _ them far,
  \unset ignoreMelismata
  
  And to __ the __ earth it __
  \set ignoreMelismata = ##t
  
  gave __ _ great light,
  And _ so it con -- tin -- ued both day __ _ and night.
}
altoWordsIII = \lyricmode {
  
  \set stanza = #"3. "
  And by
%8.5x11 __
  the __ light of __ that __ same Star
  Three wise men came __ from coun -- try far;
  To __ seek __
\set ignoreMelismata = ##t
  for a King
\unset ignoreMelismata
  was their
%8.5x11 __
  in -- tent,
\set ignoreMelismata = ##t
  And to fol -- low the star _ where e’er __ _ it went.
}
altoWordsIV = \lyricmode {
  
  \set stanza = #"4. "
  This star __ drew nigh to __ 
  \set ignoreMelismata = ##t
  the __ _ North West,
  O’er
%8.5x11 __
  _ Beth -- _ le -- hem __ _ it took __ _ its rest,
  \unset ignoreMelismata
  
  And there __ it __ did both
  \set ignoreMelismata = ##t
  
  stop __ _ and stay
  Right _ o -- ver the place _ where Je -- _ sus lay.
}
altoWordsV = \lyricmode {
  
  \set stanza = #"5. "
  Then en -- ter’d in those
  \set ignoreMelismata = ##t
  Wise -- _ men three,
  Full __ _ rev -- _ ’rent -- ly __ _ on bend -- _ ed knee,
  \unset ignoreMelismata
  
  And of -- fer’d
%8.5x11 __
  there in __
  \set ignoreMelismata = ##t
  
  His __ _ pres -- ence,
  Their _ gold __ _ and myrrh _ and frank -- _ in -- cense.
}
altoWordsVI = \lyricmode {
  
  \set stanza = #"6. "
  Then let __ us __ all with one __ ac -- cord,
  Sing prais -- es to __ our
\set ignoreMelismata = ##t
  Heav -- en -- ly Lord,
\unset ignoreMelismata
  That hath __ made Heav’n and earth of naught,
  And with __ His Blood man -- kind __ hath bought.
}

tenorMusic = \relative c' {
  \partial 4 a8[ g] |
  fis2 d'4 |
  cis2 b4 |
  \slurDotted a4( a) \slurSolid b8[ cis] |
  d2 \slurDotted b8\noBeam( a) |
  a4( a) cis |
  
  d( b) g |
  a( d) a |
  a2 \slurSolid a8[ g] |
  fis2 \slurDotted d'8\noBeam( d) |
  \slurSolid d4( cis) b |
  
  \slurDotted a( a) \slurSolid b8[ cis] |
  d2 \slurDotted b8\noBeam( a) |
  a4( a) cis |
  d4( d) e |
  \slurSolid a,( d) a |
  a2 
  
  a8[ g] |
  fis2 b4 |
  a2 a4 |
  b4.( cis8) d[ e] |
  fis2( e4) |
  d d d |
  d2 g,4 |
  a2 a4 |
  a2 \bar "|."
}

bassMusic = \relative c {
  \partial 4 d4 |
  d2 b4 |
  a( a') g |
  \slurDotted fis( fis) g |
  d2 g8\noBeam( g) |
  fis4( d) e |
  
  fis( g) e |
  fis8[( g] a4) a |
  d,2 a4 |
  d2 b8\noBeam( b) |
  \slurSolid a4( a') g |
  
  \slurDotted fis( fis) g |
  d2 g8\noBeam( g) |
  fis4( d) e |
  fis( g) e |
  \slurSolid fis8[( g] a4) a, |
  d2 
  
  a4 |
  d2 b4 |
  fis'2 d4 |
  g4.( a8) b[ cis] |
  d2( cis4) |
  b a g |
  d'( d,) e |
  fis8[( g] a4) a, |
  d2 \bar "|."
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
            \new Lyrics = "altos"   \lyricsto "sopranos" \altoWords
            \new Lyrics = "altosII"   \lyricsto "sopranos" \altoWordsII
            \new Lyrics = "altosIII"   \lyricsto "sopranos" \altoWordsIII
            \new Lyrics = "altosIV"   \lyricsto "sopranos" \altoWordsIV
            \new Lyrics = "altosV"   \lyricsto "sopranos" \altoWordsV
            \new Lyrics = "altosVI"   \lyricsto "sopranos" \altoWordsVI
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


