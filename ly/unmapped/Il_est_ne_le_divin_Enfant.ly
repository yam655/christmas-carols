\version "2.14.2"

\header {
  title = "Il est né le divin Enfant"
  poet = "Anonymous"
  composer = "17th century French melody"
  arranger = "Arranged by Bernard Dewagtere"
  %source = \markup { "from" \italic {www.free-scores.com}}
}

global = {
    \key a \major
    \time 4/4
    \autoBeamOff
    %\set Score.voltaSpannerDuration = #(ly:make-moment 4 4)
    \tempo 4 = 125
}

sopMusic = \relative c' {
  \repeat volta 4 {
    e4 a a cis8 a |
    e4 a a2 |
    a4 a8 b cis4 d8 cis |
    b4 a b b |
    e, a a cis8 a |
    e4 a a2 |
    
    a4 b cis d8 cis |
    b4 e a,2 |
  }
  \alternative {
    {
      cis4 d e d8 cis |
      d4 fis e2 |
      cis4 d e fis8 e |
      d4 cis cis b |
      
      cis d e d8 cis |
      d4 fis e2 |
      cis4 d e fis8 e |
      d4 cis b2 |
    }
    {
      a4 b cis d8 cis |
      b2 e |
      a1\fermata \bar "|."
    }
  }
}
  

altoMusic = \relative c' {
  \repeat volta 4 {
    a4 fis' e e8 e |
    a,4 fis' e2 |
    e4 a8 gis a[ gis] fis e |
    d4 dis e e |
    a, fis' e e8 e |
    a,4 fis' e2 |
    
    e4 fis8[ gis] a4 fis8 e |
    d[ fis] e[ d] cis2 |
  }
  \alternative {
    {
      a'4 b cis b8 a |
      b4 d cis2 |
      a4 a a8[ cis] a a |
      a4 fis8[ a] a4 gis |
      
      a b cis b8 a |
      b4 d cis2 |
      a4 a a a8 a |
      a4 e8[ fis] gis2 |
    }
    {
      cis,4 gis' e e8 a |
      a2. gis4 |
      <e a>1\fermata \bar "|."
    }
  }
}
altoWords = \lyricmode {
  Il est né le di -- vin En -- fant,
  Jou -- ez haut -- bois, ré -- son -- nez mu -- set -- tes!
  Il est né le di -- vin En -- fant.
  Chan -- tons tous son a -- vè -- ne -- ment.
  
  
  \set stanza = #"1. "
  De -- puis plus de qua -- tre mille ans,
  Nous le pro -- met -- taient les pro -- phè -- tes,
  De -- puis plus de qua -- tre mille ans,
  Nous at -- ten -- dions cet heu -- reux temps.

}
altoWordsII = \lyricmode {
  
  \repeat unfold 34 ""
  \set stanza = #"2. "
  Une é -- tabl’ est son lo -- ge -- ment,
  Un peu de paille est sa cou -- chet -- te,
  Une é -- tabl’ est son lo -- ge -- ment,
  pour un Dieu, quel -- "(e)" dé -- nue -- ment!
  
  
  Chan -- tons tous son a -- vè -- ne -- ment.
}
altoWordsIII = \lyricmode {
  
  \repeat unfold 34 ""
  \set stanza = #"3. "
  O Jé -- sus, ô roi tout puis -- sant,
  Tout pe -- tit en -- fant que vous ê -- tes,
  O Jé -- sus, ô roi tout puis -- sant,
  Ré -- gnez sur nous en -- tiè -- re -- ment.
}
altoWordsIV = \lyricmode {
}

  

bassMusic = \relative c {
  \repeat volta 4 {
    cis4 d cis a8 cis |
    cis4 d8[ b] cis2 |
    d1\rest |
    d\rest |
    cis4 d cis a8 cis |
    cis4 d8[ b] cis2 |
    
    d1\rest |
    d\rest |
  }
  \alternative {
    {
      d\rest |
      d\rest |
      a'4 b cis8[ a] d cis |
      b4 a e' e |
      
      d,1\rest |
      d\rest |
      a'4 b cis d8 cis |
      b4 a e2 |
    }
    {
      fis4 e a b8 cis |
      d2 e |
      a,1\fermata \bar "|."
    }
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
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWords
   \new Staff = men <<
      \clef bass
      \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
    >>
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
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWords
   \new Staff = men <<
      \clef bass
      \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
    >>
  >>
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

