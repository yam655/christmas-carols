\version "2.14.2"
\include "util.ly"
\header {
    title = "Orientis Partibus"
    poet = "Attributed to Pierre de Corbeil, Bishop of Sens (d. 1222)"
    composer = "12th Century French"
    %tagline = \markup { Words from \italic{HymnsAndCarolsOfChristmas.com}, Music from \italic{CyberHymnal.org}}
  }

global = {
  \key f \major
  \time 4/4
  \autoBeamOff
}

sopMusic = \relative c' {
  \repeat volta 3 {
    f4. g8 a4 f |
    g e f2 |
    c'4 c d a8[ bes] |
    c4 c a2 |
    
    a4 g bes a |
    g f8[ g] a2 |
    c4. bes8 a4 f |
    g e f2
  }
  
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  c4. c8 f4 c |
  d c c2 |
  f4 f f f |
  f e f2 |
  
  f4 c f f |
  d d e2 |
  f4. f8 e4 d |
  d c c2
}
altoWords = \lyricmode {
  \dropLyricsIX
  \set stanza = #"1. "
  O -- ri -- en -- tis par -- ti -- bus
  Ad -- ven -- ta -- vit a -- si -- nus,
  Pul -- cher et for -- tis -- si -- mus,
  Sar -- ci -- nis ap -- tis -- si -- mus.

  \set stanza = #"4. "
  Dum tra -- hit ve -- hi -- cu -- la,
  Mul -- ta cum sar -- ci -- nu -- la
  Il -- li -- us man -- di -- bu -- la
  Du -- ra te -- rit pa -- bu -- la.
}
altoWordsII = \lyricmode {
  \dropLyricsIX
%\markup\italic
  \set stanza = #"2. "
  Sal -- tu vin -- cit hin -- nu -- los
  Da -- mas et ca -- pre -- o -- los
  Su -- per dro -- me -- da -- ri -- os
  Ve -- lox ma -- di -- a -- ne -- os.
  
  \set stanza = #"5. "
  Cum a -- ris -- tis, hor -- de -- um
  Co -- me -- dit et car -- du -- um
  Tri -- ti -- cum ex pa -- le -- a
  Se -- gre -- gat in a -- re -- a.
}
altoWordsIII = \lyricmode {
  \dropLyricsIX
  \set stanza = #"3. "
  Hic in col -- li -- bus Sy -- chen,
  Jam nu -- tri -- tus sub Ru -- ben
  Trans -- i -- it per Jor -- da -- nem
  Sa -- li -- it in Beth -- le -- hem.
  
  \set stanza = #"6. "
  A -- men di -- cas, a -- si -- ne;
  Jam sa -- tur ex gra -- mi -- ne.
  A -- men, a -- men i -- te -- ra
  As -- per -- na -- re ve -- te -- ra.
}
altoWordsIV = \lyricmode {
}
altoWordsV = \lyricmode {
}
altoWordsVI = \lyricmode {
}
altoWordsVII = \lyricmode {
  \set stanza = #"7. "
}
tenorMusic = \relative c' {
  a4. bes8 c4 a |
  bes g a2 |
  a4 a bes f |
  g g a2 |
  
  c4 c bes c |
  d d cis2 |
  c4. d8 c4 a |
  bes g a2
}
tenorWords = \lyricmode {

}

bassMusic = \relative c {
  f4. e8 f4 f |
  bes, c f2 |
  f4 f bes, d |
  c c f2 |
  
  f4 e d c |
  bes bes a2 |
  a4. bes8 c4 d |
  bes c f2 
}
bassWords = \lyricmode {

}

\score {
  <<
   \new ChoirStaff <<
%    \new Lyrics = sopranos \with { \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) }
    \new Staff = women <<
      \new Voice = "sopranos" { \voiceOne << \global \repeat unfold2\sopMusic >> }
      \new Voice = "altos" { \voiceTwo << \global \repeat unfold2\altoMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \sopWords
    \new Lyrics = "altosVII"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((padding . -0.5)) } \lyricsto "sopranos" \altoWordsVII
    \new Lyrics = "altosVI"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((padding . -0.5)) } \lyricsto "sopranos" \altoWordsVI
    \new Lyrics = "altosV"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((padding . -0.5)) } \lyricsto "sopranos" \altoWordsV
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((padding . -0.5)) } \lyricsto "sopranos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((padding . -0.5)) } \lyricsto "sopranos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((padding . -0.5)) } \lyricsto "sopranos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((padding . -0.5)) } \lyricsto "sopranos" \altoWords
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \repeat unfold2\tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \repeat unfold2\bassMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "tenors" \tenorWords
    \new Lyrics \with { alignBelowContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "basses" \bassWords
  >>
%    \new PianoStaff << \new Staff { \new Voice { \pianoRH } } \new Staff { \clef "bass" \pianoLH } >>
  >>
  \layout {
    \context {
      \Score
      \override SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 4)
    }
  }
  
  \midi {
    \tempo 4 = 100
    \set Staff.midiInstrument = "flute"
  
    \context {
      \Voice
      \remove "Dynamic_performer"
    }
  }
}
