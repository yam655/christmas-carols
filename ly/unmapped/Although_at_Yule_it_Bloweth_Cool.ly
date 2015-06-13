\version "2.14.2"

songTitle = "Although at Yule it Bloweth Cool"
songPoet = "George Ratcliffe Woodward (1848–1934)"
tuneComposer = \markup{\italic{Der wind der wet, der han der kret}, 1554}
tuneArranger = \markup"Arranged by Charles Wood (1866–1926)"
tuneSource = \markup{from \italic{The Cambridge Carol Book}, 1924}
    % \markup { Words from \italic{HymnsAndCarolsOfChristmas.com}, Music from \italic{CyberHymnal.org}}

global = {
    \key g \major
    \time 3/4
    \autoBeamOff
    \tempo 4 = 120
}

sopMusic = \relative c' {
    \partial 8
  \repeat volta 2 {
    g'8 |
    d'4 d8 d4 g,8 |
    d'4 d8 d4 d8 |
    c4 d8 e4 e8 |
    d4. b4  b8 |
    
    b4 b8 b4 b8 |
    d4 d8 a4 a8 |
    a4 c8 b4 a8 |
    g4. g4
  }
  
}

altoMusic = \relative c' {
  g'8 |
  b4 g8 fis4 g8 |
  b8[ a] g fis4 g8 |
  a4 b8 c[ b] a |
  b4. g4 e8 |
  
  d4 e8 g4 e8 |
  b[ a] b d4 fis8 |
  c[ d] e d e[ fis] |
  g4. g4
}
altoWords = \lyricmode {
  \set stanza = #"1. "
  Al -- though at Yule it blow -- eth cool,
  And frost doth grip the fin -- gers,
  And nip the nose, and numb the toes,
  Of out -- door Car -- ol sing -- ers,
  
  \set stanza = #"4. "
  By tho -- rough -- fare, through slum or square,
  Our Choir the praise re -- hear -- ses
  "(As" on we pass) of ‘Wen -- ces -- las’
  That ‘Good King,’ and his mer -- cies.
}
altoWordsII = \lyricmode {
%\markup\italic
  \set stanza = #"2. "
  Through snow or sleet we pace the street,
  Fair sirs, with right good rea -- son,
  To wish you all, both great and small,
  The bless -- ings of the sea -- son.
  
  \set stanza = #"5. "
  Then we can sing, a pret -- ty thing,
  ‘The Holly and I -- vy ber -- ry;’
  But best we ken ‘Good gen -- tle -- men,
  God rest you, rest you mer -- ry.’
}
altoWordsIII = \lyricmode {
  \set stanza = #"3. "
  No itch -- ing palms have we for alms,
  Con -- tent if Christ, the bur -- den
  Of these our lays, be -- stow His praise,
  And one day be our guer -- don
  
  \set stanza = #"3. "
  We think to spell, ‘Good news, No -- el,
  And eke a won -- der sto -- ry:
  The Vir -- gin mild hath borne the Child:
  E’en God, the King of Glo -- ry.’
  
}
altoWordsIV = \lyricmode {
}
altoWordsV = \lyricmode {
}
altoWordsVI = \lyricmode {
}
tenorMusic = \relative c' {
  gis8 |
}
tenorWords = \lyricmode {

}

bassMusic = \relative c {
  e8 |
}


\bookpart { 
\header {
    title = \songTitle
    poet = \songPoet
    composer = \tuneComposer
    arranger = \tuneArranger
    source = \tuneSource
  }
\score {
  <<
   \new ChoirStaff <<
    \new Staff = women <<
      \new Voice = "sopranos" { \voiceOne << \global \sopMusic >> }
      \new Voice = "altos" { \voiceTwo << \global \altoMusic >> }
    >>
    \new Lyrics = "altosVI"  \lyricsto "altos" \altoWordsVI
    \new Lyrics = "altosV"   \lyricsto "altos" \altoWordsV
    \new Lyrics = "altosIV"  \lyricsto "altos" \altoWordsIV
    \new Lyrics = "altosIII" \lyricsto "altos" \altoWordsIII
    \new Lyrics = "altosII"  \lyricsto "altos" \altoWordsII
    \new Lyrics = "altos"    \lyricsto "altos" \altoWords
  >>
  >>
  \layout { }
  
  \midi {
    \set Staff.midiInstrument = "flute" 
    %\context { \Voice \remove "Dynamic_performer" }
  }
}
}
