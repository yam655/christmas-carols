﻿\version "2.14.2"


songTitle = "Jingle Bells"
songSubtitle = "(The One Horse Open Sleigh)"
songPoet = "James Lord Pierpont (1822–1893)"
tuneComposer = "James Lord Pierpont (1822–1893)"
tuneSource = \markup { \italic{The One Horse Open Sleigh}, 1857}

global = {
    \key aes \major
    \time 2/4
    \autoBeamOff
    \tempo "Allegro" 4 = 105
}

sopMusic = \relative c' {
  \slurDotted
  \oneVoice
  s2*7 | 
  
  r4 r8 \parenthesize ees8 |
  ees c' bes aes |
  ees4 r8 ees16( ees16) |
  ees8 c' bes aes|
  f4. f8 |
  f des' c bes |
  
  g4. g8 |
  g f' ees des |
  c4. \parenthesize ees,8 |
  ees c' bes aes |
  ees4. ees8 |
  ees c' bes aes |
  
  f4. f8 |
  f des' c bes |
  g ees' d ees |
  f ees des bes |
  aes2 \bar "||" 
  
  \voiceOne
  \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
  %\mark\markup\smallCaps"chorus"
  c8 c c4 |
  ees8 ees ees4 |
  c8 c f8. f16 |
  e2 |
  f8 des aes f' |
  
  ees8 c aes aes16 bes |
  c8 bes aes bes |
  c2 |
  c8 c c4 |
  ees8 ees ees4 |
  
  c8 c f f |
  e2 |
  f,8 des' c bes |
  aes ees' d ees16 ees |
  f8 ees des bes aes4 b\rest \bar"||"
}

altoMusic = \relative c' {
  s2*24 |
  
  %page2
  ees8 ees ees4 |
  ees8 ees ees4 |
  aes8 aes aes aes |
  g2 |
  f8 f f f |
  
  aes8 aes aes ees16 ees |
  ees8 ees ees ees |
  ees2 |
  aes8 aes aes4 |
  bes8 bes bes4 |
  
  %page3
  aes8 aes aes aes |
  g2 |
  f8 f f f |
  ees aes aes aes16 aes |
  g8 g g g |
  aes4 s \bar"||"
}
altoWords = \lyricmode {
  \set stanza = #"1. "
  \set ignoreMelismata = ##t
  \skip1 Dash -- ing thro’ the snow
    In a one -- horse o -- pen sleigh, \skip1
  O’er the fields we go,
    \skip1 Laugh -- ing all the way;
  \skip1 Bells on bob  tail ring, \skip1
    Mak -- ing spi -- rits bright;
  \skip1 O what sport to ride and sing
    A sleigh -- ing song to -- night.
}

altoChorusWords = \lyricmode { 
    \set stanza = #"Ch. "
  Jin -- gle bells,
    Jin -- gle bells,
    Jin -- gle all the way;
  Oh! what joy it is to ride
    In a one -- horse o -- pen sleigh.
    
  Jin -- gle bells,
    Jin -- gle bells,
    Jin -- gle all the way;
  Oh! what joy it is to ride
    In a one -- horse o -- pen sleigh.
}

altoWordsII = \lyricmode {
  \set stanza = #"2. "
  \set ignoreMelismata = ##t
  A day or two a -- go I __ _ thought I’d take a ride,
  And soon Miss Fan -- nie Bright Was seat -- ed by my side;
  The horse was lean and lank,
  Mis -- for -- tune seem’d his lot.
  He got in -- to a drift -- ed bank, And we, we got up -- sot.
}
altoWordsIII = \lyricmode {
  \set stanza = #"3."

}
altoWordsIV = \lyricmode {
  \set stanza = #"4."
  \set ignoreMelismata = ##t
  \skip1 Now the ground is white, \skip1\skip1
  Go it while you’re young, \skip1
  Take the girls to -- night, And sing this sleigh -- ing song;
  Just get a bob -- tailed bay,
  Two -- for -- ty as his speed,
  \skip1 Hitch him to an o -- pen sleigh
  And crack, you’ll take the lead.
}
altoWordsV = \lyricmode {
}
altoWordsVI = \lyricmode {
}
tenorMusic = \relative c' {
  \autoBeamOff
  \slurDotted
  s2*24 |
  
  %page2
  aes8 aes aes4 |
  bes8 bes bes4 |
  c8 c c c |
  c2 |
  aes8 aes aes aes |
  
  c8 c c c16 c |
  des8 des des des |
  c2 |
  ees8 ees ees4 |
  ees8 ees ees4 |
  
  %page3
  c8 c c c |
  c2 |
  aes8 aes des des |
  c c c c16 c |
  des8 des des des |
  c4 s \bar "||"
}

bassMusic = \relative c' {
\autoBeamOff
\slurDotted
  s2*24 |
  
  %page2
  aes8 aes aes4 |
  g8 g g4 |
  f8 f f f |
  c2 |
  des8 des des des |
  
  ees8 ees ees ees16 ees |
  ees8 ees ees ees |
  aes,2 |
  aes'8 aes aes4 |
  g8 g g4 |
  
  %page3
  f8 f f f |
  c2 |
  des8 des des des |
  ees ees ees ees16 ees |
  ees8 ees ees ees |
  aes,4 d4\rest \bar"||"
}

pianoRH = \relative c' {
  <c ees>8[ c' bes aes] |
  <ees c~>2 |
  q8[ c' bes aes] |
  <f des~>2 |
  q8[ des' c bes] |
  g[ ees' d ees] |
  g16[ f ees des] c[ bes aes g] |
  
  aes4 r |
  <ees c>8[ c' bes aes] |
  <ees c~>2 |
  q8[ c' bes aes] |
  <f des~>2 |
  q8[ des' c bes] |
  
  <g ees>2 |
  r8 <bes g ees>8[ q q] |
  r8 <aes ees c>[ q q] |
  <ees c>8[ c' bes aes] |
  <ees c~>2 |
  q8[ c' bes aes] |
  
  <f des~>2 |
  q8[ des' c bes] |
  r8 <g ees bes> r q |
  r <g ees des bes> r q |
  <aes ees c>2 |
  
  %page2
  <aes' c>16[ ees' q ees] q[ ees q ees] |
  <bes ees,>[ ees q ees] q[ ees q ees] |
  <aes, f>[ c q c] q[ c q c] |
  <g e>[ c g e] c[ e g c] |
  r f[ des f] aes,[ f' f, f'] |
  
  r ees[ c ees] aes,[ ees' ees, ees'] |
  r ees[ ees, ees'] f,[ ees' g, ees'] |
  aes,[ ees' c ees] aes4 |
  \ottava #1
  r16 ees[ <c' ees> ees,] q[ ees q ees] |
  r ees[ <bes' ees> ees,] q[ ees q ees] |
  
  %page3
  r c[ <aes' c> c,] q[ c q c] |
  e[ c' g e] \ottava #0 c[ g e g] |
  r f[ f' f,] ees'[ f, des' f,] |
  c'[ aes ees' aes,] d[ aes ees' aes,] |
  f'[ g, ees' g,] des'[ g, bes g] |
  aes8 r <aes c ees aes>4 \bar"||"
  
  \ottava #1
  ees'16[ c c' c,] bes'[ c, aes' c,] |
  ees[ c ees c] ees[ c ees c] |
  ees[ c c' c,] bes'[ c, aes' c,] |
  f[ des f des] f[ des f des] |
  f[ des des' des,] c'[ des, bes' des,] |
  aes'[ c, ees c] d[ c ees c] |
  g'[ f ees des] c[ bes aes g] |
  aes8 \ottava #0 r <aes, ees c>4 \bar "|."
}

pianoLH = \relative c {
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  << {aes8[ aes' ees aes]
      aes,8[ aes' ees aes]
      aes,8[ aes' ees aes]
      des,[ aes' f aes]
      des,[ bes' f bes]
      ees,[ bes' g bes] |
      ees,[ ees' g, des'] } \\
     {aes,2 | aes | aes | des | des | ees | ees } >> |
     
  <aes c>4 r |
  << {aes,8[ aes' ees aes] |
      aes,8[ aes' ees aes] |
      aes,8[ aes' ees aes] |
      des,[ aes' f aes] |
      des,[ bes' f bes] |
     
      ees,[ bes' g bes] | } \\
     {aes,2 | aes | aes | des | des
     
      ees | } >>
  ees4 r |
  aes, r |
  << {aes8[ aes' ees aes]
      aes,8[ aes' ees aes]
      aes,8[ aes' ees aes]
      
      des,[ aes' f aes]
      des,[ bes' f bes]} \\
     {aes,2 | aes | aes |
     
      des | des } >> |
  ees8 r ees8 r |
  ees r ees r |
  <aes aes,>2 |
  
  %page2
  q8[ <aes c ees> q] r |
  <g g,>[ <g bes ees> q] r |
  <f f,>[ <f aes c> q] r |
  <c c,>[ <c e g c> q] r |
  <des des,>[ <f aes des> q] r |
  
  <ees ees,>[ <ees aes c> q] r |
  <ees ees,>[ <ees bes' des> q q] |
  aes,[ <ees' aes c>] q4 |
  aes,8[ <aes' c ees> q] r |
  g,[ <g' bes ees> q] r |
  
  %page3
  f,8 <f' aes c>[ q] r |
  c,8 <c' e g c>[ q] r |
  <des des,>8[ <f aes des> q] r |
  <ees ees,>[ <ees aes c> q] r |
  <ees ees,>[ <ees g bes des> q] r |
  <aes aes,>[ <ees aes c>] <aes, aes,>4 \bar"||"
  
  aes'8[ <c ees> q q] |
  aes[ q q q] |
  aes[ q q q] |
  des,[ <f aes des> q q] |
  des[ q q q ] |
  ees[ <aes c> q q] |
  ees[ <bes' des> q q] |
  <aes c> r <aes, aes,>4 \bar"|."
}

\bookpart {
    \header {
        title = \songTitle
        subtitle = \songSubtitle
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
                \new Lyrics = "altos"  {
                    \lyricsto "sopranos" \altoWords
                    \lyricsto "altos" \altoChorusWords
                }
                \new Lyrics = "altosII"   \lyricsto "sopranos" \altoWordsII
                \new Lyrics = "altosIII"   \lyricsto "sopranos" \altoWordsIII
                \new Lyrics = "altosIV"   \lyricsto "sopranos" \altoWordsIV
                \new Staff = men <<
                    \clef bass
                    \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
                    \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
                >>
            >>
            \new PianoStaff <<
                \new Staff {
                    \set Staff.midiInstrument = "acoustic grand"
                    \global
                    \new Voice { \pianoRH }
                }
                \new Staff {
                    \set Staff.midiInstrument = "acoustic grand"
                    \global
                    \clef "bass"
                    \pianoLH
                }
            >>
        >>
        \layout { }
        \midi {
            \set Staff.midiInstrument = "flute" 
            %\context { \Voice \remove "Dynamic_performer" }
        }
    }
}


