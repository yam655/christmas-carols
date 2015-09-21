\version "2.14.2"

songTitle = "Carol of the Birds"
songPoet = "Traditional"
tuneComposer = "Bas-Quercey Carol"
tuneSource = \markup {from \italic{Carols Old and Carols New}, 1916} %, via \italic{HymnsAndCarolsOfChristmas.com}}

global = {
    \key bes \major
    \time 4/4
    \autoBeamOff
    \tempo "Not slow." 4 = 110
}

sopMusic = \relative c'' {
  g4 f8\noBeam g a4 a |
  \slurDotted bes bes8\noBeam( bes) a2 |
  
  g4 f8\noBeam g a4 g |
  f e d2 |
  
  g4 f8\noBeam g a4 a |
  bes bes a2 |
  
  d4 d8\noBeam c d4 c |
  bes a g2 \bar "|."
}
  

altoMusic = \relative c' {
  d4 d8\noBeam d f4 f |
  \slurDotted f f8\noBeam( f) f2 |
  
  d4 d8\noBeam d f4 d |
  d cis d2 |
  
  d4 d8\noBeam d f4 f |
  f f f2 |
  
  f4 f8\noBeam f f4 \slurSolid ees8[ g] |
  g4 fis d2 \bar "|."
}
altoWords = \lyricmode {
  
  \set stanza = #"1. "
  \set ignoreMelismata = ##t
  Whence comes this rush of wings a -- _ far,
  Fol -- low -- ing straight the No -- ël star?
  Birds from the woods in won -- drous flight,
  Beth -- le -- hem seek this _ Ho -- ly Night.
}
altoWordsII = \lyricmode {
  
%\markup\italic
  \set stanza = #"2. "
  \set ignoreMelismata = ##t
  “Tell us, ye birds, why come ye __ _ here,
  In -- to this sta -- ble, poor and drear?”
  “Hast -- ’ning we seek the new -- born King,
  And all our sweet -- est _ mu -- sic bring.”
}
altoWordsIII = \lyricmode {
  
  \set stanza = #"3. "
  Hark how the Green -- finch bears his __ part,
  Phi -- lo -- mel, too, with ten -- der heart,
  Chants from her leaf -- y dark re -- treat
  \markup\italic Re, \markup\italic mi, \markup\italic fa, \markup\italic sol, in ac -- cents sweet.
}
altoWordsIV = \lyricmode {
  
  \set stanza = #"4. "
  \set ignoreMelismata = ##t
  An -- gels and shep -- herds, birds of the sky,
  Come where the Son of God doth lie;
  Christ on the earth with man doth dwell,
  Join in the shout, “No -- _ ël, No -- ël!”
}
tenorMusic = \relative c' {
  bes4 a8\noBeam bes c4 c |
  \slurDotted d d8\noBeam( d) c2 |
  
  bes4 bes8\noBeam bes c4 bes |
  a \slurSolid a8[ g] f2 |
  
  \slurDotted bes4 a8\noBeam bes c4 c |
  d d c2 |
  
  bes4 bes8\noBeam a bes4 ees |
  d \slurSolid d8[ c] bes2 \bar "|."
}


bassMusic = \relative c' {
  g4 d8\noBeam g f4 f |
  \slurDotted bes bes8\noBeam( bes) f2 |
  
  g4 bes8\noBeam g f4 g |
  a a, d2 |
  
  g4 d8\noBeam g f4 f |
  bes bes f2 |
  
  bes4 bes8\noBeam f bes4 c |
  d d, g2 \bar "|."
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
    \new Lyrics = "altos"   \lyricsto "altos" \altoWords
    \new Lyrics = "altosII"   \lyricsto "altos" \altoWordsII
    \new Lyrics = "altosIII"  \lyricsto "altos" \altoWordsIII
    \new Lyrics = "altosIV"   \lyricsto "altos" \altoWordsIV
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

