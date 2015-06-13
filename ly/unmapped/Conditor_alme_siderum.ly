\version "2.14.2"


\header {
    title = "Conditor alme siderum"
    poet = "Vesper Hymn"
    composer = "Arranged by Michael Praetorius (1571–1621)" 
    %source = \markup{from \italic"cpdl.org"}
    %\markup { from \italic {Peters’ Sodality Hymn Book}, 1914}
  }

global = {
    \key f \major
    \time 16/4
    \autoBeamOff
    \tempo 4 = 105
}

sopMusic = \relative c'' {
    \partial 4*12 
  \repeat volta 2 {
    a2 f4 a c c d bes c2 b\rest |
    c4 d bes c c2( bes4) a g( a) a2 |
    c4 bes g bes a bes g f2 b\rest |
    f4 a bes c c2 bes( a4) g( a) a1
  }
}
sopWords = \lyricmode {
  \repeat unfold 11 \skip1
  lux cre -- dén -- ti -- um,
  
  \repeat unfold 11 \skip1
  
  pre -- ces súp -- pli -- cum.
}

altoMusic = \relative c' {
  e2 d4 c e f f d e2 s |
  f4 f d c8([ d e f g f d e] f4) d e8 e f2 |
  e4 d e d f f e c2 s |
  d4 e g e f2 d8[( e] f4. e8 d4) f e1 \bar ":|"
}
altoWords = \lyricmode {
  
  \set stanza = #"1."
  Con -- dí -- tor al -- me sí -- de -- rum,
  Æ -- tér -- na lux __ cre -- dén -- ti -- um,
  
  Chri -- ste, Re -- dém -- ptor óm -- ni -- um,
  Ex -- áu -- di pre -- ces súp -- pli -- cum.
}
altoWordsII = \lyricmode {
%\markup\italic
}
altoWordsIII = \lyricmode {
}
altoWordsIV = \lyricmode {
  
}

tenorMusic = \relative c' {
  cis2 d4 a g a a g g2 s |
  a4 bes f a g4.( a8 bes4 c) d4. cis8 d2 |
  c4 f, c' bes d d c a2 s |
  bes4 c d c a2 bes8([ c] d4 c bes) d cis1 \bar ":|"
}
tenorWords = \lyricmode {
  \repeat unfold 11 \skip1
  
  lux cre -- dén -- ti -- um,
  
}
%  \repeat unfold 11 \skip1
%  pre -- ces súp -- pli -- cum.

bassMusic = \relative c {
  a2 d4 f c f d g c,2 d\rest |
  f4 bes, bes f' c8[( d e f] g4) a( bes a8) a d,2 |
  a4 bes c g' d bes a f2 d'\rest |
  bes4 a g c, f2 g8([ f16 e d8 e] f4 g) d a'1 \bar ":|"
}
bassWords = \lyricmode {
  \repeat unfold 11 \skip1
  lux cre -- dén -- ti -- um,
  
}
%  \repeat unfold 11 \skip1
%  pre -- ces súp -- pli -- cum.

\bookpart {
\score {
  <<
   \new ChoirStaff <<
    \new Staff = women <<
      \new Voice = "sopranos" { \voiceOne << \global \sopMusic >> }
      \new Voice = "altos" { \voiceTwo << \global \altoMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"women"  \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \sopWords
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((padding . -0.5))} \lyricsto "altos" \altoWords
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"men" } \lyricsto "tenors" \tenorWords
    \new Lyrics \with { alignBelowContext = #"men" } \lyricsto "basses" \bassWords
  >>
  >>
  \layout {
    \context {
      % Remove all empty staves
      \Staff
      \RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##t
      \remove "Time_signature_engraver"
    }
  }
  
  \midi {
    \set Staff.midiInstrument = "flute" 
    %\context { \Voice \remove "Dynamic_performer" }
  }
}
}

