﻿\version "2.14.2"

songTitle = "The Waits’ Song"
songPoet = "Traditional"
tuneComposer = "Traditional"
tuneSource = \markup {from \italic {Christmas Carols, New and Old}}

global = {
    \key bes \major
    \time 4/4
    \autoBeamOff
    \slurDotted
    \tempo "Moderato." 4 = 95
}

sopMusic = \relative c'' {
    \partial 4
  \repeat volta 2 {
    a4^\mf |
    bes4 a g a8( bes) |
    c[ bes] a( g) fis4 d |
    
    g a bes c |
    d2.  bes8[ c] |
    d4 ees8[ d] c4 d |
    
    bes4 c a bes8[ c] |
    d4 g,8( g) bes[ a] g[ fis] |
    g2. 
  }
  
  %sop2
  \repeat volta 2 {
    a4 |
    bes4 a g a8[ bes] |
    c[ bes] a( g) fis4 d |
    
    g a bes c |
    d2.  bes8[ c] |
    d4 ees8[ d] c4 d |
    
    bes4 c a bes8( c) |
    d4 g,4 bes8[ a] g[ fis] |
    g2. 
  }
  
  %sop3
  \repeat volta 2 {
    a4 |
    bes4 a g a8[ bes] |
    c[ bes] a[ g] fis4 d |
    
    g a bes c |
    d2.  bes8[ c] |
    d4 ees8[ d] c4 d |
    
    bes4 c a bes8[ c] |
    d4 g,4 bes8[ a] g[ fis] |
    g2. 
  }
  
  %sop4
  \repeat volta 2 {
    a4 |
    bes4 a g a8( bes) |
    c[ bes] a[ g] fis4 d |
    
    g a bes c |
    d2.  bes8[ c] |
    d4 ees8[ d] c4 d |
    
    bes4 c a bes8( c) |
    d4 g,4 bes8[ a] g[ fis] |
    g2. 
  }
  
  %sop5
  \repeat volta 2 {
    a4 |
    bes4 a g a8[ bes] |
    c[ bes] a[ g] fis4 d8 d |
    
    g4 a bes c |
    d2.  bes8[ c] |
    d4 ees8[ d] c4 d |
    
    bes4 c a bes8[ c] |
    d4 g,8( g) bes( a) g[ fis] |
    g2. 
  }
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  %alto1
  \repeat volta 2 {
    fis4 |
    g fis g g8( g) |
    g4 ees8( ees) d4 d |
    
    d d d g |
    fis2. f4 |
    f g c, f |
    
    ees ees d d |
    g g8( f) ees4 d |
    d2.
  }
  
  %alto2
  \repeat volta 2 {
    fis4 |
    g fis g g |
    g ees8( ees) d4 d |
    
    d d d g |
    fis2. f4 |
    f g c, f |
    
    ees ees d d8( d) |
    g4 g8[ f] ees4 d |
    d2.
  }
  
  %alto3
  \repeat volta 2 {
    fis4 |
    g fis g g |
    g ees4 d4 d |
    
    d d d g |
    fis2. f4 |
    f g c, f |
    
    ees ees d d |
    g4 g8[ f] ees4 d |
    d2.
  }
  
  %alto4
  \repeat volta 2 {
    fis4 |
    g fis g g8( g) |
    g4 ees4 d4 d |
    
    d d d g |
    fis2. f4 |
    f g c, f |
    
    ees ees d d8( d) |
    g4 g8[ f] ees4 d |
    d2.
  }
  
  %alto5
  \repeat volta 2 {
    fis4 |
    g fis g g |
    g ees4 d4 d8 d |
    
    d4 d d g |
    fis2. f4 |
    f g c, f |
    
    ees ees d d |
    g g8( f) ees8( ees) d4 |
    d2.
  }
  
}
altoWords = \lyricmode {
  
  \set stanza = #"1. "
  \set ignoreMelismata = ##t
  The moon shines bright and the stars _ give a light
  \unset ignoreMelismata
  A little be -- fore the day:
  Our might -- y Lord He looked on us,
  And bade \set ignoreMelismata = ##t
  us a --
  \unset ignoreMelismata
  wake and pray.
  
  \set stanza = #"3. "
  O fair, O fair Je -- ru -- sa -- lem,
  When shall I come to thee?
  When shall my sor -- rows have an end,
  Thy __ joy that I may see?

  \set stanza = #"5. "
  And for the sav -- ing of our souls
  Christ died up -- on the Cross,
  We ne’er shall do for Je -- sus Christ
  As He hath done for us.

  \set stanza = #"7. "
  In -- struct and teach your chil -- dren well,
  The while that you are here;
  It will be bet -- ter for your soul,
  \set ignoreMelismata = ##t
  When your \unset ignoreMelismata corpse lies on the bier.

  \set stanza = #"9. "
  With one turf at thy head, O __ man,
  And a -- noth -- er at thy feet;
  Thy good deeds and thy bad, O man,
  Will all to -- geth -- er __ meet.
}
altoWordsII = \lyricmode {
  
%\markup\italic
  \set stanza = #"2. "
  A -- wake, a -- wake, good peo -- ple __ all,
  A -- wake, and you shall hear,
  The Lord our God died on the Cross
  For us He loved so dear.
  
  \set stanza = #"4. "
  The fields were green as __ green
  \set ignoreMelismata = ##t
  as could be,
  \unset ignoreMelismata
  When from His glo -- rious seat,
  Our bless -- ed Fa -- ther wa -- tered us,
  \set ignoreMelismata = ##t
  With His
  \unset ignoreMelismata
  Heav’n -- ly dew so sweet.

  \set stanza = #"6. "
  The life of man is __ but a span,
  And cut down in its flow’r,
  We’re here to -- day, to -- mor -- row gone,
  The crea -- tures of an hour.

  \set stanza = #"8. "
  To -- day you may
  \set ignoreMelismata = ##t
  be a --
  \unset ignoreMelismata
  live and well,
  Worth ma -- ny~a thou -- sand pound;
  To -- mor -- row dead and cold as clay,
  Your __ corpse laid un -- der -- ground.

  \set stanza = #"10. "
  My song is done, I __ must be __ gone,
  I can stay no long -- er here;
  God bless you all, both great and small,
  And send you_a joyful new year.
}
altoWordsIII = \lyricmode {
}
altoWordsIV = \lyricmode {

}
altoWordsV = \lyricmode {
  
}
altoWordsVI = \lyricmode {
}
altoWordsVII = \lyricmode {
}
altoWordsVIII = \lyricmode {
}
altoWordsIX = \lyricmode {
}
altoWordsX = \lyricmode {
}
tenorMusic = \relative c' {
  %tenor1
  \repeat volta 2 {
    d4 |
    d c bes c8( d) |
    ees[ d] c( bes) a4 fis |
    
    g fis g g |
    a2. bes8[ a] |
    bes[ d] c[ bes] a4 a |
    
    g8[ bes] a[ g] fis4 g8[ a] |
    bes4 d8( d) d[ c] bes[ a] |
    <bes g>2.
  }

  %tenor2
  \repeat volta 2 {
    d4 |
    d c bes c8[ d] |
    ees[ d] c( bes) a4 fis |
    
    g fis g g |
    a2. bes8[ a] |
    bes[ d] c[ bes] a4 a |
    
    g8[ bes] a[ g] fis4 g8( a) |
    bes4 d d8[ c] bes[ a] |
    <bes g>2.
  }

  %tenor3
  \repeat volta 2 {
    d4 |
    d c bes c8[ d] |
    ees[ d] c[ bes] a4 fis |
    
    g fis g g |
    a2. bes8[ a] |
    bes[ d] c[ bes] a4 a |
    
    g8[ bes] a[ g] fis4 g8[ a] |
    bes4 d d8[ c] bes[ a] |
    <bes g>2.
  }

  %tenor4
  \repeat volta 2 {
    d4 |
    d c bes c8( d) |
    ees[ d] c[ bes] a4 fis |
    
    g fis g g |
    a2. bes8[ a] |
    bes[ d] c[ bes] a4 a |
    
    g8[ bes] a[ g] fis4 g8( a) |
    bes4 d d8[ c] bes[ a] |
    <bes g>2.
  }

  %tenor5
  \repeat volta 2 {
    d4 |
    d c bes c8[ d] |
    ees[ d] c[ bes] a4 fis8 fis |
    
    g4 fis g g |
    a2. bes8[ a] |
    bes[ d] c[ bes] a4 a |
    
    g8[ bes] a[ g] fis4 g8[ a] |
    bes4 d8( d) d( c) bes[ a] |
    <bes g>2.
  }

}
tenorWords = \lyricmode {

}

bassMusic = \relative c, {
  %bass1
  \repeat volta 2 {
    d'4 |
    g d ees ees8( d) |
    c4 c8( c) d4 c |
    
    bes4 d g ees |
    d2. d8[ c] |
    bes4 ees f d |
    
    ees c d8[ c] bes[ a] |
    g4 bes8( bes) c4 d |
    g,2.
  }

  %bass2
  \repeat volta 2 {
    d'4 |
    g d ees ees8[ d] |
    c4 c8( c) d4 c |
    
    bes4 d g ees |
    d2. d8[ c] |
    bes4 ees f d |
    
    ees c d8[ c] bes( a) |
    g4 bes c d |
    g,2.
  }

  %bass3
  \repeat volta 2 {
    d'4 |
    g d ees ees8[ d] |
    c4 c4 d4 c |
    
    bes4 d g ees |
    d2. d8[ c] |
    bes4 ees f d |
    
    ees c d8[ c] bes[ a] |
    g4 bes c d |
    g,2.
  }

  %bass4
  \repeat volta 2 {
    d'4 |
    g d ees ees8( d) |
    c4 c4 d4 c |
    
    bes4 d g ees |
    d2. d8[ c] |
    bes4 ees f d |
    
    ees c d8[ c] bes( a) |
    g4 bes c d |
    g,2.
  }

  %bass5
  \repeat volta 2 {
    d'4 |
    g d ees ees8[ d] |
    c4 c4 d4 c8 c |
    
    bes4 d g ees |
    d2. d8[ c] |
    bes4 ees f d |
    
    ees c d8[ c] bes[ a] |
    g4 bes8( bes) c( c) d4 |
    g,2.
  }

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
%    \new Lyrics = sopranos \with { \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) }
    \new Staff = women <<
      \new Voice = "sopranos" { \voiceOne << \global \sopMusic >> }
      \new Voice = "altos" { \voiceTwo << \global \altoMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \sopWords
    \new Lyrics = "altosX"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \altoWordsX
    \new Lyrics = "altosIX"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \altoWordsIX
    \new Lyrics = "altosVIII"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \altoWordsVIII
    \new Lyrics = "altosVII"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \altoWordsVII
    \new Lyrics = "altosVI"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \altoWordsVI
    \new Lyrics = "altosV"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \altoWordsV
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWords
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

