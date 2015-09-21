\version "2.14.2"

\header {
  title = "Hymn for Christmas Day"
  poet = "Edward Caswall (1814–1878)"
  composer = "Sir John Goss (1800–1880)"
  %source = \markup { "from" \italic {Christmas Carols, New and Old}}
}

global = {
    \key g \major
    \time 4/4
    \autoBeamOff
    \tempo 4 = 100
}

sopMusic = \relative c' {
  s1*8
  
  d'4. d8 c4 b |
  a g fis2 |
  d'4. d8 c4 b |
  a g fis2 |
  
  g4. a8 g4 fis |
  e4. d8 d2 |
  d'4. b8 g4 c |
  b a g2 \bar "|."
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  \oneVoice
  g'4. a8 g4 fis |
  e4. d8 d2 |
  g4 a c b |
  b4. a8 a2 |
  
  g4. a8 g4 fis |
  e4. d8 d2 |
  g4 a b c |
  a4. g8 g2 \bar "||" 

  \voiceTwo
  
  g4. g8 g4 g |
  d d d2 |
  d4. g8 g4 g |
  e d d2 |
  
  b4. b8 cis4 d |
  d4 cis d2 |
  d4. d8 e4 g |
  fis fis g2 \bar "|."
}
altoWords = {
  
  \lyricmode {
    \set stanza = #"1. "
    See a -- mid the win -- ter’s snow,
    Born for us on earth be -- low,
    See the ten -- der Lamb ap -- pears,
    Prom -- ised from e -- ter -- nal years.
  }
  
  \set stanza = \markup\dynamic"ff "
  \lyricmode{
    
    Hail! Thou ev -- er bless -- ed morn!
    Hail, Re -- demp -- tion’s hap -- py dawn!
    
    \set associatedVoice = "basses"
    Sing through all Je -- ru --
    \unset associatedVoice sa -- lem,
    Christ is born in Beth -- le -- hem.
  }
}
altoWordsII = \lyricmode {
  
%\markup\italic
  \set stanza = #"2. "
  Lo, with -- in a man -- ger lies
  He who built the star -- ry skies;
  He, who throned in height sub -- lime,
  Sits a -- mid the Cher -- u -- bim!
}
altoWordsIII = \lyricmode {
  
  \set stanza = #"3. "
  Say, ye ho -- ly Shep -- herds, say,
  What your joy -- ful news to -- day;
  Where -- fore have ye left your sheep
  On the lone -- ly moun -- tain steep?
}
altoWordsIV = \lyricmode {
  
  \set stanza = #"4. "
  “As we watched at dead of night,
  Lo, we saw a won -- drous light;
  An -- gels sing -- ing peace on earth,
  Told us of the Sav -- ior’s  Birth.”
}
altoWordsV = \lyricmode {
  
  \set stanza = #"5. "
  Sa -- cred In -- fant, all Di -- vine,
  What a ten -- der love was Thine;
  Thus to come from high -- est bliss
  Down to such a world as this!
}
altoWordsVI = \lyricmode {
  
  \set stanza = #"6. "
  Teach, O teach us, Ho -- ly Child,
  By Thy Face so meek and mild,
  Teach us to re -- sem -- ble Thee,
  In Thy sweet hu -- mil -- i -- ty!
}
tenorMusic = \relative c' {
  s1*8
  
  b4. b8 e4 d |
  c b a2 |
  g4. g8 e'4 d |
  c b a2 |
  
  g4. g8 e4 d |
  b' a8[ g] fis2 |
  g4. g8 g4 e' |
  d c b2 \bar "|."
}
tenorWords = \lyricmode {

}

bassMusic = \relative c {
  s1*8 
  
  g'4. g8 g4 g |
  fis g d2 |
  b4. b8 c4 g |
  a b8[ c] d2 |
  
  e4. e8 a,4 b |
  g a d( c) |
  b4. b8 c4 a |
  d d g,2 \bar "|."
}
bassWords = \lyricmode {

}

pianoRH = \relative c' {
  << \new Voice {
        \voiceOne
        \global 
        g'4.( a8 g4 
        fis | e2 d) |
        g4( a c b |
        <b g>2 <a fis>) |
        
        g4.( a8 g4 fis |
        e2 d) |
        g4( a b c a2 g) \bar "||"
     }
     \new Voice {
        \voiceTwo
        \global
        b,2 c4 d |
        g, a b c |
        d2 <g~ e>4 <g d> |
        d4 cis d2~ |
        
        d4 b c d |
        g, a b a |
        b c d e |
        c2 b \bar "||"
     }
  >>
}
pianoLH = \relative c' {
  << \new Voice {
        \voiceOne
        \global
        g2~^\p g4 d |
        e fis g a |
        b s2. |
        d,2~ d4 c |
        
        g'2~ g4 d |
        e fis g a |
        g2~ g~ |
        g4 fis g2 \bar "||"
     }
     \new Voice {
        \voiceTwo
        \global
        g,2 a4 b |
        c2 g |
        g'4 fis e g |
        s1 |
        
        b,4 g a b |
        c2 g'4 fis |
        e2 d4 c |
        d2 g, \bar "||"
     }
  >>
}

\bookpart {
\score {
  <<
   \new ChoirStaff <<
    \new Staff = women <<
      \new Voice = "sopranos" { \voiceOne << \global \sopMusic >> }
      \new Voice = "altos" { \voiceTwo << \global \altoMusic >> }
    >>
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \sopWords
     \new Lyrics = "altosVI"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsVI
    \new Lyrics = "altosV"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsV
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWords
    \new Lyrics \with { alignAboveContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "tenors" \tenorWords
    \new Lyrics \with { alignBelowContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "basses" \bassWords
  >>
    \new PianoStaff << \new Staff { \new Voice { 
    \set Staff.midiInstrument = "acoustic grand" \pianoRH } } \new Staff { \clef "bass" 
    \set Staff.midiInstrument = "acoustic grand" \pianoLH } >>
  >>
  \layout {
    \context {
      % Remove all empty staves
      \Staff \RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##t
    }
  }

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

