\version "2.14.2"

songTitle = "To us is born a little Child"
songSubtitle = "(Parvulus nobis nascitur)"
songPoet = "15th Century"
songTranslator = "tr. by Wm. John Blew (1808–1894)"
tuneComposer = \markup{\italic {Ach! bleib bei uns, Herr Jesu Christ}}
tuneArranger = "J.S. Bach (1685–1750)"
tuneSource = \markup {from \italic {The Cowley Carol Book}, 1919}

global = {
    \key a \major
    \time 4/4
    \autoBeamOff
    \tempo 4 = 120
}

sopMusic = \relative c' {
  \partial 4 cis'4 |
  cis8[ d] e4 cis a |
  b cis d\fermata  cis |
  b a a4.( b8 |
  cis4) cis b8[ a] b4 |
  a2.\fermata 
  
  cis4 |
  cis8[ d] e4 cis a | 
  b cis d\fermata  cis |
  b a a4.( b8 |
  cis4) cis b8[ a] b4 |
  a2.\fermata 
  
  cis4 |
  b4 cis a fis |
  
  gis a b\fermata cis |
  a a a4.( b8 |
  cis4) cis b8[ a] b4 |
  a2.\fermata \bar "|."
}
  

altoMusic = \relative c' {
  a'4 |
  a b a a |
  g8[ fis] e4 fis e |
  e8[ d] cis4 fis2( |
  e4) e e4. d8 |
  cis2. 
  
  a'4 |
  a b a a |
  g8[ fis] e4 fis e |
  e8[ d] cis4 fis2( |
  e4) e e4. d8 |
  cis2. 
  
  a'4 |
  gis gis fis8[ e] dis4 |
  
  e4. dis8 e4 eis |
  cis fis e( fis8[ gis] |
  a4) e e4. d8 |
  cis2. \bar "|."
}
altoWords = \lyricmode {
%6x9  \override LyricText #'font-size = #1.1
  
  \set stanza = #"1. "
  To us is born a lit -- tle Child
  Of Ma -- ry, maid -- en -- mo -- ther mild;
  Whom An -- gels laud with ser -- vice sweet,
  Let us His own __ poor ser -- vants greet.
  And there -- fore Fa -- ther, Son, a -- dore,
  With Ho -- ly Ghost, __ for ev -- er -- more.
}
altoWordsII = \lyricmode {
%6x9  \override LyricText #'font-size = #1.1
  
%\markup\italic
  \set stanza = #"2. "
  Our King of Glo -- ry, Him have we,
  The Li -- on -- lord __ of vic -- to -- ry:
  The Fa -- ther’s sole -- be -- got -- ten Son
  Light -- ’ning the a -- ges as they run.
}
altoWordsIII = \lyricmode {
%6x9  \override LyricText #'font-size = #1.1
  
  \set stanza = #"3. "
  That dear, through Him, to God we be,
  From death de -- liv -- er’d and set free:
  Our death -- wounds heal’d by His, de -- spite
  That dark old Dra -- gon’s dead -- ly bite.
}
altoWordsIV = \lyricmode {
%6x9  \override LyricText #'font-size = #1.1
  
  \set stanza = #"4. "
  Now, mas -- ters all, full sweet -- ly sing
  Ho -- san -- na to __ our Ba -- by -- king;
  That hath but man -- ger for His bed,
  And straw where -- on __ to lay His head.
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
  e4 |
  e e e e8[ d] |
  d4 a a a |
  gis a d2( |
  cis8)[ b] a4 a gis |
  e2. 
  
  e'4 |
  e e e e8[ d] |
  d4 a a a |
  gis a d2( |
  cis8)[ b] a4 a gis |
  e2. 
  
  e'4 |
  e8[ d] cis4 cis b |
  
  b a gis gis |
  a d cis8[( d cis b] |
  a4) a a gis |
  e2. \bar "|."
}


bassMusic = \relative c {
  a4 |
  a' gis a fis |
  g a d,\fermata a |
  e' fis8[ e] d([ e fis gis] |
  a4) cis,8[ d] e4 e |
  a,2.\fermata 
  
  a4 |
  a' gis a fis |
  g a d,\fermata a |
  e' fis8[ e] d([ e fis gis] |
  a4) cis,8[ d] e4 e |
  a,2.\fermata 
  
  a4 |
  e' eis fis b8[ a] |
  gis4 fis e\fermata  cis |
  fis8[ e] fis[ gis] a([ b a gis] |
  fis4) cis8[ d] e4 e |
  a,2.\fermata \bar "|."
}


\bookpart { 
\header {
  title = \songTitle 
  subtitle = \songSubtitle 
  poet = \songPoet 
  translator = \songTranslator 
  composer = \tuneComposer 
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
    \new Lyrics = "altosVI"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsVI
    \new Lyrics = "altosV"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsV
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((padding . -0.5)) } \lyricsto "sopranos" \altoWords
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

