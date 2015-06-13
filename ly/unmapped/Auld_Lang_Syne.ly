\version "2.14.2"

songTitle = "Auld Lang Syne"
songPoet = \markup {
        \line {First verse, traditional}
        \line {Other verses, Robert Burns (1759–1796)}
    }
songTranslator = \markup \null
tuneComposer = "Traditional"
tuneSource = \markup {from \italic {Favorite Songs and Hymns for School and Home}, 1899} 

global = {
    \key g \major
    \time 2/4
    \autoBeamOff
    \tempo 4 = 60
}

sopMusic = \relative c' {
  \partial 8 d8^\p |
  g8. g16 g8 b |
  a8. g16 a8 b |
  g8. g16 b8 d |
  e4.  e8 |
  d8. b16 b8 g |
  
  a8. g16 a8 b |
  \slurDotted g8.( e16) e8( d) |
  g4 b8\rest 
    \repeat volta 2 {
        e8 |
        d8.[ b16] b8[ g] |
        a8. g16 a8 b16\rest b |
  
        b8.[ g16] b8.[ d16] |
        e4.  e8 |
        d8. b16 b8 g |
        a8. g16 a8 b |
        g8.[ e16] e8[ d] |
        g4  b8\rest 
    }
}

altoMusic = \relative c' {
  d8 |
  d8. d16 d8 g |
  fis8. e16 fis8 fis |
  d8. d16 g8 g |
  g4. g8 |
  g8. g16 g8 g |
  
  fis8. e16 fis8 g |
  \slurDotted e8.( c16) c8( c) |
  b4 s8 
  g'8 |
  g4 g |
  fis8. e16 fis8 s16 g |
  
  g8.[ e16] g8.[ b16] |
  c4. c8 |
  b8. g16 g8 g |
  fis8. e16 fis8 fis |
  e4 c4 |
  b4 s8 \bar ":|"
}
altoWords = \lyricmode {
  
  \set stanza = #"1. "
  \set ignoreMelismata = ##t
  Should auld ac -- quain -- tance be for -- got,
  And nev -- er brought to mind?
  Should auld ac -- quain -- tance be for -- got,
  And days of auld lang syne?

  \unset ignoreMelismata
  \set associatedVoice = "sopranos"
  For auld lang syne, my dear,
  For auld lang syne;
  We’ll tak’ a cup o’ kind -- ness yet
  For auld lang syne.
  
}
altoWordsII = \lyricmode {
  
%\markup\italic
  \set stanza = #"2. "
  We twa ha’e run a -- boot the braes,
  And pu’d the gow -- ans fine;
  But_we’ve wan -- der’d mon -- y~a wea -- ry foot,
  Sin’ auld __ lang __ syne.
}
altoWordsIII = \lyricmode {
  
  \set stanza = #"3. "
  We twa ha’e sport -- ed i’ the burn,
  Frae morn -- in’ sun till dine,
  But seas be -- tween us braid ba’e roared
  Sin’ auld __ lang __ syne.
}
altoWordsIV = \lyricmode {
  
  \set stanza = #"4. "
  And here’s a hand, my trust -- y frien’,
  And gie’s a hand o’ thine;
  We’ll tak’ a cup o’ kind -- ness yet,
  For auld __ lang __ syne.
}
altoWordsV = \lyricmode {
  \set stanza = #"5. "
  \set ignoreMelismata = ##t
}
altoWordsVI = \lyricmode {
  \set stanza = #"6. "
  \set ignoreMelismata = ##t
}
tenorMusic = \relative c' {
  b8 |
  b8. b16 b8 d |
  d8. d16 d8 d |
  b8. b16 d8 b |
  c4. c8 |
  b8. d16 d8 b |
  
  d8. d16 d8 d |
  \slurDotted c8.( g16) fis8( fis) |
  g4 s8 
  c |
  b8.[ d16] d4 |
  d8. d16 d8 s16 d |
  
  d4 d |
  c4. c8 |
  d8. d16 d8 b |
  d8. d16 d8 d |
  b4 fis |
  g s8 \bar ":|"
}

bassMusic = \relative c {
  g'8 |
  g8. g16 g8 g |
  d8. d16 d8 d |
  g8. g16 g8 g |
  c,4. c8 |
  g'8. g16 g8 g |
  
  d8. d16 d8 g |
  \slurDotted c,8.( c16) d8( d) |
  g,4 d'8\rest 
  g |
  g4 g4 |
  d8. d16 d8 d16\rest g |
  
  g4 g |
  c,4. c8 |
  g'8. g16 g8 g |
  d8. d16 d8 b |
  e4 d |
  g, d'8\rest \bar ":|"
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
                \new Voice = "sopranos" { \voiceOne << \global \sopMusic >> }
                \new Voice = "altos" { \voiceTwo << \global \altoMusic >> }
            >>
            \new Lyrics = "altos"   \lyricsto "altos" \altoWords
            \new Lyrics = "altosII"   \lyricsto "altos" \altoWordsII
            \new Lyrics = "altosIII"   \lyricsto "altos" \altoWordsIII
            \new Lyrics = "altosIV"   \lyricsto "altos" \altoWordsIV
            \new Lyrics = "altosV"   \lyricsto "altos" \altoWordsV
            \new Lyrics = "altosVI"   \lyricsto "altos" \altoWordsVI
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
}

