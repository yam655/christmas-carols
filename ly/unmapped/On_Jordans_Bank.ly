\version "2.14.2"
\include "util.ly"
\header { 
    title = "On Jordan’s Bank"
    poet = \markup{\italic{Jordanis oras prævia}, by Charles Coffin (1676–1749)}
    meter = \markup"Translated by John Chandler (1806–1876)"
    composer = \markup{ tune is \italic{Winchester New}}
    arranger = \markup{"Adapted from Chorale in " \italic"Musikalisches Hand-Buch" ", 1690"}
    section = "Advent"
  }

global = {
    \key bes \major
    \time 4/4
    \autoBeamOff
    %\tempo 4 = 56
    \tempo 4 = 112
}

sopMusic = \relative c' {
  \partial 4 f4 |
  bes f g g |
  f ees d d |
  ees d c f |
  
  f e f\fermata \bar"" f |
  bes c d bes |
  ees d c d |
  
  bes g f bes |
  bes a bes\fermata \bar "|."
}

altoMusic = \relative c' {
  d4 |
  f d ees ees8[ d] |
  c4 a bes bes |
  bes bes c d |
  
  d c c f |
  f ees d g8[ f] |
  ees4 f f f |
  
  f ees f d |
  g f f \bar "|."
}
altoWords = \lyricmode {
  \dropLyricsV
  \set stanza = #"1. "
  On Jor -- dan’s bank the Bap -- tist’s cry
  An -- noun -- ces that the Lord is nigh;
  Come, then, and heark -- en, for he brings
  Glad tid -- ings from the King of kings!
}
altoWordsII = \lyricmode {
  \dropLyricsV
%\markup\italic
  \set stanza = #"2. "
  Then cleansed be ev -- ’ry soul from sin;
  Make straight the way for God with -- in;
  Pre -- pare we in our hearts a home,
  Where such a might -- y Guest may come.
}
altoWordsIII = \lyricmode {
  \dropLyricsV
  \set stanza = #"3. "
  For Thou art our sal -- va -- tion, Lord,
  Our Ref -- uge and our great re -- ward.
  With -- out Thy grace our souls must fade
  And with -- er like a flow’r de -- cayed.
}
altoWordsIV = \lyricmode {
  \dropLyricsV
  \set stanza = #"4. "
  Stretch forth Thine hand, to heal our sore,
  And make us rise and fall no more;
  Once more up -- on Thy peo -- ple shine,
  And fill the world with love di -- vine.
}
altoWordsV = \lyricmode {
  \dropLyricsV
  \set stanza = #"5. "
  All praise, e -- ter -- nal Son, to Thee,
  Whose ad -- vent doth Thy peo -- ple free,
  Whom with the Fa -- ther, we a -- dore,
  And Ho -- ly Ghost, for ev -- er -- more.
}
tenorMusic = \relative c' {
  bes4 |
  bes bes bes ees, |
  f f f f |
  g f8[ g] a4 a |
  
  bes8[ a] g4 a a |
  bes g8[ a] bes4 bes |
  bes8[ a] bes4 a bes |
  
  bes bes bes bes |
  c c d \bar "|."
}

bassMusic = \relative c {
  bes4 |
  d bes ees c8[ bes] |
  a4 f bes bes |
  g bes f d' |
  
  bes c f, f'8[ ees] |
  d4 c bes ees8[ d] |
  c4 d8[ ees] f4 bes, |
  
  d ees d g |
  ees f bes, \bar "|."
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
    \new Lyrics = "altosIV"  \lyricsto "altos" \altoWordsIV
    \new Lyrics = "altosV"   \lyricsto "altos" \altoWordsV
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
      \Voice
      \remove "Dynamic_performer"
    }
  }
}
