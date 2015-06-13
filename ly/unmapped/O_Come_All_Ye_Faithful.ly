\version "2.14.2"

\header {
  title = "O Come, All Ye Faithful"
  poet = "Translated by Frederick Oakley (1802–1880)"
  composer = "John Francis Wade (1711–1786)"
  %source = \markup { "from" \concat{\italic "Christmas Carols and Hymns for School and Choir" ", 1910"}}
}

global = {
  \key a \major
  \time 4/4
  \autoBeamOff
  \tempo 4 = 100
}

sopMusic = \relative c'' {
  \partial 4 a4 |
  a2 e4 a |
  b2 e, |
  cis'4 b cis d |
  \slurDotted cis2 b4  a |
  a2 gis4 fis |
  
  gis( a)( b) cis |
  \slurSolid gis2( fis4.) e8 |
  e2. b'4\rest |
  e2 d4 cis |
  \slurDotted d2( cis) |
  b4 cis a b |
  \slurSolid gis4.( fis8) e4  
  
  a4 |
  a gis a b |
  a2 e4 cis'4 |
  cis b cis d |
  cis2 b4  cis |
  
  d cis b a |
  gis2 a4( d) |
  cis2( b4.) a8 |
  a2. \bar "|."
}

altoMusic = \relative c' {
  \partial 4 e4 |
  e2 e4 e |
  e2 e |
  e4 e e fis |
  e2 e4 cis |
  cis( dis) e dis |
  
  \slurDotted e( dis8[) cis]( b4) e |
  \slurSolid e2( dis4.) e8 |
  e2. s4 |
  e2 fis8[ gis] a4 |
  a( \slurDotted gis)( a2) |
  e4 e fis fis |
  \slurSolid e2 e4 
  
  e4 |
  e1~ |
  e2 e4 e |
  e e e e |
  e2 e4 a |
  
  gis a e e8[ dis] |
  e2 e4( fis) |
  e2( d4.) cis8 |
  cis2. \bar "|."
}
altoWords = {
  
  \lyricmode {
    \set stanza = #"1. "
    \set ignoreMelismata = ##t
    O come, all ye faith -- ful, Joy -- ful and tri -- um -- phant, O come ye, O come _ ye to Beth -- _ le -- hem; Come and be -- hold Him, Born the King of an -- _ gels;
  }
  \set stanza = \markup\dynamic"mf  "
  \lyricmode {
    \unset ignoreMelismata
    O come, let us a -- dore Him,
  }
  \set stanza = \markup\dynamic" f "
  \lyricmode {
    O come, let us a -- dore Him,
  }
  \set stanza = \markup\dynamic"ff  "
  \lyricmode {
    
    O come, let us a -- dore Him, __ Christ, __ the Lord!
  }
}
altoWordsII = \lyricmode {
  
  \set stanza = #"2. "
  \set ignoreMelismata = ##t
  _ God, of __ _ God, __ _
  Light __ _ of __ _ Light, __ _ ""
  Lo, He ab -- hors _ not the Vir -- _ gin’s womb;
  Ve -- ry __ _ God,
  Be -- got -- ten, not cre -- at -- _ ed:
}
altoWordsIII = \lyricmode {
  
  \set stanza = #"3. "
  \set ignoreMelismata = ##t
  _ Sing, choirs of an -- gels, Sing with ex -- ul -- ta -- tions, ""
  Sing, all ye cit -- i -- zens of heav’n _ a -- bove;
  Glo -- ry to God, __ _ Glo -- ry in the high -- _ est;
}
altoWordsIV = \lyricmode {
  
  \set stanza = #"4. "
  \set ignoreMelismata = ##t
  _ Yea, Lord, we greet Thee, Born this hap -- py morn -- ing, ""
  Je -- sus, to Thee __ _ _ be glo -- _ ry giv’n;
  Word of the Fa -- ther, Now in flesh ap -- pear -- _ ing;
}

tenorMusic = \relative c' {
  \partial 4 cis4 |
  cis2 cis4 cis |
  b2 b |
  a4 b a a |
  \slurDotted a2 gis4 a |
  a2 b4 b |
  
  b( a)( e') cis |
  \slurSolid b2( a4.) gis8 |
  gis2. d4\rest |
  cis'2 d4 e |
  \slurDotted e2( e2) |
  e4 a, cis d |
  \slurSolid b4.( a8) gis4 
  
  cis4 |
  cis b cis d |
  cis2. a4 |
  a gis a b |
  a2 gis4 e' |
  
  e e b b |
  b2 a |
  a( gis4.) a8 |
  a2. \bar "|."
}

bassMusic = \relative c' {
  \partial 4 a4 |
  a2 a4 a |
  gis2 gis |
  a4 gis a d, |
  \slurDotted e2 e4 fis |
  fis2 e4 b |
  
  e( cis)( gis) a |
  b2~b4. e8 |
  e2. s4 |
  cis'2 b4 a |
  b2( a2) |
  gis4 a fis d |
  e2 e4 
  
  \slurSolid d\rest |
  g,1\rest |
  g1\rest |
  g1\rest |
  g2\rest f4\rest a'4 |
  
  b a gis fis |
  e( d) cis( d) |
  e2~e4. a,8 |
  a2. \bar "|."
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
            \new Lyrics = "altosIII"   \lyricsto "sopranos" \altoWordsIII
            \new Lyrics = "altosIV"   \lyricsto "sopranos" \altoWordsIV
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

