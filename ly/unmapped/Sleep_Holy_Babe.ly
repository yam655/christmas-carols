\version "2.14.2"

\header {
    title = "Sleep, Holy Babe!"
    poet = "Edward Caswall (1814–1878)"
    composer = "John Bacchus Dykes (1823–1876)"
    %source = \markup { "from" \italic {Christmas Carols, New and Old}}
}

global = {
    \key ees \major
    \time 4/2
    \tempo 4 = 150
}

sopMusicIntro = \relative c' { 
%Introduction
  ees4_\p g bes c~c2 f, |
  d4 f aes bes bes2 ees, |
  bes'2\rest bes4\rest <aes d,>~ q <g ees> f <ees ces> |
  <ees bes g> bes'\rest bes2\rest bes1\rest |
  ees,2-> d2 bes'1\rest 
}

sopMusic = \relative c' {
  ees,1^\pp ees2. aes4 |
  g1.^\markup\italic"cresc." ees'2 |
  ees d4( c) bes2. aes4 |
  g1. 
  
  g2^\mf |
  g2. g4 a2 b |
  d2. g,4 g2 g |
  g ees' ees d4( c) |
  c2. bes4 bes2 
  
  bes2 |
  bes2.^\markup\italic"dim." ees,4 ees2 ees |
  ees1. 
  d2^\pp |
  ees4( g) bes( c) bes2. d,4 |
  << { ees1( ees) }
     { s1. <ees d g,>2_\markup\smallCaps"Accomp." }
  >> |
  <ees c aes>1 <ees ces aes> |
  <ees bes g>1 bes'1\rest 
}
  

altoMusicIntro = \relative c' {
%Introduction
  \set Staff.midiInstrument = "acoustic grand"
  s1 ees |
  s1 des |
  s2. ces4~ ces bes c aes |
  s1*2 |
  aes1 s1 
}

altoMusic = \relative c' {
  \set Staff.midiInstrument = "flute"
  bes1 c2. ees4 |
  ees1 g |
  aes2 aes g f |
  f1. 
  
  f2 | f2. f4 f2 f |
  f2. f4 f2 f |
  ees2. g4 g2 f4( ees) |
  ees2. d4 d2 
  
  d2 |
  ees4( bes2) c4 des2 c4( bes) |
  c1( ees2) 
  d4( c) |
  bes2 ees ees4( d c) bes |
  bes4( ees d c bes1) |
}

altoWords = \lyricmode { 
  \set stanza = #"1. "
  Sleep, Ho -- ly Babe!
  up --
  \set associatedVoice = "tenors"
  on Thy moth -- er’s breast;
  
  \set associatedVoice = "sopranos"
  Great Lord of earth, and sea, and sky, How sweet it is to see Thee lie
  In such a place of rest,
  In such a place of rest. __ 
}

altoWordsII = \lyricmode { 
  \set stanza = #"2. "
  Sleep, Ho -- ly Babe!
  Thine 
  \set associatedVoice = "tenors"
  An -- gels watch a -- round,
  
  \set associatedVoice = "sopranos"
  All bend -- ing low with fold -- ed wings, Be -- fore th’In -- car -- nate King of kings,
  In rev -- ’rent awe pro -- found,
  In rev -- ’rent awe pro -- found. __
}

altoWordsIII = \lyricmode { 
  \set stanza = #"3. "
  Sleep, Ho -- ly Babe!
  while 
  \set associatedVoice = "tenors"
  I with Ma -- ry gaze,
  
  \set associatedVoice = "sopranos"
  In joy up -- on that Face a -- while, Up -- on the lov -- ing in -- fant smile
  Which there di -- vine -- ly plays,
  Which there di -- vine -- ly plays. __
}

altoWordsIV = \lyricmode { 
  \set stanza = #"4. "
  Sleep, Ho -- ly Babe!
  ah! 
  \set associatedVoice = "tenors"
  take Thy brief re -- pose;
  
  \set associatedVoice = "sopranos"
  Too quick -- ly will Thy slum -- bers break,
  And Thou to length -- en’d pains a -- wake,
  That death a -- lone shall close,
  That death a -- lone shall close. __
}

tenorMusicIntro = \relative c' {
%Introduction
  \set Staff.midiInstrument = "acoustic grand"
  s1 a |
  s1 g |
  s1*2 |
  ees4 g bes c~ c2 bes~ |
  bes1 bes 
}

tenorMusic = \relative c' {
  \set Staff.midiInstrument = "flute"
  g1_\pp aes2. c4 |
  bes1._\markup\italic"cresc." b2 |
  c2 d4( ees) ees2 d |
  d1. 
  
  d2_\mf |
  b2. b4 c2 d |
  b2. b4 c2 d |
  c4( d) c( bes) a( f) g( a) |
  a2. bes4 bes2 
  
  d4( c) |
  bes2._\markup\italic"dim." bes4 bes2 ees, |
  ees1. 
  f4(_\pp fis) |
  g2 g aes aes |
  << { g4( c bes aes g1) }
     { s1. ees,2 }
  >> |
  aes4 c ees f f2 ees2~ |
  ees1 s1 
}


bassMusicIntro = \relative c {
%Introduction
  \set Staff.midiInstrument = "acoustic grand"
  d1\rest f, |
  d'\rest ees, |
  aes4 c ees f~ f g aes aes, |
  bes bes\rest d2\rest d1\rest |
  bes1 d\rest 
}

bassMusic = \relative c {
  \set Staff.midiInstrument = "flute"
  ees1 ees2. ees4 |
  ees1 ees |
  aes,2 aes bes bes' |
  b1. 
  
  b!2 |
  g2. g4 g2 g, |
  g2. g4 a2 b |
  c c f2. f4 |
  f2. bes,4 bes2 
  
  aes2 |
  g2. g4 g2 g2 |
  aes1. 
  a2 |
  bes bes bes bes |
  ees1~ ees |
  c,1\rest aes' |
  ees d'\rest 
}


\bookpart {
\score {
    {
        \new PianoStaff <<
            \new Staff <<
                \set Staff.midiInstrument = "acoustic grand"
                \new Voice { \voiceOne \global \sopMusicIntro }
                \new Voice { \voiceTwo \global \altoMusicIntro }
            >>
            \new Staff <<
                \set Staff.midiInstrument = "acoustic grand"
                \clef bass
                \new Voice { \voiceOne \global \tenorMusicIntro }
                \new Voice {
                    \voiceTwo
                    \global
                    \bassMusicIntro
                    \break
                }
            >>
        >>
        \new ChoirStaff <<
            \new Staff = women <<
                \set Staff.midiInstrument = "flute"
                \new Voice = "sopranos" {
                    \voiceOne
                    \global
                    \repeat volta 4 {
                        \sopMusic
                    }
                }
                \new Voice = "altos" {
                    \voiceTwo
                    \global
                    \repeat volta 4 {
                        \altoMusic
                    }
                }
            >>
            \new Lyrics = "altos"   \lyricsto "altos" \altoWords
            \new Lyrics = "altosII"   \lyricsto "altos" \altoWordsII
            \new Lyrics = "altosIII"   \lyricsto "altos" \altoWordsIII
            \new Lyrics = "altosIV"   \lyricsto "altos" \altoWordsIV
            \new Staff = men <<
                \set Staff.midiInstrument = "flute"
                \clef bass
                \new Voice = "tenors" {
                    \voiceOne
                    \global
                    \repeat volta 4 {
                        \tenorMusic
                    }
                }
                \new Voice = "basses" {
                    \voiceTwo
                    \global
                    \repeat volta 4 {
                        \bassMusic
                    }
                }
            >>
        >>
    }

    \layout { }
    \midi {
    }
} 
}

