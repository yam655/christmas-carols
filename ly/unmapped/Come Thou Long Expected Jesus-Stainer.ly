\version "2.14.2"
\include "util.ly"
\header {
    %tagline = \markup { "from" \italic {CyberHymnal.org}} 
    title = "Come Thou Long Expected Jesus"
    poet = "Charles Wesley (1707–1788)"
    composer = \markup{\italic{Cross of Jesus}, Sir John Stainer (1840–1901)}
  }

global = {
  \key aes \major
  \time 4/4
  \autoBeamOff
}

sopMusic = \relative c' {
  c'4 aes ees ees |
  ees aes aes g |
  aes c f,8[ g] aes4 |
  des c c( bes) |
  
  aes des des c |
  bes f' f ees |
  ees des c8[ bes] aes4 |
  aes g aes2 \bar "|."
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  ees4 c des des |
  c c8[ d] ees4 ees |
  ees c f ees8[ f] |
  g4 aes aes( g) |
  
  aes8[ g] f4 ees aes8[ ges] |
  f4 f8[ g!] aes4 ges |
  f g!8[ f] e4 c8[ d] |
  ees4 ees8[ des] c2 \bar "|."
}
altoWords = \lyricmode {
  \dropLyricsVII
  \set stanza = #"1. "
  Come, Thou long ex -- pect -- ed Je -- sus,
  born to set __ Thy peo -- ple free;
  from our fears and sins re -- lease us, let us find our rest in Thee.
}
altoWordsII = \lyricmode {
  \dropLyricsVII
%\markup\italic
  \set stanza = #"2. "
  Is -- rael’s strength and con -- so -- la -- tion,
  hope of all __ the earth Thou art:
  dear de -- sire of ev -- ’ry na -- tion, joy of ev -- ’ry long -- ing heart.
}
altoWordsIII = \lyricmode {
  \dropLyricsVII
  \set stanza = #"3. "
  Born Thy peo -- ple to de -- liv -- er, born a child, and yet a king,
  born to reign in us for ev -- er, now Thy gra -- cious king -- dom bring.
}
altoWordsIV = \lyricmode {
  \dropLyricsVII
  \set stanza = #"4. "
  By Thine own e -- ter -- nal Spi -- rit rule in all __ our hearts a -- lone;
  by Thy grace, help us to mer -- it life e -- ter -- nal at Thy throne.
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
  aes4 aes bes bes |
  aes aes8[ bes] c4 bes |
  aes aes aes8[ bes] c4 |
  des ees ees2 |
  
  c4 des8[ c] bes4 c |
  des bes c aes |
  aes bes8[ aes] g4 aes8[ bes] |
  c4 bes aes2 \bar "|."
}
tenorWords = \lyricmode {

}

bassMusic = \relative c {
  aes4 aes' aes g |
  aes f ees ees8[ des] |
  c4 aes des c |
  bes aes ees'2 |
  
  f4 bes8[ aes] g4 aes |
  des, des c c |
  des bes c f |
  ees ees aes,2 \bar "|."
}
bassWords = \lyricmode {

}

pianoRH = \relative c' {
  
}
pianoLH = \relative c' {
  
}

\score {
  <<
   \new ChoirStaff <<
    \new Staff = women <<
      \new Voice = "sopranos" { \voiceOne << \global \sopMusic >> }
      \new Voice = "altos" { \voiceTwo << \global \altoMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \sopWords
    \new Lyrics = "altosVI"  \with { alignBelowContext = #"women"  \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \altoWordsVI
    \new Lyrics = "altosV"  \with { alignBelowContext = #"women"  \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \altoWordsV
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women"  \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women"  \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women"  \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women"  \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \altoWords
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "tenors" \tenorWords
    \new Lyrics \with { alignBelowContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "basses" \bassWords
  >>
%    \new PianoStaff << \new Staff { \new Voice { \pianoRH } } \new Staff { \clef "bass" \pianoLH } >>
  >>
  \layout { }
  
  \midi {
    \tempo 4 = 105
    \set Staff.midiInstrument = "flute"
  
    \context {
      \Voice
      \remove "Dynamic_performer"
    }
  }
}
