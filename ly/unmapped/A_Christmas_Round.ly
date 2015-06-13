\version "2.14.2"

songTitle = "A Christmas Round"
songPoet = \markup \null
tuneComposer = "Denis Mason"
tuneSource = \markup { "from" \italic "cpdl.org"}

global = {
    \key d \major
    \time 6/8
    \autoBeamOff
    \tempo 4 = 100
}

sopMusic = \relative c'' {
  \mark "I."
  a8. b16 a8~ a fis g |
  a[ d] b a4. |
  
  \mark "II."
  d,8 d e fis a g |
  fis d e fis4. | 
  
  \mark "III."
  d'4 cis16 b a4 e8 |
  fis4 g8 a8 a4 |
  
  \mark "IV."
  fis8.[ g16] a8 fis4 e8 |
  d4. d \bar "|."
}

altoWords = \lyricmode {
  Ho -- di -- e __ Chris -- tus na -- tus est,
  ho -- di -- e sal -- va -- tor ap -- pa -- ru -- it.
  Glo -- ri -- a in ex -- cel -- sis De -- o,
  in __ ex -- cel -- sis De -- o.
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
                >>
                \new Lyrics = "altos"   \lyricsto "sopranos" \altoWords 
            >>
        >>
        \layout { } 
        \midi {
            \set Staff.midiInstrument = "flute" 
            %\context { \Voice \remove "Dynamic_performer" }
        }
    }
}

