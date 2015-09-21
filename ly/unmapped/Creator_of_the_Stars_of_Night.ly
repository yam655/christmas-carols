\version "2.14.2"

songTitle = "Creator of the Stars of Night"
songPoet = "tr. by John Mason Neale (1818–1866)"
tuneSource = \markup { from \italic {Peters’ Sodality Hymn Book,} 1914}

global = {
    \key f \major
    \time 6/8
    %\autoBeamOff
    %\set Score.timing = ##f
    \tempo 4 = 120
}

sopMusic = \relative c'' {
    a4 f a c c d bes c \bar "|"
    c d bes c bes a g
    a\fermata \bar "|"
    
    c bes g a bes  a g f \bar "|"
    f a bes c bes a g
    a\fermata
}

sopMusic_noferm = \relative c'' {
    a4 f a c c d bes c 
    c d bes c bes a g
    a2
    
    c4 bes g a bes  a g f 
    f a bes c bes a g
    a2
}

sopAmen = \relative c'' {
  a4( bes a) g2( a) \bar "|."
}

altoMusic = \relative c' {
  f4 f f f f f d f
  a f d e d f e
  f \fermata \bar "|"
  
  a g e f g f e d
  d f g a g f e
  f \fermata
}

altoMusic_noferm = \relative c' {
  f4 f f f f f d f
  a f d e d f e
  f2
  
  a4 g e f g f e d
  d f g a g f e
  f2
}

altoAmen = \relative c' {
  f2. e2( f)
}

altoWords = \lyricmode { 
  \set stanza = #"1."
  Cre -- a -- tor of the stars of night,
  Thy peo -- ple’s ev -- er -- last -- ing Light;
  Je -- su, Re -- deem -- er, save us all,
  And hear thy ser -- vants when they call. 
}

altoWordsII = \lyricmode { 
  \set stanza = #"2."
  Thou, griev -- ing that the an -- cient curse
  Should doom to death a u -- ni -- verse,
  Hast found the med -- ’cine, full of grace,
  To save and heal a ru -- in’d race. 
% A -- men.
}

altoWordsIII = \lyricmode { 
  \set stanza = #"3."
  Thou cam’st, the Bride -- groom of the bride,
  As drew the world to eve -- ning -- tide;
  Pro -- ceed -- ing from a vir -- gin shrine,
  The spot -- less Vic -- tim all di -- vine. 
}

altoWordsIV = \lyricmode {
  \set stanza = #"4. " 
  At Whose dread Name, ma -- jes -- tic now,
  All knees must bend, all hearts must bow;
  And things ce -- les -- tial Thee shall own,
  And things ter -- res -- trial, Lord a -- lone.
}

altoWordsV = \lyricmode {
  \set stanza = #"5. " 
  O Thou, Whose com -- ing is with dread
  To judge and doom the quick and dead,
  Pre -- serve us, while we dwell be -- low,
  From ev -- ’ry in -- sult of the foe.
}

altoWordsVI = \lyricmode {
  \set stanza = #"6. "
  To God the Fa -- ther, God the Son,
  And God the Spi -- rit, Three in One,
  Laud, hon -- or, might, and glo -- ry be
  From age to age e -- ter -- nal -- ly.
}

tenorMusic = \relative c' {
  c4 a c a a bes g a
  c bes bes c bes c c
  c \bar "|"
  
  c c c c d c bes a
  a c bes a g a c
  c
}

tenorMusic_noferm = \relative c' {
  c4 a c a a bes g a
  c bes bes c bes c c
  c2
  
  c4 c c c d c bes a
  a c bes a g a c
  c2
}

tenorAmen = \relative c' {
  c2. c1
}

bassMusic = \relative c {
  f4 f f f f bes, g' f
  f bes, bes c bes c c
  f\fermata \bar "|"
  
  f c c f g c, c d
  d c bes f g d' c
  f\fermata
}

bassMusic_noferm = \relative c {
  f4 f f f f bes, g' f
  f bes, bes c bes c c
  f2
  
  f4 c c f g c, c d
  d c bes f g d' c
  f2
}

bassAmen = \relative c {
  f2. c2( f)
}

\bookpart { 
\header {
    title = \songTitle 
    poet = \songPoet 
    source = \tuneSource 
  }

\score {
  <<
   \new ChoirStaff <<
    \new Staff = women <<
      \new Voice = "sopranos" { \voiceOne << \global {\sopMusic }>> }
      \new Voice = "altos" { \voiceTwo << \global {\altoMusic } >> }
    >>
    \new Lyrics = "altos"   \lyricsto "altos" \altoWords
    \new Lyrics = "altosII"   \lyricsto "altos" \altoWordsII
    \new Lyrics = "altosIII"  \lyricsto "altos" \altoWordsIII
    \new Lyrics = "altosIV"   \lyricsto "altos" \altoWordsIV
    \new Lyrics = "altosV"   \lyricsto "altos" \altoWordsV
    \new Lyrics = "altosVI"  \lyricsto "altos" \altoWordsVI
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global { \tenorMusic } >> }
      \new Voice = "basses" { \voiceTwo << \global {\bassMusic } >> }
    >>
  >>
  >>
  \layout { } 
}

\score {
  <<
   \new ChoirStaff <<
    \new Staff = women <<
      \new Voice = "sopranos" { \voiceOne << \global {\sopMusic_noferm }>> }
      \new Voice = "altos" { \voiceTwo << \global {\altoMusic_noferm } >> }
    >>
    \new Lyrics = "altos"   \lyricsto "altos" \altoWords
    \new Lyrics = "altosII"   \lyricsto "altos" \altoWordsII
    \new Lyrics = "altosIII"  \lyricsto "altos" \altoWordsIII
    \new Lyrics = "altosIV"   \lyricsto "altos" \altoWordsIV
    \new Lyrics = "altosV"   \lyricsto "altos" \altoWordsV
    \new Lyrics = "altosVI"  \lyricsto "altos" \altoWordsVI
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global { \tenorMusic_noferm } >> }
      \new Voice = "basses" { \voiceTwo << \global {\bassMusic_noferm } >> }
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

