\version "2.14.2"

\header {
  title = "Come! Tune Your Heart"
  poet = \markup{\italic{Auf, schicke dich}, by Christian Fürchtegott Gellert (1715–1769)}
  translator = "Translated by Frances E. Cox (1812–1897)"
  composer = "Sir Frederick A. G. Ouseley (1825–1889)"
  %source = \markup { from \italic {Christmas Carols, New and Old}}
}

global = {
    \key ees \major
    \time 2/2
    \tempo 4 = 180
}

sopMusic = \relative c' {
  \partial 2 ees2 |
  g aes |
  bes g |
  aes c |
  bes 
  bes |
  ees d4( c) |
  
  bes2 a4( g) |
  f2 c' |
  <<bes {s4 s^\ff}>> d2 |
  f1 |
  d2 bes |
  c1 |
  bes2 
  
  bes2 |
  g f |
  ees c' |
  aes g |
  f2 
  g2 |
  aes bes |
  
  c c d ees4( c) |
  bes2 bes |
  c1 |
  bes2 bes |
  f1 |
  ees2 \bar "|."
}

altoMusic = \relative c' {
  bes2 |
  ees ees |
  d ees |
  ees ees |
  ees 
  f |
  ees f |
  
  g c, |
  d ees |
  d bes' |
  bes( a) |
  bes bes |
  bes( a) |
  bes 
  
  ees, |
  ees d |
  ees f |
  f e |
  f 
  ees |
  ees ees |
  
  ees ees |
  aes aes |
  aes g |
  g( f4 ees) |
  f2 ees |
  ees( d) |
  ees2 \bar "|."
}
altoWords = \lyricmode {
  
  \set stanza = #"1. "
  Come! tune your heart, To bear its part,
  And ce -- le -- brate Mes -- si -- ah’s feast with prais -- es,
  \set associatedVoice = "tenors"
  with prais -- es;
  
  Let love in -- spire The joy -- ful choir,
  While to the God of Love, glad Hymns
  \unset associatedVoice
  it rais -- es,
  \set associatedVoice = "tenors"
  it rais -- es.
}
altoWordsII = \lyricmode {
  
%\markup\italic
  \set stanza = #"2. "
  Ex -- alt His Name; With joy pro -- claim,
  God loved the world, and through His Son for -- gave us, 
  \set associatedVoice = "tenors"
  for -- gave us;
  Oh! what are we,
  That, Lord, we see
  Thy won -- drous love, in Christ who died 
  \unset associatedVoice
  to save __ us,
  \set associatedVoice = "tenors"
  to save __ us!
}
altoWordsIII = {
  
  \set stanza = \markup{\dynamic"mf " "3. "}
  \lyricmode {
    Your ref -- uge place In His free grace,
    Trust in His Name, and day by day re -- pent you, 
    \set associatedVoice = "tenors"
    re -- pent you;
    Ye mock God’s word, Who call Him Lord,
    And fol -- low not the pat -- tern He 
    \unset associatedVoice
    hath lent __ you,
    \set associatedVoice = "tenors"
    hath lent __ you.
  }
}
altoWordsIV = \lyricmode {
  
  \set stanza = #"4. "
  O Christ, to prove For Thee, my love,
  In breth -- ren Thee my hands shall clothe and cher -- ish, 
  \set associatedVoice = "tenors"
  and cher -- ish;
  To each sad heart Sweet Hope im -- part,
  When worn with care, with sor -- row nigh 
  \unset associatedVoice
  to per -- ish,
  \set associatedVoice = "tenors"
  to per -- ish.
}
altoWordsV = \lyricmode {
  
  \set stanza = #"5. "
  Come! praise the Lord; In Heav’n are stored
  Rich gifts for those who here His Name e -- steem -- ed, 
  \set associatedVoice = "tenors"
  e -- steem -- ed;
  Al -- le -- lu -- ia; Al -- le -- lu -- ia;
  Re -- joice in Christ, and praise Him ye 
  \unset associatedVoice
  re -- deem -- ed,
  \set associatedVoice = "tenors"
  re -- deem -- ed.
}
altoWordsVI = \lyricmode {
  \set stanza = #"6. "
  \set ignoreMelismata = ##t
}
tenorMusic = \relative c' {
  g2 |
  g ees |
  f ees |
  aes aes |
  g 
  bes |
  c bes4( aes) |
  
  g2 bes |
  bes a |
  <<bes {s4 s_\ff}>> bes2 |
  c1 |
  d2 e |
  f1 |
  d2 
  
  bes |
  c aes |
  g c |
  des bes |
  aes 
  bes |
  aes g |
  
  aes aes |
  aes c |
  f ees |
  ees( c) |
  d ees4( bes) |
  bes2.( aes4) |
  g2 \bar "|."
}
tenorWords = \lyricmode {

}

bassMusic = \relative c {
  ees2 |
  d c |
  bes ees |
  c aes |
  ees' 
  d |
  c d |
  
  ees e |
  f f |
  bes g |
  f1 |
  bes2 g |
  f1 |
  bes2 
  
  g, |
  aes bes |
  c aes |
  bes c |
  des! 
  des! |
  c bes |
  
  aes aes'4( g) |
  f2 ees |
  d ees |
  aes,1 |
  bes4( aes) g2 |
  bes1 |
  ees2 \bar "|."
}
bassWords = \lyricmode {

}


\bookpart {
\score {
  <<
   \new ChoirStaff <<
    \new Staff = women <<
      \new Voice = "sopranos" { \voiceOne << \global \sopMusic >> }
      \new Voice = "altos" { \voiceTwo << \global \altoMusic >> }
    >>
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
    >>
     \new Lyrics = "altosVI"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsVI
    \new Lyrics = "altosV"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsV
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((padding . -0.5))} \lyricsto "altos" \altoWords
    \new Lyrics \with { alignAboveContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "tenors" \tenorWords
    \new Lyrics \with { alignBelowContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "basses" \bassWords
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
}

