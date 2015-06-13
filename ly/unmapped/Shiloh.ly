\version "2.14.2"

\header {
  title = "Shiloh"
  poet = \markup { from \italic {The Suffolk Harmony} (1786)}
  composer = "William Billings (1746–1800)"
  %source = \markup { "from" \italic {www.cpdl.org}}
}

global = {
    \key g \major
    \time 4/4
    \autoBeamOff
    \tempo 4 = 160
}

sopMusic = \relative c' {
    \partial 2
  \repeat unfold 2 {
    \global
    g'2 |
    b4 b b d |
    d d d d8[ c] |
    b4 a8[ b] c[ b] a4 |
    b2. b4 |
    
    c8[ b] a4 g8[ a] b[ a] |
    g4 a g8[ a] b[ c] |
    d[ c] b4 a g |
    g2. d'8.[ c16] |
    b8[ g] b8.[ d16] c4 a |
    b1 \bar "||"
    
    \time 6/4 |
    b2\rest b4\rest r2. |
    r1. | 
    r2. b2. |
    b2 a4 g( c) a |
    b2.~ b2 r4 |
    
    r1. |
    r2. b2\rest d4 |
    d( c) b a2 g4 |
    g2.~ g2 g4 |
    b( d) b c( a) fis |
    g1. \bar "||" \pageBreak
  }
  \bar "|."
}
sopWords = \lyricmode {
  \repeat unfold 34{\skip1}
  Glad
  \repeat unfold 17{\skip1}
  \repeat unfold 34{\skip1}
  ye
}
sopWordsII = \lyricmode {
  \repeat unfold 34{\skip1}
  to
  \repeat unfold 17{\skip1}
  \repeat unfold 34{\skip1}
  is
}
sopWordsIII = \lyricmode {
  \repeat unfold 34{\skip1}
  %Nor
}

altoMusic = \relative c' {
  \repeat unfold 2 {
    d2 |
    d4 d d fis |
    g g g g |
    g a g fis8[ e] |
    d2. d4 |
    
    e fis g d |
    e fis g d |
    d d d d |
    e2. g4 |
    fis e e d |
    
    d1 \bar "||"
    
    s2. d |
    d2 e4 d( c) b |
    d( g) fis g2 g4 |
    d2 d4  g2 a4 |
    d,2.~ d2 d4 |
    
    g( e) e fis( d) d |
    d2. s2 r4 |
    r2 r4 r2 e4 |
    e2.~ e2 g4 |
    fis2 e4 e2 d4 |
    d1. |
  }
}

altoWords = {
  
  \set stanza = \markup {\normal-text\italic " 1st Shepherd" "1."}
    \lyricmode {
    Me -- thinks I see an heav’n -- ly Host of An -- gels on the Wing;
    Me -- thinks I hear their cheer -- ful notes, so mer -- ri -- ly they sing,
    so mer -- ri -- ly they sing.
  }
  \set stanza = \markup {\normal-text\italic "1st Angel" "  2. "}
  \lyricmode {
    Let all your Fears be ban -- ish’d hence.
    Glad tid -- ings I pro -- claim. __
    For there’s a Sav -- ior born to -- day,
    and Je -- sus is His name,
    and Je -- sus is His name.
  }
  \set stanza = \markup {\normal-text\italic " Narrator     " "6."}
  \lyricmode {
    The mas -- ter of the inn re -- fus’d a more com -- mo -- dious place;
    Un -- gen’ -- rous Soul of sav -- age mold,
    and des -- ti -- tute of Grace,
    and des -- ti -- tute of Grace.
  }
  
  \set stanza = \markup {\normal-text\italic "1st Angel" "  7. "}
  \lyricmode {
    Ex -- ult ye Ox -- en,
    
    low for joy, ye Ten -- ants of the Stall, __
    Pay your o -- bei -- sance; on your knees
    U -- nan -- i -- mous -- ly fall, __
    U -- nan -- i -- mous -- ly fall.
  }
}
altoWordsII = {
  
  \set stanza = \markup {\normal-text\italic " Narrator   " "5."}
  \lyricmode {
    Then learn from hence, ye ru -- ral Swains, the meek -- ness of your God,
    Who left the bound -- less Realms of Joy, to ran -- som you with blood,
    to ran -- som you with blood.
  }
  \set stanza = \markup {\normal-text\italic "1st Angel" "  3. "}
  \lyricmode {
    Lay down your crooks, and quit your Flocks,
    to Beth -- le -- hem re -- pair; __
    And let __ your wan -- d’ring steps be squared
    by yon -- der shin -- ing Star,
    by yon -- der shin -- ing Star.
  }
  \set stanza = \markup {\normal-text\italic " Narrator     " "9."}
  \lyricmode {
    Then sud -- den -- ly a Heav’n -- ly Host a -- round the Shep -- herds throng.
    Ex -- ult -- ing in the three -- fold God,
    and thus ad -- dress their song,
    and thus ad -- dress their song.
  }
  
  \set stanza = \markup {\normal-text\italic "1st Angel" "  8. "}
  \lyricmode {
    The Roy -- al guest you
    
    en -- ter -- tain is not of com -- mon Birth, __
    but sec -- ond to the Great I Am;
    the God of heav’n and earth,
%8.5x11 __
    the God of heav’n and earth.
  }
}
altoWordsIII = {
  
  \lyricmode {
    \repeat unfold 34{\skip1}
  }
  \set stanza = \markup {\normal-text\italic "1st Angel" "  4. "}
  \lyricmode {
    Seek not in Courts or Pal -- a -- ces;
    Nor Roy -- al cur -- tains draw; __
    But search the Sta -- ble, see your God
    ex -- tend -- ed on the Straw,
    ex -- tend -- ed on the Straw.
  }
  \set stanza = \markup {\normal-text\italic " Grand Chorus" "10."}
  \lyricmode {
    To God the Fa -- ther, Christ the Son, and Ho -- ly Ghost ac -- cord;
    The first and last, the last and first,
    E -- ter -- nal praise af -- ford,
    E -- ter -- nal praise af -- ford.
    
  }
}
altoWordsIV = \lyricmode {
  
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

tenorMusic = \relative c {
  \repeat unfold 2 {
    d2 |
    g4 g g a |
    b b b b8[ c] |
    d4 d e fis |
    g2. g8[ fis] |
    
    e4 d b g |
    b d c b |
    a g a b |
    c2. b8.[ c16] |
    d8[ b] g[ b] c[ a] g[ fis] |
    g1 \bar "||"
    
    s2. g |
    g4( b) c b( a) g |
    g( b) d d2 d4 |
    g2 fis4 e2 fis4 |
    g2.~ g2 fis4 |
    
    e( c) a d( b) g |
    g( b) d d( c) b |
    a( g) b d( c) b |
    c2.~ c2 b8[ c] |
    d4( b) g a( c) b8[ a] |
    g1. |
  }
}


bassMusic = \relative c {
  \repeat unfold 2 {
    g2 |
    g4 g g d' |
    g g g g |
    g fis e d |
    g2. g4 |
    
    a d, g g8.[ fis16] |
    e4 d e8[ fis] g4 |
    d g, d' g |
    c,2. g'4 |
    d e c d |
    g,1 \bar "||"
    
    d'2\rest d4\rest r2. |
    r1. |
    r2. g |
    g2 d4 e( c) d |
    g2.~ g2 r4 |
    
    r1. |
    g2 b4 b( a) g |
    d2 d4 d2 e4 |
    c2.~ c2 g'4 |
    d2 e4 c2 d4 |
    g,1. |
  }
}

bassWords = \lyricmode {
  \repeat unfold 34{\skip1}
  Glad
  \repeat unfold 20{\skip1}
  \repeat unfold 34{\skip1}
  ye
}
bassWordsII = \lyricmode {
  \repeat unfold 34{\skip1}
  to
  \repeat unfold 20{\skip1}
  \repeat unfold 34{\skip1}
  is
}
bassWordsIII = \lyricmode {
  \repeat unfold 34{\skip1}
  %Nor
}

  

\bookpart {
\score {
  <<
   \new ChoirStaff <<
    \new Staff = women <<
      \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
      \new Voice = "sopranos" { \voiceOne << \global \sopMusic >> }
      \new Voice = "altos" { \voiceTwo << \global \altoMusic >> }
    >>
   \new Staff = men <<
      \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((padding . 0.2))} \lyricsto "sopranos" \sopWords
    \new Lyrics \with { alignAboveContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((padding . 0.2))} \lyricsto "sopranos" \sopWordsII
    \new Lyrics \with { alignAboveContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((padding . 0.2))} \lyricsto "sopranos" \sopWordsIII
    \new Lyrics = "altosVI"  \with { alignBelowContext = #"women" } \lyricsto "tenors" \altoWordsVI
    \new Lyrics = "altosV"  \with { alignBelowContext = #"women" } \lyricsto "tenors" \altoWordsV
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" } \lyricsto "tenors" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" } \lyricsto "tenors" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" } \lyricsto "tenors" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((padding . -0.5))} \lyricsto "tenors" \altoWords
    \new Lyrics \with { alignBelowContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "basses" \bassWordsIII
    \new Lyrics \with { alignBelowContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "basses" \bassWordsII
    \new Lyrics \with { alignBelowContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((padding . 0.4)) } \lyricsto "basses" \bassWords
  >>
  >>
  \layout { }
  \midi {
    \set Staff.midiInstrument = "flute" 
    %\context { \Voice \remove "Dynamic_performer" }
  }
}
}

