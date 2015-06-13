\version "2.14.2"

songTitle = "Ave Jesu Deus"
songPoet = "Anonymous"
tuneComposer = "Sir John Stainer (1840–1901)"
tuneSource = \markup {from \italic {Christmas Carols, New and Old}}

global = {
    \key ees \major
    \time 2/4
    \tempo 4 = 100
}

sopMusic = \relative c' {
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
  ees'_\p d |
  
  c bes |
  bes a |
  g g \bar "||" 
  g4. f8 |
  ees4 ees |
  aes4. g8 |
  g4 f \bar "||"
  
  bes4^\markup\italic"cresc." bes |
  g ees |
  c'4. bes8 |
  bes4( aes) \bar "||" 
  c4 c |
  b c |
  d g, |
  
  ees' ees \bar "||"
  ees2 |
  g,4( f) |
  ees2\fermata \bar ":|"
  ees'^\markup\italic{ "Versus Postremus"} |
  g4( f) |
  ees2 \bar "|."
}
  

altoMusic = \relative c' {
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
  fis! g |
  
  a g |
  g fis |
  g g \bar "||"
  ees4. d8 |
  c4 c |
  f4. ees8 |
  ees4 d |
  
  ees ees |
  ees ees |
  ees e |
  f2 \bar "||"
  f4 f |
  f f |
  f f |
  
  ees aes \bar "||"
  g2 |
  ees4( d) |
  ees2 |
  g2 |
  bes4.( aes8) |
  g2 \bar "|."
}
altoWords = {
  
  \lyricmode {
    \set stanza = #"1. "
    A -- ve Je -- su De -- us ma -- gne,
    A -- ve Pu -- er, mi -- tis a -- gne,
    A -- ve De -- us ho -- mo na -- te,
    In Præ -- se -- pi re -- cli -- na -- te!
  }
  
  \set stanza = \markup\dynamic"f   "
  \lyricmode {
    \set associatedVoice = "tenors"
    O po -- tes -- tas, o e -- ges -- tas,
    O ma -- jes -- tas Do -- mi -- ni!
    O ma -- jes -- tas, quid non præ -- stas
  }
  \set stanza = \markup\dynamic"  ff "
  \lyricmode{
    ho -- mi -- ni?
    ho -- mi -- ni?
  }
}
altoWordsII = \lyricmode {
  
%\markup\italic
  \set stanza = #"2. "
  Ut me pau -- pe -- rem di -- ta -- res,
  Ut me per -- di -- tum sal -- va -- res,
  Ja -- ces pan -- nis in -- vo -- lu -- tus,
  Om -- ni o -- pe des -- ti -- tu -- tus.
}
altoWordsIII = {
  
  \set stanza = \markup{\dynamic "mf  " "3. "}
  \lyricmode {
    In -- ter bru -- ta quam ab -- jec -- tus
    Va -- gis, Pa -- tris o di -- lec -- tus!
    Ju -- dex sum -- me, ve -- rus De -- us,
    Prop -- ter me fis ho -- mo re -- us!
  }
}
altoWordsIV = \lyricmode {
  
  \set stanza = #"4. "
  O mi Je -- su, cor de -- vo -- tum
  Post te tra -- he, su -- me to -- tum,
  I -- gne tu -- o san -- cto u -- re,
  Ah, ah pe -- ni -- tus com -- bu -- re.
}
altoWordsV = \lyricmode {
  
  \set stanza = #"5. "
  Pro -- cul va -- nos hinc a -- mo -- res,
  Pro -- cul ma -- los ar -- ce mo -- res,
  Tu -- is me -- os ap -- tos fin -- ge,
  Æ -- ter -- no me ne -- xu strin -- ge,
}
altoWordsVI = \lyricmode {
  \set stanza = #"6. "
  \set ignoreMelismata = ##t
}
tenorMusic = \relative c' {
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
  bes4 bes \bar "||"
  bes4. bes8 |
  c4 c |
  c4. c8 |
  bes4 bes \bar "||"
  
  bes bes |
  c c |
  c c |
  c2 \bar "||"
  c4 c |
  d c |
  b b |
  
  c ees \bar "||"
  ees2 |
  bes4( aes) |
  g2 |
  
  ees' |
  ees4( d) |
  ees2 \bar "|."
  
}


bassMusic = \relative c {
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
  a bes |
  
  c c |
  d d |
  g g \bar "||"
  ees4. ees8 |
  aes4 aes |
  f f |
  bes aes \bar "||"
  
  g g |
  c c |
  aes g |
  f2 \bar "||"
  aes4 aes |
  aes aes |
  g g |
  
  c c \bar "||"
  bes2 |
  bes, |
  ees\fermata |
  bes' |
  bes, |
  ees \bar "|."
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
    \new Lyrics \lyricsto "altos" \altoWords
    \new Lyrics \lyricsto "altos" \altoWordsII
    \new Lyrics \lyricsto "altos" \altoWordsIII
    \new Lyrics \lyricsto "altos" \altoWordsIV
    \new Lyrics \lyricsto "altos" \altoWordsV
    \new Lyrics \lyricsto "altos" \altoWordsVI
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
    %\context { \Voice \remove "Dynamic_performer" }
  }
}
}

