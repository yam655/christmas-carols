\version "2.14.2"
\include "util.ly"
\header { 
    title = "Hark! a Herald Voice is Calling"
    poet = \markup{\italic{Vox clara ecce intonat}, 6th Century}
    meter = "Translated by Edward Caswall (1814–1878)"
    composer = "William Henry Monk (1823–1889)"
    %tagline = \markup \concat{ "from " \italic "The English Hymnal" ", 1906"}
  }

global = {
  \key e \major
  \time 4/4
  %\tempo 4 = 66
  \autoBeamOff
  %\override DynamicLineSpanner #'staff-padding = #0.0
  %\override DynamicLineSpanner #'Y-extent = #'(-1 . 1)
}

sopMusic = \relative c' {
  e4 gis b b |
  a cis cis b \bar "||"
  gis ais b b |
  cis cis b2 \bar "||"
  
  b4 a gis b |
  a gis fis e \bar "||"
  fis gis a gis |
  fis fis e2 \bar "|."
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  b4 b b dis |
  e e e e |
  e e dis fis |
  gis fis8[ e] dis2 |
  
  dis4 e8[ fis] e4 fis |
  e e dis e |
  cis eis fis e |
  e dis e2 \bar "|."
}
altoWords = \lyricmode {
  \dropLyricsV
  \set stanza = #"1. "
  Hark! a her -- ald voice is call -- ing:
  ‘Christ is nigh,’ it seems to say;
  \set associatedVoice = "altos"
  ‘Cast a -- way the dreams of dark -- ness,
  \unset associatedVoice
  O ye chil -- dren of the day!’
}
altoWordsII = \lyricmode {
  \dropLyricsV
%\markup\italic
  \set stanza = #"2. "
  Star -- tled at the sol -- emn warn -- ing,
  Let the earth -- bound soul a -- rise;
  \set associatedVoice = "altos"
  Christ, her Sun, all sloth dis -- pell -- ing,
  \unset associatedVoice
  Shines up -- on the morn -- ing skies.
}
altoWordsIII = \lyricmode {
  \dropLyricsV
  \set stanza = #"3. "
  Lo! the Lamb, so long ex -- pec -- ted,
  Comes with par -- don down from heav’n;
  \set associatedVoice = "altos"
  Let us haste, with tears of sor -- row,
  \unset associatedVoice
  One and all to be for -- giv’n;
}
altoWordsIV = \lyricmode {
  \dropLyricsV
  \set stanza = #"4. "
  So when next He comes with glo -- ry,
  Wrap -- ping all the earth in fear,
  \set associatedVoice = "altos"
  May He then as our de -- fend -- er
  \unset associatedVoice
  On the clouds of heav’n ap -- pear.
}
altoWordsV = \lyricmode {
  \dropLyricsV
  \set stanza = #"5. "
  Hon -- or, glo -- ry, vir -- tue, mer -- it,
  To the Fa -- ther and the Son,
  \set associatedVoice = "altos"
  With the co -- e -- ter -- nal Spi -- rit,
  \unset associatedVoice
  While un -- end -- ing a -- ges run.
}
altoWordsVI = \lyricmode {
  \set stanza = #"6. "
  \set ignoreMelismata = ##t
}
tenorMusic = \relative c' {
  gis4 b fis fis |
  e a a gis |
  b e, fis b |
  b ais b2 |
  
  dis4 cis8[ b] b4 b |
  cis b b8[ a] gis4 |
  a b cis b |
  cis b8[ a] gis2 \bar "|."
}
tenorWords = \lyricmode {

}

bassMusic = \relative c {
  e4 e dis b |
  cis a8[ b] cis[ dis] e4 |
  e cis b dis |
  e fis b,2 |
  
  b4 cis8[ dis] e4 dis |
  cis e b cis |
  a gis fis gis |
  a b <e e,>2 \bar "|."
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
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
    >>
    \new Lyrics = "altosVI"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \altoWordsVI
    \new Lyrics = "altosV"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \altoWordsV
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \altoWords
    \new Lyrics \with { alignAboveContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "tenors" \tenorWords
    \new Lyrics \with { alignBelowContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "basses" \bassWords
  >>
%    \new PianoStaff << \new Staff { \new Voice { \pianoRH } } \new Staff { \clef "bass" \pianoLH } >>
  >>
  \layout { }
  
  \midi {
    \tempo 4 = 66
    \set Staff.midiInstrument = "flute"
  
    \context {
      \Voice
      \remove "Dynamic_performer"
    }
  }
}
