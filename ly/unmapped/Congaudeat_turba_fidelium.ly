\version "2.14.2"

\header {
    title = "Congaudeat turba fidelium"
    poet = "from an 11th Century Manuscript"
    composer = "Old Melody in Hypo-Dorian Mode"
    arranger = "Arranged by G. H. Palmer"
  }

global = {
    \key f \major
    \time 6/4
    \tempo 4 = 180
}

sopMusic = \relative c'' {
    \partial 4
  \repeat volta 2 {
    g4 |
    g( a bes a g) f |
    g2.( d'2)  d4 |
    c( d) ees d( c) d |
    bes2.~ bes4 bes\rest  bes |
    
    d2 c4 d2 g,4 |
    g( a) c bes( a) f |
    a( bes) c bes( a) f |
    g2.~ g2\fermata  
  }
}

altoMusic = \relative c'' {
  g4 |
  e2( f4 f2) f4 |
  e2.( f2) f4 |
  f2 g4 f2 f4 |
  d2.~ d4 s4 bes' |
  
  f2 f4 f2 d4 |
  e2 f4 f2 f4 |
  f2 f4 f2 f4 |
  e2.( d2)
}

altoWords = \lyricmode { 
  \set stanza = #"1. "
  Con -- gau -- de -- at __ tur -- ba fi -- de -- li -- um, __
  Vir -- go ma -- ter pe -- pe -- rit fi -- li -- um
  in Beth -- le -- hem. __ 
}

altoWordsII = \lyricmode { 
  \set stanza = #"2. "  
  Ad pa -- sto -- res __ de -- scen -- dit an -- ge -- lus, __
  Di -- cens e -- is_: na -- tus est Do -- mi -- nus
  in Beth -- le -- hem. __ 
}

altoWordsIII = \lyricmode { 
  \set stanza = #"3. "
  Lo -- que -- ban -- tur __ pa -- sto -- res in -- vi -- cem, __
  Trans -- e -- a -- mus ad no -- vum ho -- mi -- nem
  in Beth -- le -- hem. __ 
}

altoWordsIV = \lyricmode { 
  \set stanza = #"4. "
  Ad præ -- se -- pe __ stant bos et a -- si -- nus, __
  Co -- gno -- ve -- runt quis es -- set Do -- mi -- nus
  in Beth -- le -- hem. __
}

altoWordsV = \lyricmode { 
  \set stanza = #"5. "
  In o -- cta -- va __ dum cir -- cum -- ci -- di -- tur, __
  No -- men e -- i Je -- sus im -- po -- ni -- tur
  in Beth -- le -- hem. __
}

altoWordsVI = \lyricmode { 
  \set stanza = #"6. "
  Tri -- ni, __ tri -- no, __ tri -- na dant mu -- ne -- ra, __
  Re -- gi re -- gum fu -- gen -- ti u -- be -- ra
  in Beth -- le -- hem. __
}

altoWordsVII = \lyricmode { 
  \set stanza = #"7. "
  Col -- ly -- ri -- das __ si -- mul cum nec -- ta -- re __
  Be -- ne -- di -- cat Chri -- stus Rex glo -- ri -- æ
  in Beth -- le -- hem. __
}
tenorMusic = \relative c' {
  g4 |
  c2( d4 c2) a4 |
  c2.( d4 c4) bes |
  a2 bes4 a2 a4 |
  bes2.~ bes4 s4 bes |
  
  bes2 a4 a2 bes4 |
  c2 c4 f,2 a4 |
  d2 c4 d( c) a |
  c2.( b2\fermata)
}


bassMusic = \relative c' {
  g4 |
  c,2( bes4 f'2) f4 |
  c2.( bes2) bes4 |
  f'2 ees4 f2 f4 |
  bes,2.( bes4) d4\rest bes'4 |
  
  bes2 f4 d2 g4 |
  c,2 a4 d2 d4 |
  d2 a4 bes( f') f |
  c2.( g2)
}


\bookpart {
\score {
  <<
   \new ChoirStaff <<
    \new Staff = women <<
      \new Voice = "sopranos" { \voiceOne \global \sopMusic }
      \new Voice = "altos" { \voiceTwo \global \altoMusic }
    >>
    \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne \global \tenorMusic }
      \new Voice = "basses" { \voiceTwo \global \bassMusic }
    >>
    \new Lyrics = "altos"   \lyricsto "sopranos" \altoWords
    \new Lyrics = "altosII"   \lyricsto "sopranos" \altoWordsII
    \new Lyrics = "altosIII"   \lyricsto "sopranos" \altoWordsIII
    \new Lyrics = "altosIV"   \lyricsto "sopranos" \altoWordsIV
    \new Lyrics = "altosV"   \lyricsto "sopranos" \altoWordsV
    \new Lyrics = "altosVI"   \lyricsto "sopranos" \altoWordsVI
    \new Lyrics = "altosVII"   \lyricsto "sopranos" \altoWordsVII
   >>
  >>
  
  \layout {}
  \midi {
    \set Staff.midiInstrument = "flute" 
    %\context { \Voice \remove "Dynamic_performer" }
  }
}
}
