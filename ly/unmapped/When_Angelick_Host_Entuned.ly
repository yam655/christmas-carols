\version "2.14.2"
\include "util.ly"
\header {
    %tagline = \markup { from \italic "The Cambridge Carol Book" ", 1924"}

    title = "When Angelick Host Entuned"
    poet = "George Ratcliffe Woodward (1848–1934)"
    composer = \markup{\italic{Heinz, wiltu Christa han}, 1582}
    arranger = "Arranged by George Ratcliffe Woodward (1848–1934)"
  }

%When Angelick Host Entuned
global = {
  \key g \major
  \time 4/4
  \autoBeamOff
  %\override DynamicLineSpanner #'staff-padding = #0.0
  %\override DynamicLineSpanner #'Y-extent = #'(-1 . 1)
}

sopMusic = \relative c' {
  g'4 g a a |
  b b g2 |
  a4 b c d |
  b2 a |
  
  e4 fis g2 |
  e4 fis g2 |
  a4 g fis g |
  e2 d\fermata \bar "|."
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  d4 g g fis |
  g g e2 |
  e4 e e f |
  e2 e |
  
  e4 d8[ c] b2 |
  e4 d8[ c] b2 |
  e4 d d d~ |
  d cis d2 \bar "|."
}
altoWords = \lyricmode {
  \dropLyricsIX
  \set stanza = #"1. "
  When an An -- gel host en -- tuned
  An -- them sweet and ai -- ry
  O’er the Child, meek and mild,
  \set associatedVoice = "sopranos"
  Of the Vir -- gin Ma -- ry;
}
altoWordsII = \lyricmode {
  \dropLyricsIX
%\markup\italic
  \set stanza = #"2. "
  When, with hon -- ey, herd -- men brought
  But -- ter from the dai -- ry
  To the One Ho -- ly Son
  \set associatedVoice = "sopranos"
  Born of Maid -- en Ma -- ry;
  \set ignoreMelismata = ##t
}
altoWordsIII = \lyricmode {
  \dropLyricsIX
  \set stanza = #"3. "
  When three pil -- grim kings un -- lockt
  Each his cas -- ket, spa -- ry
  Of no thing for this King,
  \set associatedVoice = "sopranos"
  God, the Son of Ma -- ry.
  \set ignoreMelismata = ##t
}
altoWordsIV = \lyricmode {
  \dropLyricsIX
  \set stanza = #"4. "
  ‘Glo -- ry be to God on high,
  God, who can -- not va -- ry!’
  Was the lay on that day
  \set associatedVoice = "sopranos"
  Sung by Bless -- èd Ma -- ry.
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
  b4 b e d |
  d d c2 |
  c4 b a a~ |
  a gis a2 |
  
  c4 a g2 |
  c4 a g2 |
  c4 b a b |
  a2 fis \bar "|."
}
tenorWords = \lyricmode {

}

bassMusic = \relative c {
  g'4 e c d |
  g g c2 |
  a4 gis a d, |
  e2 a, |
  
  a'4 d, e2 |
  c4 d e2 |
  a,4 b d g, |
  a2 d\fermata \bar "|."
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
    \tempo 4 = 120
    \set Staff.midiInstrument = "flute"
  
    \context {
      \Voice
      \remove "Dynamic_performer"
    }
  }
}
