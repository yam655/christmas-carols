\version "2.14.2"

songTitle = "As With Gladness Men of Old"
songPoet = "William C. Dix (1837–1898)"
tuneComposer = "Konrad Kocher (1786–1872)"
tuneSource = \markup{from \italic {Christmas Carols and Hymns for School and Choir}, 1910}

global = {
    \key aes \major
    \time 4/4
    \autoBeamOff
    \tempo 4 = 100
}

sopMusic = \relative c'' {
  aes4 g8[ aes] bes4 aes |
  des des c2 |
  f,4 g aes f | 
  
  ees4 ees ees2 |
  aes4 g8[ aes] bes4 aes |
  des des c2 | 
  
  f,4 g aes f |
  ees ees ees2 |
  c'4 bes aes c | 
  
  ees4. des8 c2 |
  f,4 g aes des |
  c bes aes2 \bar "|."
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  ees4 ees ees ees |
  des ees ees2 |
  des4 ees ees des |
  
  c bes c2 |
  ees4 ees ees ees |
  des ees ees2 |
  
  des4 ees ees des |
  c bes c2 |
  ees4. des8 c4 f |
  
  ees ees ees2 |
  des4 ees ees des |
  ees4. des8 c2 \bar "|."
}
altoWords = \lyricmode {
  
  \set stanza = #"1. "
  As with __ glad -- ness men of old
  Did the guid -- ing star be -- hold;
  As with __ joy they hail’d its light,
  Lead -- ing on -- ward, beam -- ing bright;
  So, most gra -- cious God, may we
  Ev -- er -- more be led to Thee.
}
altoWordsII = \lyricmode {
  
%\markup\italic
  \set stanza = #"2. "
  As with __ joy -- ful steps they sped
  To that low -- ly man -- ger -- bed,
  There to __ bend the knee be -- fore
  Him whom heav’n and earth a -- dore;
  So may we with will -- ing feet
  Ev -- er seek Thy mer -- cy seat.
}
altoWordsIII = \lyricmode {
  
  \set stanza = #"3. "
  As they __ of -- fer’d gifts most rare
  At that man -- ger rude and bare;
  So may __ we with ho -- ly joy,
  Pure and free from sin’s al -- loy,
  All our cost -- liest trea -- sures bring,
  Christ, to Thee, our heav’n -- ly King.
}
altoWordsIV = \lyricmode {
  
  \set stanza = #"4. "
  Ho -- ly __ Je -- sus, ev -- ’ry day
  Keep us in the nar -- row way;
  And, when __ earth -- ly things are past,
  Bring our ran -- somed souls at last
  Where they need no star to guide,
  Where no clouds Thy glo -- ry hide.
}
altoWordsV = \lyricmode {
  
  \set stanza = #"5. "
  In the __ heav’n -- ly coun -- try bright
  Need they no cre -- a -- ted light;
  Thou its __ Light, its Joy, its Crown,
  Thou its Sun which goes not down;
  There for -- ev -- er may we sing
  Al -- le -- lu -- ias to our King.
}
altoWordsVI = \lyricmode {
}
tenorMusic = \relative c' {
  c4 des8[ c] bes4 c |
  aes bes aes2 |
  aes4 bes aes aes |
  
  aes g aes2 |
  c4 des8[ c] bes4 c |
  aes bes aes2 |
  
  aes4 bes aes aes |
  aes g aes2 |
  aes4 g aes aes |
  
  bes g aes2 |
  aes4 bes aes aes |
  aes g aes2 \bar "|."
}
tenorWords = \lyricmode {

}

bassMusic = \relative c' {
  aes4 bes8[ aes] g4 aes |
  f g aes2 |
  des,4 des c des |
  
  ees ees aes,2 |
  aes'4 bes8[ aes] g4 aes |
  f g aes2 |
  
  des,4 des c des |
  ees ees aes,2 |
  aes'4 ees f f |
  
  g ees aes2 |
  des,4 des c f |
  ees ees aes,2 \bar "|."
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
    \new Lyrics \with { alignAboveContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \sopWords
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
    >>
    \new Lyrics = "altosVI"  \with { alignBelowContext = #"women" } \lyricsto "tenors" \altoWordsVI
    \new Lyrics = "altosV"  \with { alignBelowContext = #"women" } \lyricsto "tenors" \altoWordsV
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" } \lyricsto "tenors" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" } \lyricsto "tenors" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" } \lyricsto "tenors" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((padding . -0.7)) } \lyricsto "tenors" \altoWords
    \new Lyrics \with { alignAboveContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "tenors" \tenorWords
  >>
  >>
  \layout { }
  \midi {
    \set Staff.midiInstrument = "flute"
  
    %\context { \Voice \remove "Dynamic_performer" }
  }
}
}

