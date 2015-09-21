\version "2.14.2"

songTitle = "A Cradle-Song of the Blessed Virgin"
songPoet = \markup \null
songTranslator = "tr. Rev. H.R. Bramley (1833–1917) from Latin"
tuneComposer = "Joseph Barnby (1838–1896)"
tuneSource = \markup {from \italic {Christmas Carols, New and Old}}

global = {
    \key f \major
    \time 6/8
    \autoBeamOff
    \tempo "Allegretto non troppo." 4 = 90
}

sopMusic = \relative c' {
  \partial 8 a'8 |
  a4 a8 c4 a8 |
  a4. g4 a8 |
  bes4 bes8 d4 c8 |
  
  bes4. a4  a8 |
  b4 b8 c4 a8 |
  g4( \acciaccatura b8 a8) g4 g8 |
  
  e'4 e8 d4 c8 |
  c4.( d) |
  c( c4) 
  c8^\markup\italic"piu lento." |
  
  c4 a8 g4 f8 |
  f4 g8 a4 bes8 |
  g4.(~ g |
  f~ f4) 
}
  

altoMusic = \relative c' {
  f8 |
  f4 f8 f4 f8 |
  f4. f4 f8 |
  f4 f8 e4 e8 |
  
  e4. f4 f8 |
  f4 f8 f4 f8 |
  f4. f4 f8 |
  
  e4 e8 f4 fis8 g4.( f) |
  e~ e4 e8 |
  
  f4 f8 ees4 ees8 |
  d4 d8 d4 d8 |
  d4.(\( e\) |
  f~ f4)
  
}

altoWords = \lyricmode { 
  \set stanza = #"1. "
  The Vir -- gin stills the cry -- ing
  Of Je -- sus, sleep -- less ly -- ing;
  And sing -- ing for His plea -- sure,
  Thus calls up -- on her Trea -- sure,
  “My Dar -- ling, do not weep, My Je -- su, sleep!” __ 
}

altoWordsII = \lyricmode {
  \set stanza = #"2. "
  O Lamb, my love in -- vit -- ing,
  O Star, my soul de -- light -- ing,
  O Flow’r of mine own bear -- ing,
  O Jew -- el past com -- par -- ing! 
}

altoWordsIII = \lyricmode { 
  \set stanza = #"3. "
  My Child, of Might in -- dwell -- ing,
  My Sweet, all sweets ex -- cell -- ing,
  Of bliss the Foun -- tain flow -- ing,
  The Day -- spring ev -- er glow -- ing,
}

altoWordsIV = \lyricmode { 
  \set stanza = #"4. "
  My Joy, my Ex -- ul -- ta -- tion,
  My spi -- rit’s Con -- so -- la -- tion;
  My Son, my Spouse, my Bro -- ther,
  O lis -- ten to Thy Mo -- ther!
}

altoWordsV = \lyricmode { 
  \set stanza = #"5. "
  Say, wouldst Thou heav’n -- ly sweet -- ness,
  Or love of an -- sw’ring meet -- ness?
  Or is fit mu -- sic want -- ing?
  Ho! An -- gels, raise your chant -- ing!
}

tenorMusic = \relative c' {
  c8 |
  c4 c8 a4 c8 |
  d4. d4 d8 |
  d4 d8 bes4 c8 |
  
  d4( c8) c4 c8 |
  b4 b8 a4 c8 |
  d4( c8) b4 b8 |
  
  c4 c8 d4 ees8 |
  e!4.( b) |
  c( bes!4) bes8 |
  
  a4 a8 c4 c8 |
  c4 bes8 bes4 bes8 |
  bes4.(~ bes |
  a~ a4) 
}

bassMusic = \relative c {
  f8 |
  f4 f8 f4 f8 |
  bes4. bes4 a8 |
  g4 g8 c,4 c8 |
  
  f4. f4 e8 |
  d4 d8 c4 c8 |
  b4( c8) d4 g,8 |
  
  c4 c8 a4 a8 |
  g4.~ g |
  c( c4) c8 |
  
  f4 f8 a,4 a8 |
  bes4 bes8 g4 g8 |
  c4.(~ c |
  f~ f4) 
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
                \new Voice = "sopranos" {
                    \voiceOne
                    \global
                    \repeat volta 5 {
                        \sopMusic
                    }
                }
                \new Voice = "altos" {
                    \voiceTwo
                    \global
                    \repeat volta 5 {
                        \altoMusic
                    }
                }
            >>
            \new Lyrics = "altos"   \lyricsto "sopranos" \altoWords
            \new Lyrics = "altosII"   \lyricsto "sopranos" \altoWordsII
            \new Lyrics = "altosIII"  \lyricsto "sopranos" \altoWordsIII
            \new Lyrics = "altosIV"   \lyricsto "sopranos" \altoWordsIV
            \new Lyrics = "altosV"   \lyricsto "sopranos" \altoWordsV
            \new Staff = men <<
                \clef bass
                \new Voice = "tenors" {
                    \voiceOne
                    \global
                    \repeat volta 5 {
                        \tenorMusic
                    }
                }
                \new Voice = "basses" {
                    \voiceTwo
                    \global
                    \repeat volta 5 {   
                        \bassMusic
                    }
                }
            >>
        >>
    >>
  \layout { }
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



