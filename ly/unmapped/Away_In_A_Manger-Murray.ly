\version "2.14.2"

\header {
    title = "Away In A Manger"
    poet = "Anonymous"
    composer = "James Ramsey Murray (1841–1905)"
    %source = ""%\markup { "from" \italic {ChristmasCarolMusic.org}} 
}

global = {
    \key f \major
    \time 3/4
    \autoBeamOff
    \tempo 4 = 100
}

sopMusic = \relative c'' {
  \partial 4 c4 |
  c4. bes8 a4 |
  a g f |
  f e d |
  c2 c4 |
  c4. d8 c4 |
  
  c g' e |
  d c f |
  a2 c4 |
  c4. bes8 a4 |
  \slurDotted a g f |
  
  f e d |
  c2 c4 |
  bes'4. a8 g4 |
  a g f |
  g d e |
  f2 \bar "|."
}

altoMusic = \relative c' {
  f4 |
  f4. g8 f4 |
  f e d |
  d c bes |
  a2 a4 |
  bes4. bes8 bes4 |
  
  bes bes bes |
  bes a c |
  f2 a8[ g] |
  f4. g8 f4 |
  f e d |
  
  d c bes |
  a2 c4 |
  e4. f8 g4 |
  f e d |
  d bes bes8[ c] |
  a2 \bar "|."
}
altoWords = \lyricmode {
  
  \set stanza = #"1. "
  A -- way in a man -- ger,
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
  I ask Thee to stay
  Close by me for -- ev -- er
  And love me, I pray:
  Bless all the dear chil -- dren
  In Thy ten -- der care,
  And take us to heav -- en
  To live with Thee there.
}
altoWordsIV = \lyricmode {
}

tenorMusic = \relative c {
  a'4 |
  a4. bes8 c4 |
  c bes a |
  bes g f |
  f2 f4 |
  e4. f8 e4 |
  
  e e g |
  f f a |
  c2 c8[ bes] |
  a4. bes8 c4 |
  c bes a |
  
  bes g f |
  f2 c'4 |
  c4. c8 c4 |
  c bes a |
  bes g g |
  f2 \bar "|."
}

bassMusic = \relative c {
  f4 |
  f4. e8 f4 |
  f,4 c' d |
  bes c bes8[ c] |
  f2 f4 |
  c4. bes8 c4 |
  
  c c c |
  bes f' f |
  f2 f4 |
  f4. e8 f4 |
  f, c' d |
  
  bes c bes8[ c] |
  f2 c4 |
  c4. d8 e4 |
  f c d |
  bes bes c4 |
  f,2 \bar "|."
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
            \new Lyrics = "altosIII"  \lyricsto "sopranos" \altoWordsIII
            \new Lyrics = "altosIV"   \lyricsto "sopranos" \altoWordsIV
            \new Staff = men <<
                \clef bass
                \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
                \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
            >>
        >>
    >>
  
  \midi {
    \set Staff.midiInstrument = "flute" 
    %\context { \Voice \remove "Dynamic_performer" }
  }
}
}

