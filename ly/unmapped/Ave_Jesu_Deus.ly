\version "2.14.2"

\include "filtermusic.ily"

songTitle = "Ave Jesu Deus"
songPoet = "Anonymous"
tuneTitle = "Ave Jesu Deus"
tuneComposer = "Sir John Stainer (1840–1901)"
tuneSource = \markup {from \italic {Christmas Carols, New and Old}}

global = {
    \key ees \major
    \time 2/4
    \tempo 4 = 113
}

sopMusicVerse = \relative c' {
  ees4 f |
  bes aes |
  g f |
  f ees \bar "||"
  f4. g8 |
  aes4 c |
  
  bes aes |
  aes g \bar "||"
  bes c |
  d4. d8 |
  d4 c |
  bes a \bar "||"
  ees'^\p d | 
  c bes |
  bes a |
  g g 
}

sopMusicChorus_ferm = \relative c'' {
  g4. ^\f f8 |
  ees4 ees |
  aes4. g8 |
  g4 f \bar "||"
  
  bes4 ^\cresc bes |
  g ees |
  c'4. bes8 |
  bes4( aes) \bar "||" 
  c4 c |
  b c |
  d g, |
  
  ees' ees ^\ff \bar "||"
  ees2 |
  g,4( f) |
  ees2^\fermata 
}

sopMusicChorus_noferm = \relative c'' {
  g4. ^\f f8 |
  ees4 ees |
  aes4. g8 |
  g4 f \bar "||"
  
  bes4 ^\cresc bes |
  g ees |
  c'4. bes8 |
  bes4( aes) \bar "||" 
  c4 c |
  b c |
  d g, |
  
  ees' ees ^\ff \bar "||"
  ees2 |
  g,4( f) |
  ees2 ~ | ees2
}

sopMusicAfter = \relative c' { 
  ees'2 ^\markup\italic{ "Last Verse"} |
  g4( f) |
  ees2
}

sopMusic = \relative c' {
    \repeat volta 2 {
        \sopMusicVerse
        \bar "||" 
        \break
        \sopMusicChorus_ferm
    }
    \sopMusicAfter 
    \bar "|." 
}
  
altoMusicVerse = \relative c' {
  bes4 d |
  ees ees |
  ees d |
  d ees \bar "||"
  c4. e8 |
  f4 ees | 
  d d |
  d ees \bar "||" 
  g g |
  g4. g8 |
  g4 a |
  g fis \bar "||" 
  fis! _\p g | 
  a g |
  g fis |
  g g 
}

altoMusicChorus_ferm = \relative c' { 
  ees4. _\f  d8 |
  c4 c |
  f4. ees8 |
  ees4 d \bar "||" 
  ees _\cresc ees |
  ees ees |
  ees e |
  f2 \bar "||"
  f4 f |
  f f |
  f f | 
  ees aes _\ff \bar "||"
  g2 |
  ees4( d) |
  ees2 _\fermata
}

altoMusicChorus_noferm = \relative c' { 
  ees4. _\f  d8 |
  c4 c |
  f4. ees8 |
  ees4 d \bar "||" 
  ees _\cresc ees |
  ees ees |
  ees e |
  f2 \bar "||"
  f4 f |
  f f |
  f f | 
  ees aes _\ff \bar "||"
  g2 |
  ees4( d) |
  ees2 ~ | ees2 
}

altoMusicAfter = \relative c'' { 
  g2 |
  bes4.( aes8) |
  g2
}

altoMusic = \relative c' {
    \repeat volta 2 {
        \altoMusicVerse
        \bar "||"
        \altoMusicChorus_ferm
    }
    \altoMusicAfter 
    \bar "|."
}

tenorMusicVerse = \relative c' {
  g4 aes |
  g aes |
  bes aes |
  aes g \bar "||"
  c4. bes8 |
  aes4 g |
  
  f bes |
  bes bes \bar "||"
  g a |
  bes4. bes8 |
  ees4 ees |
  d d \bar "||"
  c^\p d |
  
  ees4 ees |
  d4. c8 |
  bes4 bes
}

tenorMusicChorus_ferm = \relative c' { 
  bes4. ^\f bes8 |
  c4 c |
  c4. c8 |
  bes4 bes \bar "||"
  
  bes ^\cresc bes |
  c c |
  c c |
  c2 \bar "||"
  c4 c |
  d c |
  b b |
  
  c ees \ff \bar "||"
  ees2 |
  bes4( aes) |
  g2 ^\fermata
}

tenorMusicChorus_noferm = \relative c' { 
  bes4. ^\f bes8 |
  c4 c |
  c4. c8 |
  bes4 bes \bar "||"
  
  bes ^\cresc bes |
  c c |
  c c |
  c2 \bar "||"
  c4 c |
  d c |
  b b |
  
  c ees \ff \bar "||"
  ees2 |
  bes4( aes) |
  g2 ~ | g2
}

tenorMusicAfter = \relative c { 
  ees'2 |
  ees4( d) |
  ees2 
}

tenorMusic = \relative c' {
    \repeat volta 2 {
        \tenorMusicVerse
        \bar "||"
        \tenorMusicChorus_ferm
    }
    \tenorMusicAfter 
    \bar "|."
}

bassMusicVerse = \relative c {
  ees4 ees |
  ees c |
  bes bes |
  c c \bar "||"
  aes'4. g8 |
  f4 aes, |
  
  bes4 bes |
  ees ees \bar "||"
  ees ees |
  bes4. bes8 |
  c4 c |
  d d \bar "||"
  a _\p bes | 
  c c |
  d d |
  g g
}

bassMusicChorus_ferm = \relative c {
  ees4. _\f ees8 |
  aes4 aes |
  f f |
  bes aes \bar "||" 
  g \cresc g |
  c c |
  aes g |
  f2 \bar "||"
  aes4 aes |
  aes aes |
  g g | 
  c c \ff \bar "||"
  bes2 |
  bes, |
  ees_\fermata 
}

bassMusicChorus_noferm = \relative c {
  ees4. _\f ees8 |
  aes4 aes |
  f f |
  bes aes \bar "||" 
  g \cresc g |
  c c |
  aes g |
  f2 \bar "||"
  aes4 aes |
  aes aes |
  g g | 
  c c \ff \bar "||"
  bes2 |
  bes, |
  ees ~ | ees
}

bassMusicAfter = \relative c { 
  bes'2 |
  bes, |
  ees 
}

bassMusic = \relative c {
    \repeat volta 2 {
        \bassMusicVerse
        \bar "||"
        \bassMusicChorus_ferm
    }
    \bassMusicAfter 
    \bar "|."
}

songLyricsA = \lyricmode {
    \set stanza = #"1. "
    A -- ve Je -- su De -- us ma -- gne,
    A -- ve Pu -- er, mi -- tis a -- gne,
    A -- ve De -- us ho -- mo na -- te,
    In Præ -- se -- pi re -- cli -- na -- te!
}
  
songLyricsChorus = \lyricmode {
    \set stanza = #"Ch."
    O po -- tes -- tas, o e -- ges -- tas,
    O ma -- jes -- tas Do -- mi -- ni!
    O ma -- jes -- tas, quid non præ -- stas
    ho -- mi -- ni?
}

songLyricsAfter = \lyricmode {
    ho -- mi -- ni?
}

songLyricsB = \lyricmode {
  \set stanza = #"2. "
  Ut me pau -- pe -- rem di -- ta -- res,
  Ut me per -- di -- tum sal -- va -- res,
  Ja -- ces pan -- nis in -- vo -- lu -- tus,
  Om -- ni o -- pe des -- ti -- tu -- tus.
}

songLyricsC = { 
  \set stanza = \markup{\dynamic "mf  " "3. "}
  \lyricmode {
    In -- ter bru -- ta quam ab -- jec -- tus
    Va -- gis, Pa -- tris o di -- lec -- tus!
    Ju -- dex sum -- me, ve -- rus De -- us,
    Prop -- ter me fis ho -- mo re -- us!
  }
}

songWordsC = \markup \column{ 
    \line {"3. "
    Inter bruta quam abjectus}
    \line {Vagis, Patris o dilectus!}
    \line {Judex summe, verus Deus,}
    \line {Propter me fis homo reus!}
}

songLyricsD = \lyricmode { 
  \set stanza = #"4. "
  O mi Je -- su, cor de -- vo -- tum
  Post te tra -- he, su -- me to -- tum,
  I -- gne tu -- o san -- cto u -- re,
  Ah, ah pe -- ni -- tus com -- bu -- re.
}

songWordsD = \markup \column { 
    \line {\bold "4."
        O mi Jesu, cor devotum}
    \line {Post te trahe, sume totum,}
    \line {Igne tuo sancto ure,}
    \line {Ah, ah penitus combure.}
}

songLyricsE = \lyricmode { 
  \set stanza = #"5. "
  Pro -- cul va -- nos hinc a -- mo -- res,
  Pro -- cul ma -- los ar -- ce mo -- res,
  Tu -- is me -- os ap -- tos fin -- ge,
  Æ -- ter -- no me ne -- xu strin -- ge,
}

songWordsE = \markup \column { 
    \line {\bold "5."
        Procul vanos hinc amores,}
    \line{Procul malos arce mores,}
    \line{Tuis meos aptos finge,}
    \line{Æterno me nexu stringe,}
}

\bookpart { 
    \paper {
        page-count = #1
    }
\header {
  title = \songTitle
  poet = \songPoet
  composer = \tuneComposer
  source = \tuneSource
}

    \tocItem \songTitle
    \label #'aveJesuDeus

\score {
  <<
   \new ChoirStaff <<
    \new Staff = women <<
      \new Voice = "sopranos" { \voiceOne \global \sopMusic }
      \new Voice = "altos" { \voiceTwo \global \filtermusic \altoMusic }
    >>
    \new Lyrics \lyricsto "altos" { \songLyricsA \songLyricsChorus \songLyricsAfter }
    \new Lyrics \lyricsto "altos" { \songLyricsB \songLyricsChorus \songLyricsAfter }
%   \new Lyrics \lyricsto "altos" \songLyricsC
%   \new Lyrics \lyricsto "altos" \songLyricsD
%   \new Lyrics \lyricsto "altos" \songLyricsE
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne \global \filtermusic \tenorMusic }
      \new Voice = "basses" { \voiceTwo \global \bassMusic }
    >>
  >>
  >>
  \layout { }
}
    \markup {
        \fill-line {
            \songWordsC
            \songWordsD
            \songWordsE
        }
    }
}

\book { 
    \bookOutputName "Ave_Jesu_Deus-fake" 
\header {
  title = \songTitle
  poet = \songPoet
  composer = \tuneComposer
  source = \tuneSource
}

\score {
    <<
        \new Staff <<
%           \new Voice = "vocal" {
%               \global
%               \relative c' {
%                   \repeat unfold 4 {
%                       \altoMusicVerse
%                       \bar "||" \break
%                       \altoMusicChorus
%                       \break
%                   }
%                   \altoMusicVerse
%                   \bar "||" \break
%                   \altoMusicChorus
%                   \altoMusicAfter 
%                   \bar "|."
%               }
%           } 
            \new Voice = "vocal" {
                \global
                \relative c' {
                    \sopMusic
                }
            } 

            \new Lyrics \lyricsto "vocal" {
                \songLyricsA
            }
            \new Lyrics \lyricsto "vocal" {
                \songLyricsB
            }
            \new Lyrics \lyricsto "vocal" {
                \songLyricsC
                \songLyricsChorus
                \songLyricsAfter
            }
            \new Lyrics \lyricsto "vocal" {
                \songLyricsD
            }
            \new Lyrics \lyricsto "vocal" {
                \songLyricsE
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

\book { 
    \bookOutputName "Ave_Jesu_Deus-midi" 
\header {
  title = \songTitle
  poet = \songPoet
  composer = \tuneComposer
  source = \tuneSource
}
\score {
    <<
        \new ChoirStaff <<
            \new Staff <<
                \set Staff.midiInstrument = "acoustic grand" 
                \new Voice = "sopranos" {
                    \global
                    {
                        \repeat unfold 4 {
                            \sopMusicVerse
                            \bar "||" \break
                            \sopMusicChorus_noferm
                            \break
                        }
                        \sopMusicVerse
                        \bar "||" \break
                        \sopMusicChorus_noferm
                        \sopMusicAfter 
                        \bar "|."
                    }
                }
            >>
            \new Staff <<
                \set Staff.midiInstrument = "acoustic grand" 
                \new Voice = "altos" {
                    \global
                    {
                        \repeat unfold 4 {
                            \altoMusicVerse
                            \bar "||" \break
                            \altoMusicChorus_noferm
                            \break
                        }
                        \altoMusicVerse
                        \bar "||" \break
                        \altoMusicChorus_noferm
                        \altoMusicAfter 
                        \bar "|."
                    }
                }
            >> 
            \new Staff = men <<
                \clef bass
                \set Staff.midiInstrument = "acoustic grand" 
                \new Voice = "tenors" {
                    \global
                    {
                        \repeat unfold 4 {
                            \tenorMusicVerse
                            \bar "||" \break
                            \tenorMusicChorus_noferm
                            \break
                        }
                        \tenorMusicVerse
                        \bar "||" \break
                        \tenorMusicChorus_noferm
                        \tenorMusicAfter 
                        \bar "|."
                    }
                }
            >>
            \new Staff = men <<
                \clef bass
                \set Staff.midiInstrument = "acoustic grand" 
                \new Voice = "basses" {
                    \global
                    {
                        \repeat unfold 4 {
                            \bassMusicVerse
                            \bar "||" \break
                            \bassMusicChorus_noferm
                            \break
                        }
                        \bassMusicVerse
                        \bar "||" \break
                        \bassMusicChorus_noferm
                        \bassMusicAfter 
                        \bar "|."
                    }
                }
            >>
            \new Lyrics \lyricsto "altos" {
                \songLyricsA
                \songLyricsChorus
                \songLyricsB
                \songLyricsChorus
                \songLyricsC
                \songLyricsChorus
                \songLyricsD
                \songLyricsChorus
                \songLyricsE
                \songLyricsChorus
                \songLyricsAfter
            }
        >> 
    >>
    \layout { }
    \midi {
        %\context { \Voice \remove "Dynamic_performer" }
    }
}
}

\book { 
    \bookOutputName "Ave_Jesu_Deus-draft-verse" 
\header {
  title = \songTitle
  poet = \songPoet
  composer = \tuneComposer
  source = \tuneSource
} 
\score {
    <<
        \new ChoirStaff <<
            \new Staff <<
                \set Staff.midiInstrument = "acoustic grand" 
                \new Voice = "sopranos" {
                    \global { \sopMusicVerse \bar "|." }
                }
            >>
            \new Staff <<
                \set Staff.midiInstrument = "acoustic grand" 
                \new Voice = "altos" {
                    \global { \altoMusicVerse \bar "|." }
                }
            >> 
            \new Staff = men <<
                \clef bass
                \set Staff.midiInstrument = "acoustic grand" 
                \new Voice = "tenors" {
                    \global { \tenorMusicVerse \bar "|." }
                }
            >>
            \new Staff = men <<
                \clef bass
                \set Staff.midiInstrument = "acoustic grand" 
                \new Voice = "basses" {
                    \global { \bassMusicVerse \bar "|." }
                }
            >>
        >> 
    >>
    \midi { }
} 
}

\book { 
    \bookOutputName "Ave_Jesu_Deus-draft-chorus" 
\header {
  title = \songTitle
  poet = \songPoet
  composer = \tuneComposer
  source = \tuneSource
} 
\score {
    <<
        \new ChoirStaff <<
            \new Staff <<
                \set Staff.midiInstrument = "acoustic grand" 
                \new Voice = "sopranos" {
                    \global { \sopMusicChorus_noferm \bar "|." }
                }
            >>
            \new Staff <<
                \set Staff.midiInstrument = "acoustic grand" 
                \new Voice = "altos" {
                    \global { \altoMusicChorus_noferm \bar "|." }
                }
            >> 
            \new Staff = men <<
                \clef bass
                \set Staff.midiInstrument = "acoustic grand" 
                \new Voice = "tenors" {
                    \global { \tenorMusicChorus_noferm \bar "|." }
                }
            >>
            \new Staff = men <<
                \clef bass
                \set Staff.midiInstrument = "acoustic grand" 
                \new Voice = "basses" {
                    \global { \bassMusicChorus_noferm \bar "|." }
                }
            >>
        >> 
    >>
    \midi { }
} 
}

\book { 
    \bookOutputName "Ave_Jesu_Deus-draft-after" 
\header {
  title = \songTitle
  poet = \songPoet
  composer = \tuneComposer
  source = \tuneSource
} 
\score {
    <<
        \new ChoirStaff <<
            \new Staff <<
                \set Staff.midiInstrument = "acoustic grand" 
                \new Voice = "sopranos" {
                    \global { \sopMusicAfter \bar "|." }
                }
            >>
            \new Staff <<
                \set Staff.midiInstrument = "acoustic grand" 
                \new Voice = "altos" {
                    \global { \altoMusicAfter \bar "|." }
                }
            >> 
            \new Staff = men <<
                \clef bass
                \set Staff.midiInstrument = "acoustic grand" 
                \new Voice = "tenors" {
                    \global { \tenorMusicAfter \bar "|." }
                }
            >>
            \new Staff = men <<
                \clef bass
                \set Staff.midiInstrument = "acoustic grand" 
                \new Voice = "basses" {
                    \global { \bassMusicAfter \bar "|." }
                }
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


