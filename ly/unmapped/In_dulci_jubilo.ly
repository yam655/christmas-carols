﻿\version "2.14.2"

\header {
    title = "In dulci jubilo"
    poet = "Heinrich Seuse (1300–1366)"
    composer = "14th century German melody"
    
    %source = \markup { "from" \italic "ChristmasCarolMusic.org" }
    %\markup\fill-line{\concat { "from " \italic "The Cowley Carol Book" ", 1919"}}
  }

global = {
    \key f \major
    \time 6/8
    \tempo 4 = 90
}

sopMusic = \relative c' {
  \partial 8 f8 |
  f4 f8 a4 bes8 |
  c4( d8 c4) c8 |
  f,4 f8 a4 bes8 |
  c4( d8 c4) b8\rest |
  c4 d8 c4 bes8 |
  
  a4( g8) f4 f8 |
  g4 g8 a4 g8 |
  f4( g8 a4) a8 |
  c4 d8 c4 bes8 |
  a4( g8) f4 f8 |
  
  g4 g8 a4 g8 |
  f4( g8 a4) b8\rest |
  d,4 d8 e4 e8 |
  f4.( c'4) b8\rest |
  a4 a8 g4 g8 |
  f4. b4\rest \bar "|."
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  c8 |
  d4 c8 f[ e] d |
  c4( f8 e4) f8 |
  d4 c8 f[ e] d |
  c4( f8 e4) s8 |
  f4 f8 e4 g8 |
  
  f4( e8) f4 f8 |
  f4 f8 e4 e8 |
  f4.~ f4 f8 |
  f4 f8 e4 g8 |
  f4( e8) f4 d8 |
  
  f4 f8 e4 e8 |
  f4( e8 f4) s8 |
  a,4 a8 d4 cis8 |
  d4.( e4) s8 |
  c4 f8 f4 e8 |
  f4. s4 \bar "|."

}
altoWords = \lyricmode {
  
  \set stanza = #"1. "
  \markup\italic In \markup\italic dul -- \markup\italic ci \markup\italic ju -- \markup\italic bi -- \markup\italic lo __ Now sing with hearts a -- glow!
%8.5x11  __
  Our de -- light and plea -- sure Lies \markup\italic in \markup\italic præ -- \markup\italic se -- \markup\italic pi -- \markup\italic o, __
  Like sun -- shine is our trea -- sure
  \markup\italic Ma -- \markup\italic tris \markup\italic in \markup\italic gre -- \markup\italic mi -- \markup\italic o __
  \markup\italic Al -- \markup\italic pha \markup\italic es \markup\italic et \markup\italic O! __
  \markup\italic Al -- \markup\italic pha \markup\italic es \markup\italic et \markup\italic O!
}
altoWordsII = \lyricmode {
  
  \set stanza = #"2. "
  \markup\italic O \markup\italic Je -- \markup\italic su, \markup\italic par -- \markup\italic vu -- \markup\italic le, __
  For thee I long al -- way; __
  Com -- fort my heart’s blind -- ness ""
  \markup\italic O \markup\italic Puer \markup\italic op -- \markup\italic ti -- \markup\italic me, __
  With all Thy lov -- ing kind -- ness,
  \markup\italic O \markup\italic Prin -- \markup\italic ceps \markup\italic glo -- \markup\italic ri -- \markup\italic æ. __
  \markup\italic Tra -- \markup\italic he \markup\italic me \markup\italic post \markup\italic Te! __
  \markup\italic Tra -- \markup\italic he \markup\italic me \markup\italic post \markup\italic Te!
}
altoWordsIII = \lyricmode {
  
  \set stanza = #"3. "
  \markup\italic O \markup\italic Pa -- \markup\italic tris \markup\italic ca -- \markup\italic ri -- \markup\italic tas! __
  \markup\italic O \markup\italic na -- \markup\italic ti \markup\italic lem -- \markup\italic i -- \markup\italic tas! __
  Deep -- ly were we stain -- ed
  \markup\italic Per \markup\italic nos -- \markup\italic tra \markup\italic cri -- \markup\italic mi -- \markup\italic na; __
  But Thou for us hast gain -- ed
  \markup\italic Cœ -- \markup\italic lo -- \markup\italic rum \markup\italic gau -- \markup\italic di -- \markup\italic a. __
  O that we were there! O that we were there! 
}
altoWordsIV = \lyricmode {
  
  \set stanza = #"4. "
  \markup\italic U -- \markup\italic bi \markup\italic sunt \markup\italic gau -- \markup\italic di -- \markup\italic a __
  In an -- y place  but there?
  There are an -- gels sing -- ing ""
  \markup\italic No -- \markup\italic va \markup\italic can -- \markup\italic ti -- \markup\italic ca __
  And there the bells are ring -- ing
  \markup\italic In \markup\italic Re -- \markup\italic gis \markup\italic cu -- \markup\italic ri -- \markup\italic a __
  O that we were there! O that we were there!
}

tenorMusic = \relative c' {
  a8 |
  bes4 a8 c4 bes8 |
  a4( bes8 g4) a8 |
  bes4 a8 c4 bes8 |
  a4( bes8 g4) s8 |
  c4 bes8 g4 c8 |
  
  c4. a4 a8 |
  d4 d8 c4 bes8 |
  a4( bes8 c4) c8 |
  c4 bes8 g4 c8 |
  c4. a4 a8 |
  
  d4 d8 c[ d] bes |
  a4( c8)~ c4 s8 |
  a4 a8 g4 a8 |
  a4( bes8 g4) s8 |
  f4 a8 d4 c8 |
  a4. s4 \bar "|."
}
tenorWords = \lyricmode {

}

bassMusic = \relative c {
  f8 |
  f4 f8 f4 f8 |
  f4.~ f4 f8 |
  f4 f8 f4 f8 |
  f4.( c4) d8\rest |
  a4 bes8 c4 e8 |
  
  f4( c8) d4 d8 |
  bes4 bes8 c4 c8 |
  f4.~ f4 f8 |
  a,4 bes8 c4 e8 |
  f4( c8) d4 d8 |
  
  bes4 bes8 c4 c8 |
  d4( c8 f4) d8\rest |
  f4 f8 e4 a,8 |
  d4.( c4) d8\rest |
  f4 d8 bes4 c8 |
  f4. d4\rest \bar "|."

}
bassWords = \lyricmode {

}

\bookpart {
\score {
  <<
   \new ChoirStaff <<
    \new Staff = women <<
      \new Voice = "sopranos" { \voiceOne << \global \sopMusic >> }
      \new Voice = "altos" { \voiceTwo << \global \altoMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \sopWords
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "sopranos" \altoWords
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "tenors" \tenorWords
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

