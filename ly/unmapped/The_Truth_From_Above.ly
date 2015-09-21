\version "2.14.2"

songTitle = "The Truth From Above"
songSubtitle = "(Herefordshire Carol)"
songPoet = "Traditional"
tuneComposer = "arr. by Ralph Vaughan Williams (1872–1958)"
tuneSource = \markup \null

global = {
    \key c \major
    \autoBeamOff
    \time 3/2
    \tempo 4 = 115
}

sopMusic = \relative c' {
    \partial 4
  \repeat volta 3 {
    e4 |
    a4 b c( b) a |
    g a e2. b'4 |
    
    c c b( a2) g4 |
    a b c2.  c8[ d] |
    e4 e d2 c4( b) |
    
    \slurDotted a a e2. e8( g) |
    \slurSolid
    a4 b c( d) e( d) |
    c( a) b4 a2.
  }
  
  \repeat volta 2 {
    e4 |
    a4 b c( b) a |
    g a e2. b'4 |
    
    c c b( a2) g4 |
    a b c2.  c8[ d] |
    e4 e d2 c4( b) |
    
    a a e2. e8[ g] |
    a4 b c( d) e( d) |
    c( a) b a2.
  }
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  e4 |
  a4 a a( g) f |
  e d b2. e4 |
  
  e a g( f2) e4 |
  f f f( e2) a4 |
  g g8[ a] d,4( g) c,( d) |
  
  \slurDotted e fis b,2. e8( e) |
  \slurSolid e4 e a8([ g] fis4) e( fis) |
  g( a) g8[ fis] e2.
  
  
  
  e4 |
  a4 a a( g) f |
  e d b2. e4 |
  
  e a g( f2) e4 |
  f f f( e2) a4 |
  g g8[ a] d,4( g) c,( d) |
  
  e fis b,2. e4 |
  e4 e a8([ g] fis4) e( fis) |
  g( a) g8[ fis] e2.
}

altoWords = \lyricmode {
  
  \set stanza = #"1. "
  This is the truth sent from a -- bove,
  The truth of God, the God of love.
  There -- fore don’t turn me from your door,
  But __ heark -- en all __ both rich and poor.
  
  \set stanza = #"6."
  And at this sea -- son of the year
  Our blest re -- deem -- er did ap -- pear;
  He here did live, and here did preach,
  and ma -- ny thou -- sands He did teach.
}
altoWordsII = \lyricmode {
  
%\markup\italic
  \set stanza = #"2. "
  The first thing which I do re -- late
  \skip1
  Is that God did man cre -- ate;
  The next thing which to you I’ll tell
  Wo -- man was made with man to dwell.
  
  \set stanza = #"7."
  Thus He in love to us be -- haved,
  To show us how we must be saved;
  And if you want to know the way,
  Be pleased to hear what He did say:
}
altoWordsIII = \lyricmode {
  
  \set stanza = #"3. "
  Then, af -- ter this, ’twas God’s own choice
  To place them both in Pa -- ra -- dise,
  There to re -- main, from e -- vil free,
  Ex -- cept they ate __ of such a tree.

  \set stanza = #"8."
  “Go preach the Gos -- pel,” now He said,
  “To all the na -- tions that are made!
  And he that does be -- lieve in Me,
  From all his sins I’ll set him free.”

}
altoWordsIV = \lyricmode {
  
  \set stanza = #"4. "
  But they did eat, which was a sin,
  And thus their ru -- in did be -- gin.
  Ru -- ined them -- selves, both you and me,
  And all of their pos -- ter -- i -- ty.
  
  \set stanza = #"9."
  O seek! O seek of God a -- bove
  That sav -- ing faith that works by love!
  And, if He’s pleased to grant thee this,
  \set ignoreMelismata = ##t
  Thou -- ’rt
  \unset ignoreMelismata
  sure to have e -- ter -- nal bliss.
}
altoWordsV = \lyricmode {
  
  \set stanza = #"5. "
  Thus we were heirs to end -- less woes,
  Till God the Lord did in -- ter -- pose;
  And so a prom -- ise soon did run
  \set ignoreMelismata = ##t
  That He
  \unset ignoreMelismata
  would re -- deem us by His Son.
  
  \set stanza = #"10."
  God grant to all with -- in this place
  True sav -- ing faith, that spe -- cial grace
  Which to His peo -- ple doth be -- long:
  And thus I close my Christ -- mas song.

}
altoWordsVI = \lyricmode {
  \set stanza = #"6. "
  \set ignoreMelismata = ##t
}
tenorMusic = \relative c' {
  e4 |
  c4 d e2 c4 |
  c a a( g2) b4 |
  
  a e' e( c2) c4 |
  c d g,2. a4 |
  b c b2 e4( d) |
  
  c a g( fis!2) \slurDotted g8( b) |
  \slurSolid c4 b a4.( b8) c4( a) |
  e'2 d4 c2.
  
  
  
  e4 |
  c4 d e2 c4 |
  c a a( g2) b4 |
  
  a e' e( c2) c4 |
  c d g,2. a4 |
  b c b2 e4( d) |
  
  c a g( fis!2) g8[ b] |
  c4 b a4.( b8) c4( a) |
  e'2 d4 cis2.
}
tenorWords = \lyricmode {
  
}

bassMusic = \relative c {
  e4 |
  a4 a a( e) f |
  c f e2. g4 |
  
  a4 a e( f2) c4 |
  f8[ e] d4 c2. f4 |
  e e8[ fis] g4( g,) a( b) |
  
  c4 d e2. \slurDotted e8( e) |
  a4 g \slurSolid f8([ e] d4) c( d) |
  e( fis) g a2.
  
  
  
  
  
  e4 |
  a4 a a( e) f |
  c f e2. g4 |
  
  a4 a e( f2) c4 |
  f8[ e] d4 c2. f4 |
  e e8[ fis] g4( g,) a( b) |
  
  c4 d e2. e4 |
  a4 g f8([ e] d4) c( d) |
  e( fis) g a2.
}
bassWords = \lyricmode {

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
    \new Lyrics \with { alignAboveContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \sopWords
    \new Lyrics = "altosVI"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsVI
    \new Lyrics = "altosV"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsV
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((padding . -1)) } \lyricsto "sopranos" \altoWords
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "tenors" \tenorWords
    \new Lyrics \with { alignBelowContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "basses" \bassWords
  >>
  >>
  \layout { }
  \midi {
    \set Staff.midiInstrument = "flute" 
    %\context { \Voice \remove "Dynamic_performer" }
  }
}
}

