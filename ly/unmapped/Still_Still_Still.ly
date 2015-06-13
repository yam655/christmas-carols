\version "2.14.2"

\header {
    title = "Still, Still, Still"
    poet = "Traditional Austrian"
    composer = "Salzburg Melody, c. 1819"
    %source = \markup{ from \italic {Salzburgische Volks-Lieder}, 1865}
    %\markup\fill-line{\concat { "from " \italic "The Cowley Carol Book" ", 1919"}}
  }

global = {
    \key ees \major
    \time 4/4
    \autoBeamOff
    \tempo 4 = 77
}

sopMusic = \relative c'' {
  bes4( ees) g,( bes) |
  ees,2. ees8[ g] |
  f4 f8[ aes] d,4 d8[ f] |
  ees2.  g4 |
  
  f4 f8[ g] aes4 f |
  g g8[ aes] bes4 g |
  f f8[ g] aes4 f |
  g g8[ aes] bes4 g |
  
  bes( ees) g,( bes) |
  ees,2. ees8[ g] |
  f4 f8[ aes] d,4 d8[ f] |
  ees1 \bar "|."
}
  

altoMusic = \relative c' {
  g'2 ees |
  ees2. c4 |
  c c4 bes4 bes |
  bes2. ees4 |
  
  d4 d8[ ees] f4 f |
  ees ees8[ f] g4 ees |
  d d8[ ees] f4 f |
  ees ees8[ f] g4 ees |
  
  g2 ees |
  ees2. c4 |
  c c4 bes4 bes |
  bes1 \bar "|."
}

altoWords = \lyricmode { 
  \set stanza = #"1. "
  Still, still, still,
  Weil’s Kind -- lein schlaf -- en will.
  Die Eng -- lein tun schön ju -- bi -- lier -- en,
  Bei dem Krip -- plein mu -- si -- zier -- en.
  Still, still, still,
  Weil’s Kind -- lein schlaf -- en will.
}

altoWordsII = \lyricmode { 
  \set stanza = #"2. "
  Schlaf, schlaf, schlaf,
  Mein lieb -- es Kind -- lein schlaf!
  Ma -- ri -- a tut es nie -- der -- sing -- en
  Ihr -- e keu -- sche Brust dar -- bring -- en.
  Schlaf, schlaf, schlaf,
  Mein lieb -- es Kind -- lein schlaf!
}

altoWordsIII = \lyricmode { 
  \set stanza = #"3. "
  Groß, groß, groß
  Die Lieb’ ist ü -- ber -- groß!
  Gott hat den Him -- mels -- thron ver -- las -- sen
  Und muss reis -- en auf der Straß -- en.
  Groß, groß, groß
  Die Lieb’ ist ü -- ber -- groß.
}

altoWordsIV = \lyricmode { 
  \set stanza = #"4. "
  Wir, wir, wir,
  Wir ruf -- en all zu dir:
  Tu uns des Him -- mels Reich auf -- schließ -- en,
  Wenn wir ein -- mal ster -- ben müss -- en.
  Wir, wir, wir,
  Wir ruf -- en all zu dir.
}

tenorMusic = \relative c' {
  bes2 bes |
  g2. g4 |
  aes4 aes4 aes4 aes |
  g2. bes4 |
  
  bes bes bes bes |
  bes bes bes bes |
  bes bes bes bes |
  bes bes bes bes |
  
  bes2 bes |
  g2. g4 |
  aes4 aes4 aes4 aes |
  g1 \bar "|."
}


bassMusic = \relative c {
  ees2 d |
  c2. bes4 |
  aes aes4 bes4 bes |
  ees2. ees4 |
  
  bes4 bes d d |
  ees ees ees ees |
  bes bes d d |
  ees ees ees ees |
  
  ees2 d |
  c2. bes4 |
  aes aes4 bes4 bes |
  ees1 \bar "|."
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
    %\context { \Voice \remove "Dynamic_performer" }
  }
}
}

