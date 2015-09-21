\version "2.14.2"

\header {
  title = "Ding Dong Merrily on High"
  poet = "George Ratcliffe Woodward (1848–1934)"
  composer = "16th century French melody"
  arranger = "Arranged by Charles Wood (1866–1926)" 
  %source = \markup { from  \italic {The Cambridge Carol Book}, 1924} 
}

global = {
    \key bes \major
    \time 4/4
    \autoBeamOff
    \tempo 4 = 165
}

sopMusic = \relative c'' {
  \repeat unfold 2 {
    bes4 bes c8 bes a g |
    f2. f4 |
    g bes bes a |
    bes2 bes
  } 
  \repeat unfold 2 {
    f'4.( ees8[ d ees f d] |
    ees4. d8[ c d ees c] |
    d4. c8[ bes c d bes] |
    c4. bes8[ a bes c a] |
    
    bes4. a8[ g a bes g] |
    a4.) g8 f4 f |
    g bes bes a |
    bes2 bes 2
  }
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  \repeat unfold 2 {
    f4 f g8 g ees ees |
    c2. f4 |
    f ees c f |
    f2 f |
  }
  \repeat unfold 2 {
    r4 f2( bes4 |
    bes8[ a g f] g[ f] ees4) |
    r4  f8([ ees] d4 g |
    g8[ f ees d] ees[ d] c4) |
    
    r4 d8([ c] bes4 ees |
    c8[ d ees]) d c4 f |
    f ees c f |
    f2 f
  }
}

altoWords = \lyricmode { 
  \set stanza = #"1. "
  Ding dong! mer -- ri -- ly on high in heav’n the bells are ring -- ing:
  Ding dong!  Ve -- ri -- ly the sky is riv’n with an -- gel sing -- ing.
  Glo -- ri -- a, ho -- san -- na in ex -- cel -- sis!
  Glo -- ri -- a, ho -- san -- na in ex -- cel -- sis!
}
altoWordsII = \lyricmode { 
  \set stanza = #"2. "
  E’en so here be -- low, be -- low, let stee -- ple bells be swung -- en.
  And i -- o, i -- o, i -- o by priest and peo -- ple sung -- en.
}

altoWordsIII = \lyricmode { 
  \set stanza = #"3. "
  Pray ye du -- ti -- ful -- ly prime your ma -- tin chime, ye ring -- ers;
  may ye beau -- ti -- ful -- ly rime your eve -- time song, ye sing -- ers.
}

tenorMusic = \relative c' {
  \repeat unfold 2 {
    d4 bes g8 g c bes |
    a2. bes4 |
    bes bes c c |
    d2 d |
  }
  \repeat volta 2 {
    d,4\rest c'( d bes |
    c bes2 c4) |
    d,4\rest a'( bes g |
    a g2 a4) |
    
    d,\rest f( g2 |
    c4) bes c d |
    bes bes c c |
    d2 d
  }
}

tenorWords = \lyricmode {
  \repeat unfold 28 { \skip 1}
  Glo -- _ _ ri -- a, ho -- san -- na in ex -- cel -- sis!
  Glo -- _ _ ri -- a, ho -- san -- na in ex -- cel -- sis!
}

bassMusic = \relative c {
  \repeat unfold 2 {
    bes4 d ees8 ees c c |
    f2. d4 |
    ees g f f |
    bes,2 bes |
  }
  \repeat unfold 2 {
    s4 a'4( bes d, |
    c d ees8[ d] c4) |
    s4 f( g bes, |
    a bes c8[ bes] a4) |
    
    s4 d( ees g |
    f) g a bes |
    ees, g f f |
    bes,2 bes
  }
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
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \altoWords
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"men"  } \lyricsto "tenors" \tenorWords
  >>
  >>
  \layout { }
  
}

\score {
  \unfoldRepeats

  <<
   \new ChoirStaff <<
    \new Staff = women <<
      \new Voice = "sopranos" { \voiceOne << \global \sopMusic >> }
      \new Voice = "altos" { \voiceTwo << \global \altoMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \sopWords
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \altoWords
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"men"  } \lyricsto "tenors" \tenorWords
  >>
%    \new PianoStaff << \new Staff { \new Voice { \pianoRH } } \new Staff { \clef "bass" \pianoLH } >>
  >>
  
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

