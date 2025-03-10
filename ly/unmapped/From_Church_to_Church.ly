﻿\version "2.14.2"

\header {
    title = "From Church to Church"
    poet = \markup{\italic {Congaudeat turba fidelium}, from an 11th Century Manuscript}
    translator = "Versified by John Mason Neale (1818–1866)"
    composer = "Old Melody in Hypo-Dorian Mode"
    arranger = "Arranged by G. H. Palmer"
    %source = \markup{ from \italic{The Cowley Carol Book}, 1919}
  }

global = {
    \key f \major
    \time 6/4
    \tempo 4 = 180
}

sopMusic = \relative c'' {
  \repeat volta 2 {
    \partial 4 g4 |
    g( a bes a g) f |
    g2.( d'2)  d4 |
    c( d) ees d( c) d |
    bes2.~ bes4 bes\rest  bes |
    
    d2 c4 d2 g,4 |
    g( a) c bes( a) f |
    a( bes) c bes( a) f |
    g2.~ g2\fermata  
  }
  
  
  \repeat volta 2 {
    g4 |
    g( a bes a g) f |
    \slurDotted
    g2.( d'2)  d4 |
    \slurSolid
    c( d) ees d( c) d |
    bes2.~ bes4 bes\rest  bes |
    
    d2 c4 d2 g,4 |
    g( a) c bes( a) f |
    a( bes) c bes( a) f |
    g2.~ g2\fermata  
  }
}
  

altoMusic = \relative c'' {
  g4 |
  e2( f4 f2) f4 |
  e2.( f2) f4 |
  f2 g4 f2 f4 |
  d2.~ d4 s4 bes' |
  
  f2 f4 f2 d4 |
  e2 f4 f2 f4 |
  f2 f4 f2 f4 |
  e2.( d2)
  
  
  g4 |
  e2( f4 f2) f4 |
  \slurDotted
  e2.( f2) f4 |
  \slurSolid
  f2 g4 f2 f4 |
  d2.~ d4 s4 bes' |
  
  f2 f4 f2 d4 |
  e2 f4 f2 f4 |
  f2 f4 f2 f4 |
  e2.( d2)
}
altoWords = \lyricmode {
  
  \set stanza = #"1. "
  From church __ to church the bells’ glad tid -- ings run: __
  A Vir -- gin hath con -- ceiv’d and borne a Son __ In Beth -- le -- hem. __
  
  
  \set stanza = #"5. "
  The Star __ went
  \set ignoreMelismata = ##t
  lead -- ing
  \unset ignoreMelismata
  from East un -- to __ the West: __
  The Wise Men fol -- lowed, till they saw it rest
  In Beth -- le -- hem. __
}
altoWordsII = \lyricmode {
  
%\markup\italic
  \set stanza = #"2. "
  And an -- gel hosts __ the mid -- night of __ His birth, __
  Sang Glo -- ry be to God and peace on earth, In Beth -- le -- hem. __
  
  
  \set stanza = #"6. "
  Their frank -- in -- cense, __ and myrrh, and gold they bring, __
  To hail the God, the Mor -- tal, and the King
  In Beth -- le -- hem. __
}
altoWordsIII = \lyricmode {
  
  \set stanza = #"3. "
  “Now go __ we forth, __ and see __ this won -- drous thing,”
  The shep -- herds said, “and seek the new __ born King” In Beth -- le -- hem. __
  
  
  \set stanza = #"7. "
  With three -- fold gifts __ the Three -- fold God then praise, __
  Who thus vouch -- safed the songs of man to raise
  In Beth -- le -- hem. __
}
altoWordsIV = \lyricmode {
  
  \set stanza = #"4. "
  Then Her -- od sought __ the Roy -- al Son to slay, __
  Who ra -- ther should have come to kneel and pray
  In Beth -- le -- hem. __
}
altoWordsV = \lyricmode {
}
altoWordsVI = \lyricmode {
}
altoWordsVII = \lyricmode {
}
tenorMusic = \relative c' {
  g4 |
  c2( d4 c2) a4 |
  c2.( d4 c4) bes |
  a2 bes4 a2 a4 |
  bes2.~ bes4 s4 bes |
  
  bes2 a4 a2 bes4 |
  c2 c4 f,2 a4 |
  d2 c4 d( c) a |
  c2.( b2\fermata)
  
  
  g4 |
  c2( d4 c2) a4 |
  \slurDotted
  c2.( \slurSolid d4)( c4) bes |
  a2 bes4 a2 a4 |
  bes2.~ bes4 s4 bes |
  
  bes2 a4 a2 bes4 |
  c2 c4 f,2 a4 |
  d2 c4 d( c) a |
  c2.( b2\fermata)
}
tenorWords = \lyricmode {

}

bassMusic = \relative c' {
  g4 |
  c,2( bes4 f'2) f4 |
  c2.( bes2) bes4 |
  f'2 ees4 f2 f4 |
  bes,2.( bes4) d4\rest bes'4 |
  
  bes2 f4 d2 g4 |
  c,2 a4 d2 d4 |
  d2 a4 bes( f') f |
  c2.( g2)
  
  
  
  g'4 |
  c,2( bes4 f'2) f4 |
  \slurDotted
  c2.( bes2) bes4 |
  \slurSolid
  f'2 ees4 f2 f4 |
  bes,2.( bes4) d4\rest bes'4 |
  
  bes2 f4 d2 g4 |
  c,2 a4 d2 d4 |
  d2 a4 bes( f') f |
  c2.( g2)
}


\bookpart {
\score {
  <<
   \new ChoirStaff <<
%    \new Lyrics = sopranos { s1 }
    \new Staff = women <<
      \new Voice = "sopranos" {
        \voiceOne
        << \global \sopMusic >>
      }
      \new Voice = "altos" {
        \voiceTwo
        << \global \altoMusic >>
      }
    >>
    \new Staff = men <<
      \clef bass
      \new Voice = "tenors" {
        \voiceOne
        << \global \tenorMusic >>
      }
      \new Voice = "basses" {
        \voiceTwo << \global \bassMusic >>
      }
    >>
    \new Lyrics = "altosVII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsVII
    \new Lyrics = "altosVI"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsVI
    \new Lyrics = "altosV"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsV
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((padding . -0.5))} \lyricsto "sopranos" \altoWords
    \context Lyrics = tenors \lyricsto tenors \tenorWords
   >>
  >>
  
  \layout { }
  \midi {
    \set Staff.midiInstrument = "flute"
  
    %\context { \Voice \remove "Dynamic_performer" }
  }
}
}
