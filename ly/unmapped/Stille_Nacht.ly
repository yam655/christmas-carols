\version "2.14.2"

\header {
  title = "Stille Nacht"
  poet = "Joseph Möhr (1792–1848)"
  composer = "Franz Gruber (1787–1863)"
  %source = \markup { from \concat{\italic "Christmas Carols and Hymns for School and Choir" ", 1910"}}
}

global = {
  \key bes \major
  \time 6/8
  \autoBeamOff
  \tempo \markup\italic"Tranquillo" 4 = 90
}

sopMusic = \relative c' {
  \slurDotted 
  f8.[ g16] f8 d4. |
  f8. g16 f8 d4. |
  c'8.[ b16] c8 a4. | 
  bes8.[ a16] bes8 f4. |
  
  g4 g8 bes8.( a16) g8 |
  f8.\noBeam g16\noBeam f8 d4 bes'8\rest | 
  g4 g8 bes8.( a16) g8 |
  f8.\noBeam( g16\noBeam) f8 d4 bes'8\rest |
  
  \slurSolid c4 c8\noBeam ees8.\noBeam c16\noBeam a8 | 
  bes4.( d4) bes8\rest |
  bes8[ f] d8 f8.\noBeam ees16\noBeam c8 |
  bes4.~bes4 bes'8\rest \bar "|."
}
  

altoMusic = \relative c' {
  \slurDotted 
  d8.[ ees16] d8 bes4. |
  d8. ees16 d8 bes4. |
  ees8.[ d16] ees8 c4. |
  d8.[ c16] d8 d4. |
  
  ees4 ees8 g8.( f16) ees8 |
  d8.\noBeam ees16\noBeam d8\noBeam bes4 s8 |
  ees4 ees8 g8.( f16) ees8 |
  d8.\noBeam( ees16\noBeam) d8 bes4 s8 |
  
  \slurSolid ees4 ees8 c8.\noBeam ees16\noBeam c8 |
  d4.( f4) s8 |
  d4 bes8 d8.\noBeam c16\noBeam a8 |
  bes4.~ bes4 s8 \bar "|."
}
altoWords = \lyricmode {
  
  \set stanza = #"1. "
  Stil -- le Nacht!
  hei -- li -- ge Nacht!
  Al -- les schläft;
  ein -- sam wacht.
  Nur das
  \set ignoreMelismata = ##t
  trau -- te hoch -- hei -- li -- ge Paar. 
  Hol -- der Kna -- be im lock -- i -- gen Haar,
  \unset ignoreMelismata
  Schlaf in himm -- li -- scher Ruh! __ 
  Schlaf in himm -- li -- scher Ruh! __
}
altoWordsII = {
  
  \set stanza = \markup\concat{\dynamic"p   " "2. "}
  \lyricmode {
    Stil -- le Nacht!
    hei -- li -- ge Nacht!
    Hir -- ten erst kund -- ge -- macht,
    Durch der En -- gel Hal -- le -- lu -- ja!
    Tönt es laut __ von fern __ und nah:
  }
  \set stanza = \markup\dynamic"mf  "
  \lyricmode {
    Christ, der Ret -- ter ist da! __
  }
  \set stanza = \markup\dynamic"pp      "
  \lyricmode {
    Christ, der Ret -- ter ist da! __
  }
}
altoWordsIII = \lyricmode {
  
  \set stanza = #"3. "
  Stil -- le Nacht!
  hei -- li -- ge Nacht!
  Got -- tes Sohn, o wie lacht
  Lieb’ aus dein -- em göt -- tlich -- en Mund,
  Da uns schlägt die
  \set ignoreMelismata = ##t
  ret -- ten -- de Stund’. 
  \unset ignoreMelismata
  Christ, in dein -- er Ge -- burt! __
  Christ, in dein -- er Ge -- burt! __
}

tenorMusic = \relative c' {
  \slurDotted 
  bes4 bes8 f4. |
  bes8. bes16 bes8 f4. |
  a4 a8 f4. |
  f4 f8 bes4. |
  
  bes4 bes8 g8.( a16) bes8 |
  bes8.\noBeam bes16\noBeam bes8 f4 s8 |
  bes4 bes8 g8.( a16) bes8 |
  bes8.\noBeam( bes16\noBeam) bes8 f4 s8 |
  
  a4 a8\noBeam a8.\noBeam a16\noBeam f8 |
  \slurSolid f4.( bes4) s8 |
  f4 f8\noBeam f8.\noBeam f16\noBeam ees8 |
  d4.~d4 s8 \bar "|."
}


bassMusic = \relative c {
  \slurDotted 
  bes4 bes8 bes4. |
  bes8. bes16 bes8 bes4. |
  f'4 f8 f4. |
  bes,4 bes8 bes4. |
  
  ees4 ees8 ees8.( ees16) ees8 |
  bes8.\noBeam bes16\noBeam bes8\noBeam bes4 d8\rest |
  ees4 ees8 ees8.( ees16) ees8 |
  bes8.\noBeam( bes16\noBeam) bes8 bes4 d8\rest |
  
  f4 f8\noBeam f8.\noBeam f16\noBeam f8 |
  bes,4.~ bes4 d8\rest |
  f,4 f8\noBeam f8.\noBeam f16\noBeam f8 |
  bes4.~ bes4 d8\rest \bar "|."
}


\bookpart {
\score {
  <<
   \new ChoirStaff <<
    \new Staff = women <<
      \new Voice = "sopranos" { \voiceOne << \global \sopMusic >> }
      \new Voice = "altos" { \voiceTwo << \global \altoMusic >> }
    >>
    \new Lyrics = "altos"   \lyricsto "sopranos" \altoWords
    \new Lyrics = "altosII"   \lyricsto "sopranos" \altoWordsII
    \new Lyrics = "altosIII"   \lyricsto "sopranos" \altoWordsIII
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
    >>
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

