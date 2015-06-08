\version "2.14.2"

\header { 
    title = "Hark! a Herald Voice is Calling"
    poet = \markup{\italic{Vox clara ecce intonat}, 6th Century}
    meter = "Translated by Edward Caswall (1814–1878)"
    composer = "William Henry Monk (1823–1889)"
    %tagline = \markup \concat{ "from " \italic "The English Hymnal" ", 1906"}
    section = "Advent"
}

global = {
    \key e \major
    \time 4/4
    \autoBeamOff
    \tempo 4 = 66
}

sopMusic = \relative c' {
  e4 gis b b |
  a cis cis b \bar "||"
  gis ais b b |
  cis cis b2 \bar "||"
  
  b4 a gis b |
  a gis fis e \bar "||"
  fis gis a gis |
  fis fis e2 \bar "|."
}

altoMusic = \relative c' {
  b4 b b dis |
  e e e e |
  e e dis fis |
  gis fis8[ e] dis2 |
  
  dis4 e8[ fis] e4 fis |
  e e dis e |
  cis eis fis e |
  e dis e2 \bar "|."
}

altoWords = \lyricmode {
  \set stanza = #"1. "
  Hark! a her -- ald voice is call -- ing:
  ‘Christ is nigh,’ it seems to say;
  ‘Cast a -- way the dreams of dark -- ness,
  O ye chil -- dren of the day!’
}
altoWordsII = \lyricmode {
  \set stanza = #"2. "
  Star -- tled at the sol -- emn warn -- ing,
  Let the earth -- bound soul a -- rise;
  Christ, her Sun, all sloth dis -- pell -- ing,
  Shines up -- on the morn -- ing skies.
}
altoWordsIII = \lyricmode {
  \set stanza = #"3. "
  Lo! the Lamb, so long ex -- pec -- ted,
  Comes with par -- don down from heav’n;
  Let us haste, with tears of sor -- row,
  One and all to be for -- giv’n;
}
altoWordsIV = \lyricmode {
  \set stanza = #"4. "
  So when next He comes with glo -- ry,
  Wrap -- ping all the earth in fear,
  May He then as our de -- fend -- er
  On the clouds of heav’n ap -- pear.
}
altoWordsV = \lyricmode {
  \set stanza = #"5. "
  Hon -- or, glo -- ry, vir -- tue, mer -- it,
  To the Fa -- ther and the Son,
  With the co -- e -- ter -- nal Spi -- rit,
  While un -- end -- ing a -- ges run.
}

tenorMusic = \relative c' {
  gis4 b fis fis |
  e a a gis |
  b e, fis b |
  b ais b2 |
  
  dis4 cis8[ b] b4 b |
  cis b b8[ a] gis4 |
  a b cis b |
  cis b8[ a] gis2 \bar "|."
}

bassMusic = \relative c {
  e4 e dis b |
  cis a8[ b] cis[ dis] e4 |
  e cis b dis |
  e fis b,2 |
  
  b4 cis8[ dis] e4 dis |
  cis e b cis |
  a gis fis gis |
  a b <e e,>2 \bar "|."
}


\score {
    <<
        \new ChoirStaff <<
            \new Staff = women <<
                \new Voice = "sopranos" { \voiceOne << \global \sopMusic >> }
                \new Voice = "altos" { \voiceTwo << \global \altoMusic >> }
            >>
            \new Lyrics = "altos"   \lyricsto "sopranos" \altoWords
            \new Lyrics = "altosII"   \lyricsto "sopranos" \altoWordsII
            \new Lyrics = "altosIII"  \lyricsto "sopranos" \altoWordsIII
            \new Lyrics = "altosIV"   \lyricsto "sopranos" \altoWordsIV
            \new Lyrics = "altosV"   \lyricsto "sopranos" \altoWordsV
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

