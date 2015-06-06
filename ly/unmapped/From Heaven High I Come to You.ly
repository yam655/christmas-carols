\version "2.14.2"
\include "util.ly"
\header {
    title = "From Heaven High I Come to You"
    poet = "Martin Luther (1483–1546)"
    meter = "Translated by Catherine Winkworth (1827–1878)"
    composer = "Old German Melody Attributed to Martin Luther"
    arranger = "Adapted by J.S. Bach (1685–1750)"
    %tagline = \markup { from \italic "The English Hymnal" ", 1906"}
  }

global = {
  \key c \major
  \time 4/4
  \autoBeamOff
  \mergeDifferentlyHeadedOn
  \tempo \markup\italic"Very slow and dignified" 4 = 46
}

sopMusic = \relative c'' {
  \partial 4 c4 |
  b a b g |
  a b c\fermata \bar "||"
  
  c |
  c g g e8[ f] |
  g4 f e\fermata \bar"||"
  
  e |
  a a g8[ a] b4 |
  c8[ b] a4 g\fermata
  
  c4 |
  b a g a8[ g] |
  f[ e] d4 c\fermata \bar "|."
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  g'4 |
  g8[ fis] e4 d e8[ d] |
  c4 d e |
  
  e8[ f] |
  g[ f] e4 d c |
  c d c |
  
  c8[ d] |
  e4 d d8[ fis] g4 |
  g g8[ fis] g4 |
  
  e8[ d] |
  d[ e] e[ d] d[ c] c4 |
  c8[ a] b4 c \bar "|."
}
altoWords = \lyricmode {
  \dropLyricsIX
  \set stanza = #"1. "
  From heav -- en high I come to you,
  To bring you ti -- dings, strange and true.
  Glad ti -- dings of great joy I bring,
  Where of I now will say and sing.
}
altoWordsII = \lyricmode {
  \dropLyricsIX
%\markup\italic
  \set stanza = #"2. "
  To you this night is born a Child
  Of Ma -- ry, chos -- en Moth -- er mild;
  This lit -- tle Child, of low -- ly birth,
  Shall be the joy of all the earth.
}
altoWordsIII = \lyricmode {
  \dropLyricsIX
  \set stanza = #"3. "
  Glo -- ry to God in high -- est Heav’n,
  Who un -- to us His Son hath giv’n!
  While an -- gels sing with pi -- ous mirth
  A glad New Year to all the earth.
}
altoWordsIV = \lyricmode {
}
altoWordsV = \lyricmode {
}
altoWordsVI = \lyricmode {
}
tenorMusic = \relative c' {
  e4 |
  d c b c8[ b] |
  a[ g] f4 g |
  
  g4 |
  c c b bes8[ a] |
  g4 g g |
  
  g |
  g fis g8[ c] b[ a] |
  g[ b] e[ d] b4 |
  
  a4 |
  g g8[ f] f[ e] a[ b] |
  c4 g8[ f] e4 \bar "|."
}
tenorWords = \lyricmode {

}

bassMusic = \relative c {
  c4 |
  g'4. fis8 g[ f] e4 |
  f8[ e] d4 c |
  
  c8[ d] |
  e4 e8[ f] g4 g8[ f] |
  e[ d] c[ b] c4 |
  
  c |
  cis d8[ c] b[ a] g4 |
  e'8[ d] c[ d] g4 |
  
  g8[ fis] |
  g[ e] c[ d] b[ c] f[ g] |
  a[ f] g[ g,] c4 \bar "|."
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
%    \new Lyrics = sopranos \with { \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) }
    \new Staff = women <<
      \new Voice = "sopranos" { \voiceOne << \global \sopMusic >> }
      \new Voice = "altos" { \voiceTwo << \global \altoMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \sopWords
    \new Lyrics = "altosVI"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsVI
    \new Lyrics = "altosV"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsV
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((padding . -0.5))} \lyricsto "sopranos" \altoWords
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
    \tempo 4 = 46
    \set Staff.midiInstrument = "flute"
  
    \context {
      \Voice
      \remove "Dynamic_performer"
    }
  }
}
