﻿\version "2.14.2"

songTitle = "As Lately We Watched"
songPoet = \markup"Anonymous"
tuneComposer = \markup"19th Century Austrian"
tuneSource = \markup \null

global = {
    \key aes \major
    \time 3/4
    \autoBeamOff
    \tempo 4 = 120
}

sopMusic = \relative c' {
  \partial 4 ees4^\mf |
  aes aes bes |
  aes c8[ bes] aes[ g] |
  f4 bes g |
  
  aes2  ees4 |
  aes4 aes4 bes |
  aes c8[ bes] aes[ g] |
  f4 bes g |
  aes2. | 
  
  c4 c8[ bes] aes[ g] |
  f2. |
  bes4 bes8[ aes] g[ f] |
  ees2  ees4 |
  
  aes aes bes |
  aes c8[ bes] aes[ g] |
  f4 bes g |
  aes2 \bar "|."
}
  

altoMusic = \relative c' {
  ees4 |
  ees f g |
  ees aes8[ g] ees4 |
  des f ees |
  
  ees2 ees4 |
  c ees ees |
  ees aes8[ g] ees4 |
  des f ees |
  ees2. |
  
  ees4 ees8[ e] f[ ees] |
  des2. |
  d4 f d |
  bes2 ees4 |
  
  ees c ees |
  ees aes8[ g] ees4 |
  des f ees |
  ees2 \bar "|."
}
altoWords = \lyricmode {
  
  \set stanza = #"1. "
  As late -- ly we watch’d o’er our fields thro’ the night,
  A star there was seen of __ such glo -- ri -- ous light;
  All thro’ __ the __ night, an -- gels did __ sing,
  In ca -- rols, so sweet, of __ the __ birth of a King.
}
altoWordsII = \lyricmode {
  
%\markup\italic
  \set stanza = #"2. "
  A King of such beau -- ty __ was ne’er  be -- fore seen,
  And Ma -- ry His moth -- er __ so __ like to a queen.
  Blest be __ the __ hour, wel -- come the __ morn,
  For Christ our dear Sav -- ior __ on __ earth now is born.
}
altoWordsIII = \lyricmode {
  
  \set stanza = #"3. "
  His throne is a man -- ger, __ His court is a loft,
  But troops of bright an -- gels, in __ lays sweet and soft,
  Him they __ pro -- claim, our Christ by __ name,
  And earth, sky and air straight are __ fill’d with His fame.
}
altoWordsIV = \lyricmode {
  
  \set stanza = #"4. "
  Then shep -- herds, be joy -- ful, __ sa -- lute your liege King,
  Let hills and dales ring to __ the __ song that ye sing,
  Blest be __ the __ hour, wel -- come the __ morn,
  For Christ our dear Sav -- ior __ on __ earth now is born.
}
altoWordsV = \lyricmode {
}
altoWordsVI = \lyricmode {
}
tenorMusic = \relative c {
  ees4_\mf |
  c' c ees |
  c ees aes, |
  aes des des |
  
  des( c) g |
  aes aes g8[ des'] |
  c4 ees aes, |
  aes des des |
  des2( c4) |
  
  c4 c c |
  aes2. |
  bes4 bes bes8[ aes] |
  g2 g4 |
  
  aes4 aes g |
  c ees aes, |
  aes des des |
  c2 \bar "|."
}
tenorWords = \lyricmode {

}

bassMusic = \relative c {
  ees4 |
  aes8[ g] f4 ees |
  aes aes,8[ bes] c4 |
  des8[ c] bes4 ees |
  
  aes,2 ees'4 |
  f c ees |
  aes aes,8[ bes] c4 |
  des8[ c] bes4 ees |
  aes,2. |
  
  aes'4 aes8[ g] f[ c] |
  des2. |
  bes4 d bes |
  ees2 ees8[ des] |
  
  c4 f ees |
  aes aes,8[ bes] c4 |
  des8[ c] bes4 ees |
  aes,2 \bar "|."
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
    \new Lyrics = "altosVI"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsVI
    \new Lyrics = "altosV"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsV
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "sopranos" \altoWords
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "tenors" \tenorWords
  >>
  >>
  \layout { }
  \midi {
    \set Staff.midiInstrument = "flute"
  
    \context {
      \Voice
      \remove "Dynamic_performer"
    }
  }
}
}

