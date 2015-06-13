\version "2.14.2"

\header {
  title = "The Son of God is born for all"
  subtitle = "(Geborn ist Gottes Sönelein)"
  poet = "Michael Praetorius (1571–1621)"
  composer = \markup{Variation of \italic{Puer nobis nascitur} from \italic {Piæ Cantiones}}
  arranger = "Arranged by George Ratcliffe Woodward (1848–1934)"
  %source = \markup{ from \italic {The Cowley Carol Book}, 1919}
}

global = {
    \key ees \major
    \time 3/4
    \autoBeamOff
    \tempo 4 = 150
}

sopMusic = \relative c' {
    \partial 4
  \repeat volta 3 {
    ees4 |
    ees2 f4 |
    g2 aes4 |
    g2 f4 |
    ees2 ees4 |
    bes'2 bes4 |
    
    bes4( c) d |
    ees2 ees4 |
    ees2  bes4 |
    ees2 ees4 |
    d2 bes4 |
    
    c2 c4 |
    bes2 aes4 |
    bes2 g4 |
    f2 g4 |
    ees2 d4 |
    ees2\fermata 
  }
}
  

altoMusic = \relative c' {
  bes4 |
  c2 d4 |
  ees2 ees4 |
  ees2 bes4 |
  g2 c4 |
  ees( aes) g |
  
  f2 f4 |
  ees2 aes4 |
  g2 f4 |
  ees2 g4 |
  g2 g4 |
  
  ees2 ees4 |
  ees2 c4 |
  f2 ees4 |
  d2 ees4 |
  c2 bes4 |
  bes2
}

altoWords = \lyricmode { 
  \set stanza = #"1. "
  The Son of God is born for all
  At Beth -- lem in a cat -- tle -- stall:
  He li -- eth in a crib full small,
  And wrapt in swad -- dling -- clothes with -- al. 
}

altoWordsII = \lyricmode { 
  \set stanza = #"2. "
  Re -- joice to -- day for Je -- su’s sake,
  With -- in your hearts His cra -- dle make:
  A shrine, where -- in the Babe may take
  His rest, in slum -- ber or a -- wake. 
}

altoWordsIII = \lyricmode { 
  \set stanza = #"3. "
  Be -- neath Him set His crib, of tree;
  Let Hope the lit -- tle mat -- tress be,
  His pil -- low Faith, full fair to see,
  With cov -- er -- let of Cha -- ri -- ty.
}

altoWordsIV = \lyricmode { 
  \set stanza = #"4. "
  In bod -- ies pure and un -- de -- fil’d
  Pre -- pare a cham -- ber for the Child:
  To Him give in -- cense, myrrh and gold,
  Nor rai -- ment, meat and drink with -- hold.
}

altoWordsV = \lyricmode { 
  \set stanza = #"5. "
  Draw nigh, the Son of God to kiss,
  Greet Ma -- ry’s Child "(the" Lord He is)
  Up -- on those love -- ly lips of His:
  Je -- sus, your hearts’ de -- sire and bliss.
}

altoWordsVI = \lyricmode { 
  \set stanza = #"6. "
  Come rock His cra -- dle cheer -- i -- ly,
  As doth His moth -- er, so do ye,
  Who nurs’d Him sweet -- ly on her knee,
  As told it was by pro -- phe -- cy.
}

altoWordsVII = \lyricmode { 
  \set stanza = #"7. "
  \markup\italic By, \markup\italic by, \markup\italic lul -- \markup\italic lay be -- fore Him sing;
  Go, wind the horn, and pluck the string,
  Till all the place with mu -- sic ring;
  And bid one prayer to Christ the King.
}

altoWordsVIII = \lyricmode { 
  \set stanza = #"8. "
  Thus, Babe, I min -- i -- ster to Thee,
  E’en as Thine An -- gels wait on me:
  Thy rud -- dy coun -- te -- nance I see,
  And ti -- ny hands out -- stretch’d to me.
}

altoWordsIX = \lyricmode { 
  \set stanza = #"9. "
  Sleep, in my soul en -- shrin -- ed rest:
  Here find Thy cra -- dle neat -- ly drest:
  For -- sake me not, when sore dis -- trest,
  Em -- ma -- nu -- el, my Bro -- ther blest.
}

altoWordsX = \lyricmode { 
  \set stanza = #"10. "
  Now chant we mer -- ri -- ly \markup\italic i -- \markup\italic o
  With such as play \markup\italic in \markup\italic or -- \markup\italic ga -- \markup{\italic "no" ";"}
  And with the sing -- ers \markup\italic in \markup\italic cho -- \markup\italic ro
  \markup\italic Be -- \markup\italic ne -- \markup\italic di -- \markup\italic ca -- \markup\italic mus \markup\italic Do -- \markup\italic mi -- \markup\italic no.
}


tenorMusic = \relative c' {
  g4 |
  g2 bes4 |
  bes2 ees,4 |
  bes'( c) d |
  ees2 ees4 |
  ees2 bes4 |
  
  bes2 bes4 |
  g2 c4 |
  bes2 bes4 |
  g2 c4 |
  bes2 d4 |
  
  c2 aes4 |
  g2 aes4 |
  f2 bes4 |
  bes2 bes4 |
  aes( g) f |
  g2
}


bassMusic = \relative c {
  ees4 |
  c2 bes4 |
  ees( d) c |
  bes( aes) bes |
  ees2 aes4 |
  g( f) ees |
  
  d2 bes4 |
  c2 aes4 |
  ees'2 d4 |
  c2 ees4 |
  g2 g,4 |
  
  aes2 c4 |
  ees2 f4 |
  d2 ees4 |
  bes( aes) g |
  aes2 bes4 |
  ees,2\fermata
}


\bookpart {
\score {
  <<
   \new ChoirStaff <<
    \new Staff = women <<
      \new Voice = "sopranos" { \voiceOne \global \sopMusic }
      \new Voice = "altos" { \voiceTwo \global \altoMusic }
    >>
    \new Lyrics \lyricsto "altos" \altoWords
    \new Lyrics \lyricsto "altos" \altoWordsII
    \new Lyrics \lyricsto "altos" \altoWordsIII
    \new Lyrics \lyricsto "altos" \altoWordsIV
    \new Lyrics \lyricsto "altos" \altoWordsV
    \new Lyrics \lyricsto "altos" \altoWordsVI
    \new Lyrics \lyricsto "altos" \altoWordsVII
    \new Lyrics \lyricsto "altos" \altoWordsVIII
    \new Lyrics \lyricsto "altos" \altoWordsIX
    \new Lyrics \lyricsto "altos" \altoWordsX
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne \global \tenorMusic }
      \new Voice = "basses" { \voiceTwo \global \bassMusic }
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

