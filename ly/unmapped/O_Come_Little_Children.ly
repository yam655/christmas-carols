\version "2.14.2"

songTitle = "O Come, Little Children"
songPoet = \markup{\italic{Ihr Kinderlein kommet}, by Christoph von Schmid (1768–1854)}
tuneComposer = "Johann A. P. Schulz (1747–1800)"
tuneSource = \markup \null % {from \italic"HymnsAndCarolsOfChristmas.com"}

global = {
    \key ees \major
    \time 2/4
    \autoBeamOff
    \tempo 4 = 90
}

sopMusic = \relative c'' {
  \partial 8 bes8 |
  bes4 g8 bes8\noBeam |
  bes4 g8 bes\noBeam |
  aes4 f8\noBeam f |
  g4 bes8\rest  bes |
  
  bes4 g8 bes8\noBeam |
  bes4 g8 bes\noBeam |
  aes4 f8\noBeam f |
  g4 bes8\rest  g |
  
  f4 f8\noBeam f |
  aes4 aes8\noBeam aes |
  g4 g8\noBeam g |
  c4.  c8 |
  
  bes4 bes8\noBeam bes |
  ees4 bes8\noBeam g |
  aes4 f8\noBeam f |
  ees4 bes'8\rest \bar "|."
}
  

altoMusic = \relative c'' {
  g8 |
  g4 ees8\noBeam g |
  g4 ees8\noBeam des |
  c[ ees] ees\noBeam d |
  ees4 s8 g8 |
  
  g4 ees8\noBeam g |
  g4 ees8\noBeam des |
  c[ ees] ees\noBeam d |
  ees4 s8 ees |
  
  ees4 d8\noBeam d |
  c4 c8\noBeam d |
  ees4 ees8\noBeam ees |
  ees4. ees8 |
  
  f[ d] ees\noBeam f |
  ees4 ees8\noBeam ees |
  f[ ees] ees\noBeam d |
  bes4 s8 \bar "|."
}
altoWords = \lyricmode {
  
  \set stanza = #"1. "
  O come, lit -- tle chil -- dren, O come one and all,
  To Beth -- le -- hem haste, to the man -- ger so small,
  God’s Son for a gift has been sent you this night
  To be your Re -- deem -- er, your joy and de -- light.
}
altoWordsII = \lyricmode {
  
%\markup\italic
  \set stanza = #"2. "
  He’s born in a sta -- ble for you and for me,
  Draw near by the bright gleam -- ing Star light to see,
  In swad -- dling clothes ly -- ing so meek and so mild,
  And pur -- er than an -- gels the heav -- en -- ly Child.
}
altoWordsIII = \lyricmode {
  
  \set stanza = #"3. "
  See Ma -- ry and Jo -- seph with love beam -- ing eyes
  Are gaz -- ing up -- on the rude bed where He lies,
  The shep -- herds are kneel -- ing, with hearts full of love,
  While an -- gels sing loud al -- le -- lu -- ias a -- bove.
}
altoWordsIV = \lyricmode {
  
  \set stanza = #"4. "
  Kneel down and a -- dore Him with shep -- herds to -- day,
  Lift up lit -- tle hands now and praise Him as they;
  Re -- joice that a Sav -- ior from sin you can boast,
  And join in the song of the heav -- en -- ly host.
}

tenorMusic = \relative c' {
  bes8 |
  bes4 bes8\noBeam bes |
  bes[ ees] bes\noBeam g |
  aes4 bes8\noBeam bes |
  bes4 s8 bes8 |
  
  bes4 bes8\noBeam bes |
  bes[ ees] bes\noBeam g |
  aes4 bes8\noBeam bes |
  bes4 s8 bes8 |
  
  bes4 bes8\noBeam bes |
  aes4 c8\noBeam bes |
  bes4 c8\noBeam des |
  c4. c8 |
  
  d[ bes] c\noBeam d |
  bes[ aes] g\noBeam c |
  c[ aes] bes\noBeam aes |
  g4 s8 \bar "|."
}

bassMusic = \relative c {
  ees8 |
  ees4 ees8\noBeam ees |
  ees4 ees8\noBeam e |
  f4 bes,8\noBeam bes |
  ees4 d8\rest ees8 |
  
  ees4 ees8\noBeam ees |
  ees4 ees8\noBeam e |
  f4 bes,8\noBeam bes |
  ees4 d8\rest ees8 |
  
  bes4 bes8\noBeam bes |
  f'4 f8\noBeam bes, |
  ees4 c8\noBeam bes |
  aes4. aes'8 |
  
  aes4 aes8\noBeam aes |
  g[ f] ees\noBeam c |
  f4 bes,8 bes |
  ees4 d8\rest \bar "|."
}


\bookpart { 
\header {
  title = \songTitle 
  poet = \songPoet 
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
    \new Lyrics = "altos"   \lyricsto "sopranos" \altoWords
    \new Lyrics = "altosII"   \lyricsto "sopranos" \altoWordsII
    \new Lyrics = "altosIII"   \lyricsto "sopranos" \altoWordsIII
    \new Lyrics = "altosIV"   \lyricsto "sopranos" \altoWordsIV
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

