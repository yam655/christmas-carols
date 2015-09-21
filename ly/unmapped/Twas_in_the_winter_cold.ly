\version "2.14.2"

songTitle = "’Twas in the winter cold"
songSubtitle = "A Christmas Morning Hymn"
songPoet = "Rev. Charles I. Black (1821–1896)"
tuneComposer = "Joseph Barnby (1838–1896)"
tuneSource = \markup {from \italic {Christmas Carols, New and Old}}

global = {
    \key d \major
    \time 4/4
    \autoBeamOff
    \tempo 4 = 80
}

sopMusic = \relative c' {
  d4 d8 d e4 fis |
  fis4. e8 e4 fis |
  g^\< a b\! cis |
  a2~^\> a4\!  a4 |
  
  d4. cis8 b4 fis |
  a4.^\markup\italic"dim." g8 g4 fis^\p |
  d4. d8 fis4 e |
  e2.  e4 |
  
  g4. fis8 e4^\cresc e |
  a4. g8 fis4 fis |
  b4.-> a8 g4 fis\! |
  g2  a |
  
  b4. b8 cis4 cis |
  d^\f dis e b^\markup{\dynamic"p" \italic" rit."} |
  cis b g4. e8 |
  d1 \bar "|."
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  a4 d8 d d4 d |
  d4. d8 d4 d |
  d d d cis |
  cis2( d4) e |
  
  d4. e8 fis4 d |
  fis4. e8 e4 cis |
  b4. d8 d4 d |
  cis2. e4 |
  
  d4. d8 d4 cis |
  d4. cis8 d4 e |
  dis4. dis8 dis4 dis |
  e2 fis |
  
  g4. d8 e4 e |
  d4 fis e e |
  e d b cis |
  d1 \bar "|."
}
altoWords = \lyricmode {
  
  \set stanza = #"1. "
  ’Twas in the win -- ter cold, when earth Was de -- so -- late and wild, __
  That An -- gels wel -- comed at His Birth The ev -- er -- last -- ing Child.
  From realms of ev -- er bright -- ’ning day, And from His throne a -- bove
  He came, with hu -- man kind to stay, All low -- li -- ness and love.
}
altoWordsII = \lyricmode {
  
%\markup\italic
  \set stanza = #"2. "
  Then in the man -- ger the poor beast
  Was pre -- sent with his Lord; __
  Then swains and pil -- grims from the East
  Saw, won -- dered, and a -- dored.
  And I this morn would come with them
  This bless -- ed sight to see,
  And to the Babe of Beth -- le -- hem
  Bend low the rev -- ’rent knee.
}
altoWordsIII = {
  
  \set stanza = \markup{\dynamic"mf " "3. "}
  \lyricmode {
    But I have not, it makes me sigh,
    One off -- ’ring in my pow’r;
  }
  \set stanza = \markup\dynamic"f "
  \lyricmode {
    ’Tis win -- ter all with me, and I
    Have nei -- ther fruit nor flow’r.
    O God, O Bro -- ther let me give,
    My worth -- less self to Thee;
    And that the years which I may live
    May pure and spot -- less be:
  }
}
altoWordsIV = \lyricmode {
  
  \set stanza = #"4. "
  Grant me Thy -- self, O Sav -- ior kind,
  The Spi -- rit un -- de -- filed, __
  That I may be in heart and mind
  As gen -- tle as a child;
  That I may tread life’s ar -- duous ways
  As Thou Thy -- self hast trod,
  And in the might of prayer and praise
  Keep ev -- er close to God.
}
altoWordsV = \lyricmode {
  
  \set stanza = #"5. "
  Light of the ev -- er -- last -- ing morn,
  Deep through my spi -- rit shine; __
  There let Thy pre  -- sence new -- ly born
  Make all my be -- ing Thine:
  There try me as the sil -- ver, try,
  And cleanse my soul with care,
  Till Thou art a -- ble to de -- scry
  Thy fault -- less im -- age there.
}
altoWordsVI = \lyricmode {
  \set stanza = #"6. "
  \set ignoreMelismata = ##t
}
tenorMusic = \relative c {
  fis4 fis8 fis a4 a |
  b4. b8 b4 a |
  b_\< a g\! g |
  g2(_\> fis4\!) a4 |
  
  fis4. fis8 fis4 b |
  b4. b8 b4 ais_\p |
  fis b a gis |
  a2. cis4 |
  
  b4. a8 g4 a |
  a4. a8 a4 a |
  a-> fis b a |
  g2 c |
  
  b4. b8 b4 ais |
  b_\f c b g_\p |
  g e e g |
  fis1 \bar "|."
}


bassMusic = \relative c {
  d4 d8 d d4 d |
  g,4. g8 g'4 fis |
  e e e a, |
  d2~ d4 cis |
  
  b4. cis8 d4 b |
  e4. e8 e4 fis |
  b,4. b8 e4 e |
  a,2. a'4 |
  
  a,4. a8 a4 g' |
  fis4. e8 d4 c |
  b4. b8 b4 b |
  e2 d |
  
  g4. g8 fis4 fis |
  b a g e |
  a, a a a |
  d1 \bar "|."
}
bassWords = \lyricmode {

}

  
\bookpart { 
\header {
  title = \songTitle 
  subtitle = \songSubtitle 
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
     \new Lyrics = "altosVI"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "tenors" \altoWordsVI
    \new Lyrics = "altosV"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "tenors" \altoWordsV
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "tenors" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "tenors" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "tenors" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((padding . -0.5))} \lyricsto "tenors" \altoWords
    \new Lyrics \with { alignBelowContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "basses" \bassWords
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

