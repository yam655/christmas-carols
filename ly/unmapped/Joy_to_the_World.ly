\version "2.14.2"

%% CONFIRM: Is the arrangement legit?
%% See: http://www.hymnsandcarolsofchristmas.com/Hymns_and_Carols/joy_to_the_world-1.htm

songTitle = "Joy to the World!"
songPoet = "Isaac Watts (1674–1748)"
tuneComposer = \markup {\smallCaps{Antioch} by Lowell Mason (1792–1872)}
tuneSource = \markup {from \italic {Hymns of the Kingdom of God}, 1910} % , via \italic{HymnsAndCarolsOfChristmas.com}}

\header {
  title = \songTitle
  poet = \songPoet 
  composer = \tuneComposer 
  source = \tuneSource 
}

global = {
    \key d \major
    \time 2/4
    \autoBeamOff
    \tempo 4 = 70
}

sopMusic = \relative c'' {
  d4 cis8.\noBeam b16 |
  a4. g8 |
  fis4 e |
  d4. a'8 |
  b4. b8 | 
  
  cis4. cis8 |
  d4.\fermata d8 |
  d[ cis] b[ a] |
  a8.[ g16 fis8] d' |
  d[ cis] b[ a] | 
  
  a8.[ g16 fis8] fis |
  fis\noBeam fis\noBeam fis\noBeam fis16[ g] |
  a4. g16[ fis] |
  e8\noBeam e\noBeam e\noBeam e16[ fis] | 
  
  g4. fis16[ e] |
  d8( d'4) b8 |
  a8.[ g16 fis8] g |
  fis4 e |
  d2 \bar "|."
}
  

altoMusic = \relative c' {
  fis4 a8.\noBeam g16 |
  fis4. e8 |
  d4 cis |
  d4. a'8 |
  g4. g8 |
  
  g4. g8 |
  fis4. fis8 |
  fis8[ a] g[ fis] |
  fis8.[ e16 d8] fis |
  fis[ a] g[ fis] |
  
  fis8.[ e16 d8] d |
  d\noBeam d\noBeam d\noBeam d16[ e] |
  fis4. e16[ d] |
  cis8\noBeam cis\noBeam cis\noBeam cis16[ d] |
  
  e4. d16[ cis] |
  d8( fis4) g8 |
  fis8.[ e16 d8] e8 |
  d4 cis |
  d2
}

commonLyricsA = \lyricmode {
    \set stanza = #"1. "
    Joy to the world! the Lord is come;
    Let earth re -- ceive her King;
    Let ev -- ’ry __ heart __ pre -- pare __ Him 
    room, __
}

altoLyricsA = \lyricmode { 
    \commonLyricsA
    And heav’n and na -- ture sing,
    And heav’n and na -- ture sing, 
    And heav’n, and heav’n __ and na -- ture sing.
}

tenorLyricsA = \lyricmode {
    \commonLyricsA 
    And heav’n and na -- ture sing, __
    And heav’n, and heav’n __ and na -- ture sing.
} 

bassLyricsA = \lyricmode {
    \commonLyricsA 
    And heav’n and na -- ture sing,
    And heav’n and na -- ture sing,
    And heav’n and na -- ture sing.
}

commonLyricsB = \lyricmode {
    \set stanza = #"2. "
    Joy to the world! the Sav -- ior reigns;
    Let men their songs em -- ploy;
    While fields and __ floods, __ rocks, hills __ and __ 
    plains __
}

altoLyricsB = \lyricmode { 
    \commonLyricsB
    Re -- peat the sound -- ing joy,
    Re -- peat the sound -- ing joy,
  
    Re -- peat, __ re -- peat __ the sound -- ing joy.
}

tenorLyricsB = \lyricmode {
    \commonLyricsB
    Re -- peat the sound -- ing joy, __
    Re -- peat, __ re -- peat __ the sound -- ing joy.
}

bassLyricsB = \lyricmode {
    \commonLyricsB
    Re -- peat the sound -- ing joy,
    Re -- peat the sound -- ing joy,
    Re -- peat the sound -- ing joy.
}

commonLyricsC = \lyricmode { 
    \set stanza = #"3. "
    He rules the world with truth and grace.
    And makes the na -- tions prove
    the glo -- ries __ of __ His right -- eous -- 
    ness, __
}

altoLyricsC = \lyricmode {
    \commonLyricsC
    And won -- ders of His love,  
    And won -- ders of His love, 
    And won -- ders, won -- ders of His love.
}

tenorLyricsC = \lyricmode {
    \commonLyricsC
    And won -- ders of His love, __
    And won -- ders, won -- ders of His love.
}

bassLyricsC = \lyricmode {
    \commonLyricsC
    And won -- ders of His love,
    And won -- ders of His love,
    And won -- ders of His love.
}

tenorMusic = \relative c' {
  a4 d8.\noBeam d16 |
  d4. b8 |
  a4. g8 |
  fis4. d'8 |
  d4. d8 |
  
  a4. a8 |
  a4. a8 |
  a4 d |
  d( a8)\noBeam a8 |
  a4 d |
  
  d( a8) d,\rest |
  d4\rest d8\rest a' |
  a\noBeam a\noBeam a\noBeam a\noBeam |
  a2~ |
  
  a4. a16[ g] |
  fis8( a4) d8 |
  d4( a8)\noBeam b |
  a4. g8 |
  fis2
}

bassMusic = \relative c {
  d4 d8.\noBeam d16 |
  d4. g,8 |
  a4 a |
  d4. fis8 |
  g4. g8 |
  
  a4. a8 |
  d,4.\fermata d8 |
  d4 d |
  d4. d8 |
  d4 d |
  
  d4. r8 |
  r4. d8 |
  d\noBeam d\noBeam d\noBeam d\noBeam |
  a'4. a,8 |
  
  a8\noBeam a\noBeam a\noBeam a\noBeam |
  d4. d8 |
  d4. g,8 |
  a4 a |
  d2
}

\bookpart {
\score {
    <<
        \new ChoirStaff <<
            \new Staff <<
                \new Voice = "sopranos" { \global \sopMusic }
                \new Lyrics \lyricsto "sopranos" \altoLyricsA
                \new Lyrics \lyricsto "sopranos" \altoLyricsB
                \new Lyrics \lyricsto "sopranos" \altoLyricsC
            >>
            \new Staff <<
                \new Voice = "altos" { \global \altoMusic }
                \new Lyrics \lyricsto "altos" \altoLyricsA
                \new Lyrics \lyricsto "altos" \altoLyricsB
                \new Lyrics \lyricsto "altos" \altoLyricsC
            >>
            \new Staff <<
                \clef bass
                \new Voice = "tenors" { \global \tenorMusic }
                \new Lyrics \lyricsto "tenors" \tenorLyricsA
                \new Lyrics \lyricsto "tenors" \tenorLyricsB
                \new Lyrics \lyricsto "tenors" \tenorLyricsC
            >>
            \new Staff <<
                \clef bass
                \new Voice = "basses" { \global \bassMusic }
                \new Lyrics \lyricsto "basses" \bassLyricsA
                \new Lyrics \lyricsto "basses" \bassLyricsB
                \new Lyrics \lyricsto "basses" \bassLyricsC
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

