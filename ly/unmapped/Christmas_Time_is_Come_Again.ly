﻿\version "2.14.2"

songTitle = "Christmas Time is Come Again"
tuneComposer = "Anonymous, 1863"
tuneSource = \markup {from \italic {Favorite Songs and Hymns for School and Home}, 1899}

global = {
    \key f \major
    \time 3/4
    \autoBeamOff
    \tempo 4 = 95
}

sopMusic = \relative c' {
  a'8. a16 a4. a8 |
  a8. g16 << g2 {s4. \parenthesize d8 } >>
  c8 e g4. bes8 |
  bes a4. b4\rest |
  
  c,8 f a4. c8 |
  c8. bes16 d,4 bes'8\rest \parenthesize d,8 |
  c f a4. g8 |
  g f4. bes4\rest |
  e,8 f g4. a8 |
  
  g e g2 |
  c8 b a4. b8 |
  d c4. b4\rest |
  e,8 f g4. a8 |
  g e g2 |
  
  g4. f8 e8. d16 |
  d8 c4. b'4\rest \bar "||"
  \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
  \mark "Chorus" a8. a16 a4. a8 |
  a8. g16 g2 c,8 e g4. bes8 |
  bes a4. b4\rest |
  
  c,8 f a4. c8 |
  c8. bes16 d,4 bes'4\rest |
  c,8 f a4. g8 |
  g f4. b4\rest \bar "|."
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  f8. f16 f4. f8 |
  f8. e16 << e2 {s4. \parenthesize d8} >> |
  c8 c e4. g8 |
  g f4. s4 |
  
  c8 c f4. c8 |
  d8. d16 bes4 s8 \parenthesize bes8 |
  a c f4. e8 |
  e c4. s4 |
  c8 d e4. f8 |
  
  e c e2 |
  f8 f f4. f8 |
  f e4. s4 |
  c8 d e4. f8 |
  e c e2 |
  
  e4. d8 c8. b16 |
  b8 c4. s4 |
  f8. f16 f4. f8 |
  f8. e16 e2 |
  c8 e e4. g8 |
  
  g8 f4. s4 |
  c8 c f4. c8 |
  d8. d16 bes4 s4 |
  a8 c f4. e8 |
  e c4. s4 \bar "|."
}

altoWords = \lyricmode {
  
  \set stanza = #"1. "
   Christ -- mas time is come a -- gain, \skip1
    Christ -- mas plea -- sures bring -- ing;
  Let us join our voi -- ces now,
    And Christ -- mas songs be sing -- ing.
  Years a -- go, one star -- ry night,
    Thus the sto -- ry’s giv -- en,
  An -- gel bands o’er Beth -- lem’s plains,
    Sang the songs of heav -- en.

  
  
  Glo -- ry be to God on high!
    Peace, good -- will to
    mor -- tals!
  
  Christ the Lord is born to -- night,
    Heav’n throws wide its por -- tals.

}
altoWordsII = \lyricmode {
  
%\markup\italic
  \set stanza = #"2. "
  An -- gels sang; let men re -- ply,
    And chil -- dren join their voi -- ces;
  Raise the cho -- rus loud and high,
    \skip 1 Earth and heav’n re -- joi -- ces.
  When we reach that hap -- py place,
    Joy -- ous prais -- es bring -- ing,
  Then, be -- fore our Fa -- ther’s face,
    We shall still be sing -- ing.
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
  c8. c16 c4. c8 |
  c8. c16 << c2 { s4. \parenthesize c8 } >> |
  c g c4. c8 |
  c c4. s4 |
  
  a8 a c4. a8 |
  bes8. bes16 f4 s8 \parenthesize f8 |
  f a c4. bes8 |
  bes a4. s4 |
  g8 g g4( c8) c |
  
  c c c2 |
  d8 d d4. d8 |
  b c4. s4 |
  g8 g g4( c8) c |
  c g g2 |
  
  g4. g8 g8. f16 |
  f8 e4. s4 |
  c'8. c16 c4. c8 |
  c8. c16 c2 |
  c8 g c4. c8 |
  
  c c4. s4 |
  a8 a c4. a8 |
  bes8. bes16 f4 s4 |
  f8 a c4. bes8 |
  bes a4. s4 \bar "|."
}
tenorWords = \lyricmode {

}

bassMusic = \relative c {
  f8. f16 f4. f8 |
  c8. c16 << c2 {s4. \parenthesize c8} >>
  c c c4. c8 |
  f f4. d4\rest |
  
  f8 f f4. f8 |
  bes,8. bes16 bes4 s8 \parenthesize bes8 |
  c c c4. c8 |
  f f4. d4\rest |
  c8 c c4. c8 |
  
  c c c2 |
  g'8 g g4. g8 |
  c, c4. d4\rest |
  c8 c c4. c8 |
  c c c2 |
  
  g4. g8 g8. g16 |
  c8 c4. d4\rest |
  f8. f16 f4. f8 |
  c8. c16 c2 |
  c8 c c4. c8 |
  
  f8 f4. d4\rest |
  f8 f f4. f8 |
  bes,8. bes16 bes4 d\rest |
  c8 c c4. c8 |
  f f4. d4\rest \bar "|."
}

\bookpart { 
\header {
  title = \songTitle 
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
    \new Lyrics = "altosVI"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWordsVI
    \new Lyrics = "altosV"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWordsV
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "altos" \altoWords
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "tenors" \tenorWords
  >>
%    \new PianoStaff << \new Staff { \new Voice { \pianoRH } } \new Staff { \clef "bass" \pianoLH } >>
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

