\version "2.14.2"

\header {
  title = "Milford"
  poet = "Jeremiah Clarke (1674–1707)"
  composer = "Joseph Stephenson (1728–1810)"
  %source = \markup { "from " \italic "The American Vocalist: a selection of tunes, anthems, sentences, and hymns, old and new" ", 1849, via " \italic "hymnary.org"}
}

global = {
    \key a \major
    \time 4/4
    \autoBeamOff
    \tempo 4 = 180
}

sopMusic = \relative c'' {
  b1\rest |
  b1\rest |
  e2 cis4 cis |
  a4.( b8[ a b]) cis[ d] |
  e4 e b b |
  cis cis e e |
  cis4.( b8 a4) gis |
  a2. gis4 |
  a2 cis |
  b2. a4 |
  b2.
  \repeat volta 2 {
    b4\rest |
    b1\rest |
    
    b2.\rest d4\rest |
    d2.\rest a4 |
    cis4 cis e e |
    b2. a4 |
    gis2. r4 |
    r2. a4 |
    e'4 e cis cis |
    a2. a4 |
    cis cis e e |
    cis cis e fis |
    e2. d4 |
  }
  \alternative {
    {
      cis2.
    }
    {
      cis1 \bar "|."
    }
  }
}
sopWords = \lyricmode {
  If an -- gels sung __ a Sav -- ior’s birth,
  If an -- gels sung a Sav -- ior’s birth,
  On that au -- spi -- cious morn,
  
  We well may im -- i -- tate their mirth,
  Now He a -- gain is born,
  Now He a -- gain is born,
  Now He a -- gain is born.
  
  born.
}

altoMusic = \relative c' {
  s1 |
  s1 |
  r1 |
  a'2 fis4 fis |
  e4.( fis8[ e fis]) gis4 |
  a2. gis4 |
  fis2( e4) e |
  e2. e4 |
  e2 <fis a> |
  fis2. fis4 |
  fis2. 
  \repeat volta 2 {
    s4 |
    s1 |
    
    s2. cis4 |
    e e a a |
    a1( |
    gis2.) fis4 |
    e2. e4 |
    a a fis fis |
    e1~|
    e2 r2 |
    e2 gis4 a |
    e e a a |
    gis2. gis4 |
  }
  \alternative {
    {
      a2.
    }
    {
      a1
    }
  }
}
altoWords = \lyricmode {
  If an -- gels sung __ a Sav -- ior’s, Sav -- ior’s birth,
  On that au -- spi -- cious morn,
  
  We well may im -- i -- tate __ their mirth,
  Now He a -- gain is born, __
  Now He a -- gain,
  Now He a -- gain is born.
  
  born.
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
  e2 cis4 cis |
  a4.( b8[ a b]) cis[ d] |
  e2. e,4 |
  a2. a4 |
  cis cis e e |
  cis4.( b8 a4) e |
  a4.( b8 cis4) b |
  a2. b4 |
  cis2 a |
  d cis |
  b2.
  \repeat volta 2 {
    r4 |
    r2. a4 |
    cis cis e e |
    cis cis a a |
    e' e cis cis |
    fis2( e4) dis |
    e2. r4 |
    r1 |
    r1 |
    r2. a,4 |
    e' e cis cis |
    a a cis d |
    b2. b8[ a] |
  }
  \alternative {
    {
      a2.
    }
    {
      a1
    }
  }
}
tenorWords = \lyricmode {
  If an -- gels sung __ a Sav -- ior’s birth,
  If an -- gels sung a Sav -- ior’s, Sav -- ior’s birth,
  On that au -- spi -- cious morn,
  
  We well may im -- i -- tate their mirth,
  We well may im -- i -- tate __ their mirth,
  Now He a -- gain is born,
  Now He a -- gain is born.
  
  born.
}

bassMusic = \relative c' {
  r1 |
  a2 fis4 fis |
  e4.( fis8[ e fis]) gis4 |
  a2. a,4 |
  e'2. e4 |
  a a cis cis |
  a( d, e) e |
  a,2. e'4 |
  a2 fis |
  d fis |
  b,2. 
  \repeat volta 2 {
    b4 |
    e e a a |
    
    fis fis e e |
    a a cis cis |
    a1( |
    b2.) b,4 |
    e2. r4 |
    r1 |
    r2. e4 |
    a a fis fis |
    e2. a4 |
    <a cis> <a cis> a( d, |
    e2.) e4 |
  }
  \alternative {
    {
      a,2.
    }
    {
      a1
    }
  }
}
bassWords = \lyricmode {
  If an -- gels sung __ a Sav -- ior’s birth,
  If an -- gels sung a Sav -- ior’s birth,
  On that au -- spi -- cious morn,
  
  We well may im -- i -- tate their mirth,
  We well may im -- i -- tate __ their mirth,
  Now He a -- gain is born,
  Now He a -- gain __ is born.
  
  born.
}


\bookpart {
\score {
   \new ChoirStaff <<
    \new Staff = soprano << \new Voice = "sopranos" << \global \sopMusic >> >>
    \new Lyrics \lyricsto "sopranos" \sopWords
    \new Staff = alto << \new Voice = "altos" << \global \altoMusic >> >>
    \new Lyrics \lyricsto "altos" \altoWords
    \new Staff = tenor << \clef "G_8" \new Voice = "tenors" << \global \tenorMusic >> >>
    \new Lyrics  \lyricsto "tenors" \tenorWords
    \new Staff = basse << \clef bass \new Voice = "basses" << \global \bassMusic >> >>
    \new Lyrics  \lyricsto "basses" \bassWords
   
  >>
  \layout { } 
}

\score {
  \unfoldRepeats

  <<
   \new ChoirStaff <<
    \new Staff << \new Voice = "sopranos" << \global \voiceOne \sopMusic >> >>
    \new Lyrics  \lyricsto "sopranos" \sopWords
    \new Staff << \new Voice = "altos" << \global \voiceTwo \altoMusic >> >>
    \new Lyrics  \lyricsto "altos" \altoWords
    \new Staff << \clef "G_8" \new Voice = "tenors" << \global \tenorMusic >> >>
    \new Lyrics  \lyricsto "tenors" \tenorWords
    \new Staff << \clef bass \new Voice = "basses" << \global \bassMusic >> >> 
    \new Lyrics  \lyricsto "basses" \bassWords
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

