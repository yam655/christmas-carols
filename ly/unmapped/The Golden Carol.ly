\version "2.14.2"
\include "util.ly"
\header {
  title = "The Golden Carol"
  subtitle = "of Melchior, Casper and Balthazar"
  poet = "Traditional"
  composer = "English"
  arranger = "Arranged by Sir John Stainer (1840–1901)"
  %tagline = \markup{from \italic{Carols Old and Carols New}, 1916, via \italic{HymnsAndCarolsOfChristmas.com}}
}

global = {
  \key f \major
  \time 6/8
  %\override DynamicLineSpanner #'staff-padding = #0.0
  %\override DynamicLineSpanner #'Y-extent = #'(-1 . 1)
}

sopMusic = \relative c'' {
  \partial 8 a8 |
  d4 e8 f4 cis8 |
  d4 d8 a4 bes8 |
  a4 g8 f4 e8 |
  
  d4. d8 bes'\rest \bar""\break a |
  d4 e8 f4 cis8 |
  d4 d8 a4 bes8 |
  
  a4 g8 f4 e8 |
  d4. d8 bes'\rest \bar""\break f |
  e4 f8 g4 a8 |
  
  f4 f8 e4 f8 |
  d4 e8 f4 g8 |
  a4. a8 bes\rest \bar""\break gis |
  
  a4 b8 cis4 a8 |
  d4 d8 cis4 f8 |
  e4 d8 cis4 e8 |
  \partial8*5 d4. d4 \bar "|."
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  f8 |
  a4 a8 a4 g8 |
  f4 g8 a4 g8 |
  a4 d,8 d4 cis8 |
  
  d4. d8 s8 f |
  a4 a8 a4 g8 |
  f4 g8 a4 g8 |
  
  a4 d,8 d4 cis8 |
  d4. d8 s d |
  d4 d8 d4 cis8 |
  
  d4 d8 cis4 cis8 |
  d4 d8 d4 d8 |
  e4. e8 s e |
  
  e4 e8 a4 a8 |
  a4 a8 a4 a8 |
  g4 g8 a4 g8 |
  f4. f4 \bar "|."
}
altoWords = \lyricmode {
  \dropLyricsVII
  \set stanza = #"1. "
  We saw a light shine out a -- far, On Christ -- mas in the morn -- ing,
  And straight we knew it was Christ’s star, Bright beam -- ing in the morn -- ing.
  Then did we fall on bend -- ed knee, On Christ -- mas in the morn -- ing,
  And prais’d the Lord, who’d let us see, His glo -- ry at its dawn -- ing.
}
altoWordsII = \lyricmode {
  \dropLyricsVII
  \set stanza = #"2. "
  Oh! ev -- er thought be of His Name, On Christ -- mas in the morn -- ing,
  Who bore for us both grief and shame, Af -- flic -- tion’s sharp -- est scorn -- ing.
  And may we die "(when" death shall come,) On Christ -- mas in the morn -- ing,
  And see in heav’n, our glo -- rious home, That Star of Christ -- mas morn -- ing.
}
altoWordsIII = \lyricmode {
}
altoWordsIV = \lyricmode {
}
altoWordsV = \lyricmode {
}
altoWordsVI = \lyricmode {
}
tenorMusic = \relative c' {
  d8 |
  d4 cis8 d4 e8 |
  d4 d8 d4 d8 |
  d4 bes8 a4 g8 |
  
  f4. f8 s8 d' |
  d4 cis8 d4 e8 |
  d4 d8 d4 d8 |
  
  d4 bes8 a4 g8 |
  f4. f8 s a |
  bes4 a8 bes4 a8 |
  
  a4 a8 a4 g8 |
  f4 e8 d4 d'8 |
  d4. cis8 s b |
  
  cis4 d8 e4 cis8 |
  d4 f8 e4 d8 |
  bes4 d8 e4 cis8 |
  d4. d4 \bar "|."
}
tenorWords = \lyricmode {

}

bassMusic = \relative c {
  d8 |
  f4 a8 d,4 a'8 |
  bes4 bes8 f4 g8 |
  f4 g8 a4 a,8 |
  
  d4. d8 d\rest d |
  f4 a8 d,4 a'8 |
  bes4 bes8 f4 g8 |
  
  f4 g8 a4 a,8 |
  d4. d8 d\rest d |
  g4 f8 e4 a,8 |
  
  d4 d8 a4 a8 |
  bes4 bes8 bes4 bes8 |
  a4. a8 d\rest e |
  
  a4 a8 a4 g8 |
  f4 d8 a'4 d,8 |
  g4 bes8 a4 a,8 |
  d4. d4 \bar "|."
}
bassWords = \lyricmode {

}

pianoRH = \relative c' {
  
}
pianoLH = \relative c' {
  
}

\score {
  <<
   \new ChoirStaff <<
    \new Staff = women <<
      \new Voice = "sopranos" { \voiceOne << \global \sopMusic >> }
      \new Voice = "altos" { \voiceTwo << \global \altoMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \sopWords
     \new Lyrics = "altosVI"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \altoWordsVI
    \new Lyrics = "altosV"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \altoWordsV
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \altoWords
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "tenors" \tenorWords
    \new Lyrics \with { alignBelowContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "basses" \bassWords
  >>
%    \new PianoStaff << \new Staff { \new Voice { \pianoRH } } \new Staff { \clef "bass" \pianoLH } >>
  >>
  \layout { }
  \midi {
    \tempo 4 = 105
    \set Staff.midiInstrument = "flute"
  
    \context {
      \Voice
      \remove "Dynamic_performer"
    }
  }
}
