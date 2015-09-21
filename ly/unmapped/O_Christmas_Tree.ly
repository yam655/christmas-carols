\version "2.14.2"

songTitle = "O Christmas Tree"
songPoet = "Traditional"
tuneComposer = "German Folk Song"
tuneSource = \markup \null

global = {
  \key g \major
  \time 3/4
  \tempo "Moderately" 4 = 105
}

sopMusic = \relative c' {
    \partial 8
    \repeat volta 2 {
        d8_\mp |
        g8.\noBeam g16 g4 a |
        b8.\noBeam b16 b4. b8 |
        a8\noBeam b c4 fis, | 
        a g b8\rest 
    }

  d8_\mf |
  d\noBeam b e4. d8 |
  d\noBeam c c4. c8 | 
  
  c8\noBeam a d4. c8 |
  c\noBeam b b4 d, |
  g8.\noBeam_\mp g16 g4 a | 
  
  b8.\noBeam b16 b4. b8 |
  a\noBeam b c4 fis, |
  a4 g b8\rest \bar "|."
}

altoMusic = \relative c' {
  d8 |
  d8.\noBeam d16 d4 fis |
  g8.\noBeam g16 g4. g8 |
  fis8\noBeam g fis4 d |
  
  d d s8 
  g8 |
  g\noBeam g g4. g8 |
  fis8\noBeam fis fis4. fis8 |
  
  fis\noBeam fis fis4. fis8 |
  g\noBeam g g4 d |
  d8.\noBeam d16 d4 fis |
  
  g8.\noBeam g16 g4. g8 |
  e\noBeam g g4 fis |
  fis g s8 \bar "|."
}
altoWords = \lyricmode {
  
  \set stanza = #"1. "
  O Christ -- mas Tree! O Christ -- mas Tree!
  Thy leaves are so un -- chan -- ging;
  Not on -- ly green when sum -- mer’s here,
  But al -- so when ’tis cold and drear.
  O Christ -- mas Tree! O Christ -- mas Tree!
  Thy leaves are so un -- chan -- ging.
}
altoWordsII = \lyricmode {
  
  \set stanza = #"2. "
  O Christ -- mas Tree! O Christ -- mas Tree!
  Much plea -- sure thou canst give me;
  How oft -- en has the Christ -- mas tree
  Af -- ford -- ed me the great -- est glee!
  O Christ -- mas Tree! O Christ -- mas Tree!
  Much plea -- sure thou canst give me.
}
altoWordsIII = \lyricmode {
  
  \set stanza = #"3. "
  O Christ -- mas Tree! O Christ -- mas Tree!
  Thy can -- dles shine so bright -- ly!
  From base to sum -- mit gay and bright,
  There’s on -- ly splen -- dor for the sight.
  O Christ -- mas Tree! O Christ -- mas Tree!
  Thy can -- dles shine so bright -- ly.
}
altoWordsIV = \lyricmode {
  
  \set stanza = #"4. "
  O Christ -- mas Tree! O Christ -- mas Tree!
  How rich -- ly God has decked thee!
  Thou bidst us true and faith -- ful be,
  And trust in God un -- chan -- ging -- ly.
  O Christ -- mas Tree! O Christ -- mas Tree!
  How rich -- ly God has decked thee.
}
altoWordsV = \lyricmode {
}

tenorMusic = \relative c' {
  d8^\mp |
  b8.\noBeam b16 b4 d |
  d8.\noBeam d16 d4. d8 |
  d\noBeam d d4 a |
  
  c b s8 
  b8^\mf |
  b\noBeam d c4. b8 |
  b\noBeam a a4. a8 |
  
  a\noBeam a a4. d8 |
  d\noBeam d d4 b |
  b8.\noBeam^\mp b16 b4 d |
  
  d8.\noBeam d16 d4. d8 |
  c\noBeam d e4 c |
  c b s8 \bar "|."
}
tenorWords = \lyricmode {

}

bassMusic = \relative c {
  d8 |
  g8.\noBeam g16 g4 d |
  g8. g16 g4. g8 |
  c8\noBeam b8\noBeam a4 d, |
  
  d g d8\rest 
  g |
  g\noBeam g g4. g8 |
  d\noBeam d d4. d8 |
  
  d\noBeam d d4. d8 |
  g\noBeam g g4 g |
  g8.\noBeam g16 g4 d |
  
  g8.\noBeam g16 g4. g8 |
  c,\noBeam b a4 d |
  d g d8\rest \bar "|."
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
    \new Lyrics = "altosV"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsV
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((padding . -0.5))} \lyricsto "sopranos" \altoWords
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "tenors" \tenorWords
  >>
  >>
  \layout { }
  \midi {
    \set Staff.midiInstrument = "flute" 
    %\context { \Voice \remove "Dynamic_performer" }
  }
}
}

