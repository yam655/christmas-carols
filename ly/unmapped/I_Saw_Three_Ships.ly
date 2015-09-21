\version "2.14.2"


songTitle = "I Saw Three Ships"
songPoet = "Traditional"
tuneComposer = "Traditional English (Derbyshire)"
tuneSource = \markup { from \italic {Christmas Carols, New and Old}}

global = {
    \key g \major
    \time 6/8
    \autoBeamOff
    \tempo "Briskly" 4 = 120
}

sopMusic = \relative c' {
    \partial 8
    d8 |
    g4 g8 a4 b8 |
    d4 b8 a4 c8 |
    
    b4 g8 g4 b8 |
    a4 fis8 d4 d8 |
    g4 g8 a4 b8 |

    d4 b8 a4 c8 |
    b4 g8 g\noBeam a\noBeam b |
    a4. g4 
}


altoMusic = \relative c' {
  d8 |
  d4 d8 d4 d8 |
  d4 d8 d4 d8 |
  
  d4 d8 d4 d8 |
  d4 d8 d4 c8 |
  b4 e8 d4 g8 |
  g[ fis] g8 fis4 a8 |
  g4 d8\noBeam e\noBeam fis\noBeam g |
  fis4. g4
}

tenorMusic = \relative c {
  d8 |
  b'4 b8 c4 b8 |
  a4 g8 fis4 a8 |
  
  g4 b8 b4 g8 |
  fis4 a8 fis4 fis8 |
  g4 b8 a4 d8 |
  
  d[ c] b d4 d8 |
  d4 b8 c\noBeam c\noBeam d |
  d4. b4
}

bassMusic = \relative c {
  d8 |
  g4 g8 g4 g8 |
  fis4 g8 d4 fis8 |
  
  g4 g8 g4 g8 |
  d4 d8 d4 d8 |
  e4 e8 fis4 g8 |
  
  b[ a] g d4 fis8 |
  g4 g8 c\noBeam a\noBeam g |
  d'4. g,4
}

altoLyrics = \lyricmode { 
  \set stanza = #"1. "
  I saw three ships come sail -- ing in,
  On Christ -- mas day, on Christ -- mas day,
  I saw three ships come sail -- ing in,
  On Christ -- mas day in the morn -- ing. 
}

altoLyricsII = \lyricmode { 
  \set stanza = #"2. "
  And what was in those ships all three,
  On Christ -- mas day, on Christ -- mas day,
  And what was in those ships all three,
  On Christ -- mas day in the morn -- ing. 
}

altoLyricsIII = \lyricmode { 
  \set stanza = #"3. "
  The Vir -- gin Ma~ry and Christ were there,
  On Christ -- mas day, on Christ -- mas day,
  The Vir -- gin Ma~ry and Christ were there,
  On Christ -- mas day in the morn -- ing. 
}

altoLyricsIV = \lyricmode { 
  \set stanza = #"4. "
  Pray, whith -- er sailed those ships all three,
  On Christ -- mas day, on Christ -- mas day,
  Pray, whith -- er sailed those ships all three,
  On Christ -- mas day in the morn -- ing. 
}

altoLyricsV = \lyricmode { 
  \set stanza = #"5. "
  O they sailed in to Beth -- le -- hem,
  On Christ -- mas day, on Christ -- mas day,
  O they sailed in to Beth -- le -- hem,
  On Christ -- mas day in the morn -- ing. 
}

altoLyricsVI = \lyricmode { 
  \set stanza = #"6. "
  And all the bells on earth shall ring,
  On Christ -- mas day, on Christ -- mas day,
  And all the bells on earth shall ring,
  On Christ -- mas day in the morn -- ing.
}

altoLyricsVII = \lyricmode { 
  \set stanza = #"7. "
  And all the An~gels in Heav’n shall sing,
  On Christ -- mas day, on Christ -- mas day,
  And all the An~gels in Heav’n shall sing,
  On Christ -- mas day in the morn -- ing.
}
altoLyricsVIII = \lyricmode {
  \set stanza = #"8. "
  And all the souls on earth shall sing,
  On Christ -- mas day, on Christ -- mas day,
  And all the souls on earth shall sing,
  On Christ -- mas day in the morn -- ing.
}
altoLyricsIX = \lyricmode { 
  \set stanza = #"9. "
  \set ignoreMelismata = ##t
  Then let us all re -- joice a -- main,
  On Christ -- mas day, on Christ -- mas day,
  Then let us all re -- joice a -- main,
  On Christ -- mas day in the morn -- ing.
}

\bookpart {
\header {
  title = \songTitle
  poet = \songPoet
  composer = \tuneComposer
}
\score {
    <<
        \new ChoirStaff <<
            \new Staff = women <<
                \new Voice = "sopranos" { \voiceOne << \global \sopMusic >> }
                \new Voice = "altos" { \voiceTwo << \global \altoMusic >> }
            >>
            \new Lyrics = "altos"   \lyricsto "sopranos" \altoLyrics
            \new Lyrics = "altosII"   \lyricsto "sopranos" \altoLyricsII
            \new Lyrics = "altosIII"   \lyricsto "sopranos" \altoLyricsIII
            \new Lyrics = "altosIV"   \lyricsto "sopranos" \altoLyricsIV
            \new Lyrics = "altosV"   \lyricsto "sopranos" \altoLyricsV
            \new Lyrics = "altosVI"   \lyricsto "sopranos" \altoLyricsVI
            \new Lyrics = "altosVII"   \lyricsto "sopranos" \altoLyricsVII
            \new Lyrics = "altosVIII"   \lyricsto "sopranos" \altoLyricsVIII
            \new Lyrics = "altosIX"   \lyricsto "sopranos" \altoLyricsIX
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
        \context {
            \Staff \remove "Staff_performer"
        }
        \context {
            \Voice \consists "Staff_performer"
        }
    }
}
}

