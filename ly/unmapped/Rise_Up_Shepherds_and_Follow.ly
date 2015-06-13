\version "2.14.2"

\header {
  title = "Rise Up, Shepherds, and Follow"
  poet = "Traditional"
  composer = "Spiritual"
  arranger = "arr. Allen L. Richardson"
  source = ""
}

global = {
    \key ees \major
    \time 4/4
    \tempo 4 = 120
}

sopMusic = \relative c'' {
  \partial 4 ees8\noBeam^\mf c |
  \slurDotted
  ees4 ees8\noBeam( c) ees4 c8\noBeam( c) |
  \slurSolid
  c4 bes bes2 |
  bes4^\p bes des8\noBeam des c4 |
  bes8 bes4. bes4\rest ees8\noBeam^\f c | 
  
  \slurDotted
  ees4 c8\noBeam( c) ees4 c8\noBeam c |
  \slurSolid
  bes4 c g8[( f] ees4) |
  g4^\mf g f8\noBeam f ees4 |
  c8 ees4. bes'2\rest \bar "||" 
  
  ees,4^\markup{\dynamic"f" \italic "più mosso"} g bes bes |
  c-> c-> bes2-> |
  bes4^\markup\italic"rit." bes des8\noBeam des c4 |
  bes8 bes4. bes2\rest |
  ees,4^\markup\italic"a tempo" g bes bes |
  
  c-> c-> bes2-> |
  g4^\markup\italic"rit." g f8\noBeam f ees4 |
  c8 ees4. bes'2\rest |
  ees,4.(^\ff^\<^\markup\italic"a tempo" g8) bes2 |
  bes bes |
  
  bes4\! bes des8\noBeam des^\> c4 |
  bes8\! bes4. bes2\rest |
  ees,4^\< g8.\noBeam g16 bes4 bes\! |
  c^\> bes g8[( f] ees4) |
  g\!^\markup{\dynamic "p" \italic"rit."} g f8\noBeam f ees4 |
  c8 ees4.\fermata bes'4\rest \bar "|."
}

altoMusic = \relative c'' {
  g8\noBeam aes |
  \slurDotted
  g4 g8\noBeam( aes) g4 g8\noBeam( g) |
  \slurSolid
  aes4 aes g2 |
  f4 f e8\noBeam e ees4 |
  d8 d4. s4 ees8\noBeam  f |
  
  \slurDotted
  g4 aes8\noBeam( aes) g4 f8\noBeam f |
  \slurSolid
  d4 d d( ees) |
  ees ees d8\noBeam  d c4 |
  c8 bes4. s2 \bar "||"
  
  ees4 g bes bes |
  c c bes2 |
  f4 f e8\noBeam e ees4 |
  d8 d4. s2 |
  ees4 g bes bes |
  
  c c bes2 |
  ees,4 ees d8\noBeam d c4 |
  c8 bes4. s2 |
  ees4.( g8) bes2 |
  bes bes |
  
  f4 f e8\noBeam e ees4 |
  d8 d4. s2 |
  ees4 g8.\noBeam g16 bes4 bes |
  c bes g8[( f] ees4) |
  ees4 ees d8\noBeam d c4 |
  c8 bes4. s4 \bar "|."
}
altoWords = \lyricmode {
  
  \set stanza = #"1. "
  \set ignoreMelismata = ##t
  There’s a star in the East on _ Christ -- mas morn,
  Rise up, shep -- herds, and fol -- low;
  It -- ’ll lead to the place where the Sav -- ior’s born, _ _
  Rise up, shep -- herds, and fol -- low;
  
  Leave your ewes and leave your lambs,
  Rise up, shep -- herds, and fol -- low,
  Leave your sheep and leave your rams,
  Rise up, shep -- herds, and fol -- low.
  Fol -- _ low, fol -- low,
  Rise up, shep -- herds, and fol -- low;
  Fol -- low the star of Beth -- le -- hem, _ _
  Rise up, shep -- herds, and fol -- low.
}
altoWordsII = \lyricmode {
  
%\markup\italic
  \set stanza = #"2. "
  \set ignoreMelismata = ##t
  If you take good _ heed to the An -- gels’ words,
  Rise up, shep -- herds, and fol -- low;
  You’ll for -- get your _ flocks, you’ll for -- get your herds, _ _
  Rise up, shep -- herds, and fol -- low.
}
tenorMusic = \relative c' {
  bes8\noBeam_\mf c |
  \slurDotted
  bes4 bes8\noBeam( c) bes4 c8\noBeam( c) |
  \slurSolid
  ees4 d ees2 |
  des4_\p des bes8\noBeam bes a4 |
  aes!8 aes4. s4 g8\noBeam_\f aes |
  
  \slurDotted
  bes4 c8\noBeam( c) bes4 aes8\noBeam aes |
  \slurSolid
  bes4 aes aes( g) |
  a4_\mf a aes8\noBeam aes aes4 |
  aes8 g4. s2 \bar "||"
  
  ees4_\f g bes bes |
  c c bes2 |
  des4_\markup\italic"rit." des bes8\noBeam bes a4 |
  aes!8 aes4. s2 |
  ees4 g bes bes |
  
  c c bes2 |
  a4_\markup\italic"rit." a aes8\noBeam aes aes4 |
  aes8 g4. s2 |
  ees4.(_\ff_\< g8) bes2 |
  bes bes |
  
  des4\! des bes8\noBeam bes_\> a4 |
  aes!8\! aes4. s2 |
  ees4_\< g8.\noBeam g16 bes4 bes\! |
  c4_\> bes g8[( f] ees4) |
  bes'4_\p a aes8\noBeam aes aes4 |
  aes8 g4. s4 \bar "|."
}


bassMusic = \relative c {
 ees8\noBeam ees |
 \slurDotted
 ees4 ees8\noBeam( ees) ees4 e8\noBeam(e) |
 \slurSolid
 f4 bes ees,2 |
 bes'4 aes g8\noBeam g fis4 |
 f!8 bes,4. d4\rest ees8\noBeam ees |
 
 \slurDotted
 ees4 ees8\noBeam( ees) ees4 ees8\noBeam ees |
 \slurSolid
 bes4 bes b( c) |
 f f bes,8\noBeam bes bes4 |
 ees8 ees4. d2\rest \bar "||"
 
 ees4 g bes bes |
 c-> c-> bes2-> |
 bes4 aes g8\noBeam g fis4 |
 f!8 bes,4. d2\rest |
 ees4 g bes bes |
 
 c-> c-> bes2-> |
 f4 f bes,8\noBeam bes bes4 |
 ees8 ees4. d2\rest |
 ees4.( g8) bes2 |
 bes bes |
 
 bes4 aes g8\noBeam g fis4 |
 f!8 bes,4. d2\rest |
 ees4 g8.\noBeam g16 bes4 bes |
 c bes g8[( f] ees4) |
 ees4 f bes,8\noBeam bes bes4 |
 ees8 ees4.\fermata d4\rest \bar "|."
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

