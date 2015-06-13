\version "2.14.2"

songTitle = "Away In A Manger"
songPoet = "Anonymous"
tuneComposer = "William Kirkpatrick (1838–1921)"
tuneSource = \markup \null % {from \italic {ChristmasCarolMusic.org}} 

global = {
  \key f \major
  \time 3/4
  \autoBeamOff
}

sopMusic = \relative c' {
  \partial 4 c4 |
  f f g8[ a] |
  f4 f a8[ bes] |
  c4 c d |
  bes2 g8[ a] |
  bes4 bes c |
  
  a a f8[ a] |
  g4 d f |
  e2 c4 |
  f f g8[ a] |
  f4 f a8[ bes] |
  
  c4 c d |
  bes2 g8[ a] |
  bes4 bes c |
  a4 a f8[ a] |
  g4 d e |
  f2 \bar "|."
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  c4 |
  a a e' |
  a, a a8[ c] |
  f4 f f |
  g2 d4 |
  g d e |
  f f d |
  
  d d c 
  c2 c4 |
  a a e' |
  a, a a8[ c] |
  f4 f f |
  g2 d4 |
  g d e |
  f f d |
  d d bes |
  c2 \bar"|."
}
altoWords = \lyricmode {
  
  \set stanza = #"1. "
  A -- way in a  man -- ger,
  No crib for His bed,
  The lit -- tle Lord Je -- sus
  Laid down His sweet head:
  The stars in the heav -- ens
  Look’d down where He lay,
  The lit -- tle Lord Je -- sus
  A -- sleep in the hay.
}
altoWordsII = \lyricmode {
  
  \set stanza = #"2. "
  The cat -- tle are low -- ing,
  The poor ba -- by wakes,
  But lit -- tle Lord Je -- sus
  No cry -- ing He makes;
  I love Thee, Lord Je -- sus,
  Look down from the sky,
  And stay by my cra -- dle
  Till mor -- ning is nigh.
}
altoWordsIII = \lyricmode {
  
  \set stanza = #"3. "
  Be near me, Lord Je -- sus,
  I __ ask Thee to stay
  Close by me for -- ev -- er
  And love me, I pray:
  Bless all the dear chil -- dren
  In __ Thy ten -- der care,
  And take us to heav -- en
  To live with Thee there.
}
altoWordsIV = \lyricmode {
}

tenorMusic = \relative c' {
  c4 |
  c d g, |
  c c c8[ g] |
  a4 a bes |
  d2 c4 |
  d g, g |
  a a a8[ f] |
  
  bes4 bes g |
  g2 c4 |
  c d g, |
  c c c8[ g] |
  a4 a bes |
  d2 c4 |
  d g, g |
  a a a8[ f] |
  bes4 bes c |
  a2 \bar"|."
}
tenorWords = \lyricmode {

}

bassMusic = \relative c {
  c4 |
  f d c |
  d f f8[ e] |
  f4 f bes, |
  g'2 g4 |
  g g c, |
  d d d |
  
  g g c, |
  e8([ d] c4) c4 |
  f d c |
  d f f8[ e] |
  f4 f bes, |
  g'2 g4 |
  g g c, |
  d d d |
  g g g8[ c,] |
  f2 \bar"|."
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
%    \new Lyrics = sopranos \with { \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) }
    \new Staff = women <<
      \new Voice = "sopranos" { \voiceOne << \global \sopMusic >> }
      \new Voice = "altos" { \voiceTwo << \global \altoMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"women" } \lyricsto "sopranos" \sopWords
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWords
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "tenors" \tenorWords
  >>
%    \new PianoStaff << \new Staff { \new Voice { \pianoRH } } \new Staff { \clef "bass" \pianoLH } >>
  >>
  \layout {
    \context {
      \Score
      \override SpacingSpanner #'base-shortest-duration = #(ly:make-moment 1 2)
      \override SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 2)
    }
  }
  
  \midi {
    \tempo 4 = 100
    \set Staff.midiInstrument = "flute"
  
    \context {
      \Voice
      \remove "Dynamic_performer"
    }
  }
}
}
