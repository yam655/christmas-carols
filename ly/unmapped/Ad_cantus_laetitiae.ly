﻿\version "2.14.2"

songTitle = "Ad cantus lætitiæ"
songPoet = "13th Century Manuscript at Stuttgart"
songTranslator = "tr. English by George Ratcliffe Woodward (1848–1934)"
tuneComposer = \markup{As found in \italic{Piæ Cantiones}, 1582}
tuneSource = \markup{from \italic{The Cowley Carol Book}, 1919}

global = {
    \key f \major
    \time 4/4
    \autoBeamOff
    \tempo 4 = 100
}

altoMusic = \relative c' {
  \oneVoice
  
  \partial 4 f4^"Alto" |
  a bes c a |
  bes8([ a] g4) f\fermata f |
  a bes c a |
  
  bes8[( a] g4) f\fermata b\rest |
  f d e c |
  d e f g |
  bes8[( a] g4) f2\fermata \bar "|." 
  
  
  \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
  \mark \markup \italic "The same, in English"
  f4^"Alto" |
  a bes c a |
  bes8([ a] g4) f\fermata f |
  a bes c a |
  
  bes8[( a] g4) f\fermata b\rest |
  f d e c |
  d e f g |
  bes8[( a] g4) f2\fermata \bar "|."
}
altoWords = \lyricmode {
  \set stanza = #"1. "
  Ad can -- tus læ -- ti -- ti -- æ
  Nos in -- vi -- tat ho -- di -- e
  Spes et a -- mor pa -- tri -- æ Cœ -- le -- stis.
  
  \set stanza = #"1. "
  Love and hope of heav’n -- ly __ rest,
  And the song of such as __ fest
  To -- day bid us do our best En -- deav -- or.
}
bassWords = \lyricmode {
  \set stanza = #"1. "
  Ad can -- tus læ -- ti -- ti -- æ
  Nos in -- vi -- tat ho -- di -- e
  Spes et a -- mor pa -- tri -- æ Cœ -- le -- stis.
  
  \set stanza = #"1. "
  Love and hope of heav’n -- ly rest,
  And the song of such as fest
  To -- day bid us do our __ best En -- deav -- or.
}
altoWordsII = \lyricmode {
%\markup\italic
  \set stanza = #"2. "
  Na -- tus est E -- ma -- nu -- el,
  Quod præ -- di -- xit Ga -- bri -- el,
  Un -- de san -- ctus Da -- ni -- el Est te -- stis.
  
  \set stanza = #"2. "
  Born is our E -- man -- u -- el,
  As fore -- told by Ga -- bri -- el,
  E’en as doth Saint Dan -- i -- el As -- sev -- er.
}
altoWordsIII = \lyricmode {
  \set stanza = #"3. "
  Er -- go nos cum gau -- di -- o,
  No -- stra si -- mul con -- ti -- o
  Be -- ne -- di -- cat Do -- mi -- no Ju -- bi -- lo.
  
  \set stanza = #"3. "
  Where -- fore let th’as -- sem -- bly __ all
  Bless, in ca -- rol and cho -- ral,
  Je -- sus on this fes -- tiv -- al, And ev -- er.
}

bassWordsIII = \lyricmode {
  \set stanza = #"3. "
  Er -- go nos cum gau -- di -- o,
  No -- stra si -- mul con -- ti -- o
  Be -- ne -- di -- cat Do -- mi -- no Ju -- bi -- lo.
  
  \set stanza = #"3. "
  Where -- fore let th’as -- sem -- bly all
  Bless, in ca -- rol and cho -- ral,
  Je -- sus on this fes -- tiv -- al, And ev -- er.
}

bassMusic = \relative c {
  \oneVoice
  
  d4\rest^"Basso" |
  f d e c |
  d e f\fermata r |
  f d e c |
  
  d e f\fermata f |
  a bes c a |
  bes8[( a] g4) f c |
  d( e) f2\fermata \bar "|."
  
  
  d4\rest^"Basso" |
  f d e c |
  d e f\fermata r |
  f d e c |
  
  d e f\fermata f |
  a bes c a |
  bes8[( a] g4) f c |
  d( e) f2\fermata \bar "|."
}

\bookpart {
\header {
  title = \songTitle
  poet = \songPoet
  translator = \songTranslator
  composer = \tuneComposer
  source = \tuneSource
}
\score {
  <<
   \new ChoirStaff <<
    \new Staff = women <<
      \new Voice = "altos" { << \global \altoMusic >> }
    >>
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWords
   \new Staff = men <<
      \clef bass
      \new Voice = "basses" { << \global \bassMusic >> }
    >>
    \new Lyrics \with { alignBelowContext = #"men" } \lyricsto "basses" \bassWordsIII
    \new Lyrics \with { alignBelowContext = #"men" } \lyricsto "basses" \altoWordsII
    \new Lyrics \with { alignBelowContext = #"men" } \lyricsto "basses" \bassWords
  >>
  >>
  \layout { }
  \midi {
    \set Staff.midiInstrument = "flute"
  
    %\context { \Voice \remove "Dynamic_performer" }
  }
}
}

