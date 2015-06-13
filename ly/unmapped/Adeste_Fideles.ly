\version "2.14.2"

songTitle = "Adeste Fideles"
songPoet = "John Francis Wade (1711–1786)"
tuneComposer = \markup{from \italic{Cantus Diversi}, 1751}
tuneSource = \markup { from \italic {Christmas Carols and Hymns for School and Choir}, 1910}

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
  \slurDotted cis4.( cis8) b4 a |
  a2 gis4( fis) | 
  
  \slurSolid
  gis( a) \slurDotted b( cis) |
  gis2( fis4.) e8 |
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
  \slurDotted e4.( e8) e4 cis |
  \slurSolid cis( dis) \slurDotted e( dis) |
  
  \slurSolid e( dis8[) cis] \slurDotted b4( e) |
  e2( dis4.) e8 |
  e2. s4 |
  e2 fis8[ gis] a4 |
  \slurSolid a( \slurDotted gis)( a2) |
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
    Ad -- e -- ste fi -- de -- les, Læ -- ti tri -- um -- phan -- _ tes,
    Ve -- ni -- te, ve -- ni -- _ te in Beth -- _ le -- hem; Na -- tum vi -- de -- te,
    Re -- gem an -- ge -- lo -- _ rum;
  \unset ignoreMelismata
  }
  \set stanza = \markup\dynamic"mf  "
  \lyricmode {
    Ve -- ni -- te ad -- o -- re -- mus,
  }
  \set stanza = \markup\dynamic" f "
  \lyricmode {
    Ve -- ni -- te ad -- o -- re -- mus,
  }
  \set stanza = \markup\dynamic"ff  "
  \lyricmode {
    
    Ve -- ni -- te ad -- o -- re -- mus, __ Do -- mi -- num.
  }
}
altoWordsII = \lyricmode {
  
  \set stanza = #"2. "
  \set ignoreMelismata = ##t
  _ De -- um de De -- o, lu -- _ men de lu -- mi -- ne, ""
  Ges -- tant pu -- el -- _ læ __ _ vi -- _ sce -- ra.
  De -- um __ _ ve -- rum, ge -- ni -- tum non fac -- _ tum.
}
altoWordsIII = \lyricmode {
  
  \set stanza = #"3. "
  \set ignoreMelismata = ##t
  _ Can -- tet nunc ‘I -- o,’ cho -- rus an -- ge -- lo -- _ rum_; ""
  Can -- tet nunc au -- _ la __ _ cæ -- les -- ti -- um,
  Glo -- ri -- _ a! __ _ So -- li De -- o Glo -- ri -- a!
}
altoWordsIV = \lyricmode {
  
  \set stanza = #"4. "
  \set ignoreMelismata = ##t
  _ Er -- go qui na -- tus di -- e ho -- di -- er -- _ na. ""
  Je -- su, __ _ ti -- _ bi sit glo -- _ ri -- a,
  Pa -- tris æ -- ter -- ni Ver -- bum ca -- ro fac -- _ tum.
}

tenorMusic = \relative c' {
  \partial 4 cis4 |
  cis2 cis4 cis |
  b2 b |
  a4 b a a |
  \slurDotted a4.( a8) gis4 a |
  a2 b4( b) |
  
  \slurSolid b( a) \slurDotted e'( cis) |
  b2( a4.) gis8 |
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
  \slurDotted e4.( e8) e4 fis |
  fis2 e4( b) |
  
  \slurSolid e( cis) \slurDotted gis( a) |
  b2( b4.) e8 |
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
\header {
  title = \songTitle
  poet = \songPoet
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

