\version "2.14.2"
\include "util.ly"
\header {
  title = "Masters in This Hall"
  poet = "William Morris (1834–1896)"
  composer = \markup{\italic{Marche pour les Matelots}, by Marin Marais (1656–1728)}
  arranger = "Arranged by Edmund Sedding (1836–1868)"
  %tagline = \markup{from \italic{The Musical times and singing-class circular, Volume 52}, November 1, 1911}
}

global = {
  \key f \major
  \time 6/8
  \autoBeamOff
  %\override DynamicLineSpanner #'staff-padding = #0.0
  %\override DynamicLineSpanner #'Y-extent = #'(-0.2 . 0.2)
  \tempo \markup\italic"Andante"
}

sopMusic = \relative c' {
  d4 a'8 a4 g8 |
  f4.( g) |
  a4 g8 f4 e8 |
  f4( e8 d4 cis8) |
  
  d4 a'8 a4 g8 |
  f4.( g4) g8 |
  a4 g8 f4 e8 |
  d2. \bar"||" \break
  
  \repeat unfold 2 {
    f'4 e8 d4 cis8 |
    d4. a |
    f'4 e8 d4 cis8 |
    d4.a4 c8 |
    
    bes4 g8 a4 e8 |
    f4( d8) f4( g8) |
  }
  \alternative {
    {
      a4 a8 cis4 cis8 |
      d2. |
    }
    {
      a4 a8 f4 e8 |
      d2. \bar"|."
    }
  }
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  a4 f'8 e4 e8 |
  d4.( e) |
  f4 e8 d4 cis8 |
  d4( bes8 a4.) |
  
  a4 f'8 e4 e8 |
  d4.( e4) e8 |
  f4 e8 d4 cis8 |
  d2.
  
  \repeat unfold 2 {
    a'4 g8 f4 e8 |
    f4. f |
    a4 g8 f4 e8 |
    f4. d4 d8 |
    
    d4 d8 e4 e8 |
    d4. d |
  }
  \alternative {
    {
      d4 f8 e4 g8 |
      f2. |
    }
    {
      d4 d8 d4 cis8 |
      d2. \bar"|."
    }
  }
}
altoWords = {
  \dropLyricsV
  \lyricmode {
    \set stanza = #"1. "
    Mas -- ters in this hall, __
    Hear ye news to -- day, __
    Brought from o -- ver sea, __
    And ev -- er I you pray,
  }
  \set stanza = \markup\dynamic"f "
  \lyricmode{
    \dropLyricsVII
    No -- ël! No -- ël! No -- ël! 
    No -- ël sing we clear! Holp -- en are all folk on earth
    Born is God’s Son so dear:
    
    No -- ël! No -- ël! No -- ël! 
    No -- ël, sing we loud!
    God to -- day hath poor folk rais’d
    And cast a -- down the proud.
  }
}
altoWordsII = \lyricmode {
  \dropLyricsV
%\markup\italic
  \set stanza = #"2. "
  This is Christ, the Lord, __
  Mas -- ters be ye glad! __ 
  Christ -- mas is come in, __
  And no folk should be sad!
}
altoWordsIII = \lyricmode {
  \set stanza = #"3. "
  \set ignoreMelismata = ##t
}
altoWordsIV = \lyricmode {
  \set stanza = #"4. "
  \set ignoreMelismata = ##t
}
altoWordsV = \lyricmode {
  \set stanza = #"5. "
  \set ignoreMelismata = ##t
}
altoWordsVI = \lyricmode {
  \set stanza = #"6. "
  \set ignoreMelismata = ##t
}
tenorMusic = \relative c {
  f4 a8 a4 a8 |
  a4.( c) |
  c4 bes8 a4 a8 |
  a4( g8 a4 g8) |
  
  f4 a8 a4 a8 |
  a4.( c4) c8 |
  c4 bes8 a4 a8 |
  f2.
  
  \repeat unfold 2 {
    a4 a8 a4 a8 |
    a4. d |
    d4 bes8 a4 a8 |
    a4. a4 a8 |
    
    g4 bes8 a4 a8 |
    a4( f8) f4. |
  }
  \alternative {
    {
      f4 d8 a'4 a8 |
      a2. |
    }
    {
      f4 f8 a4 g8 |
      f2. \bar "|."
    }
  }
}
tenorWords = \lyricmode {

}

bassMusic = \relative c{
  d4 d8 cis4 cis8 |
  d4.( c!) |
  f4 g8 a4 a,8 |
  d4( g8 f4 e8) |
  
  f4 d8 cis4 cis8 |
  d4.( c!4) c8 |
  f4 g8 a4 a,8 |
  d2. |
  
  \repeat unfold 2 {
    d4 a8 a4 a8 |
    d4. d |
    d4 g8 a4 a8 |
    d,4. fis4 fis8 |
    
    g4 g8 cis,4 cis8 |
    d4. bes |
  }
  \alternative {
    {
      a4 a8 a4 a8 |
      d2.
    }
    {
      a4 a8 a4 a8 |
      d2. \bar"|."
    }
  }
}

\score {
  <<
   \new ChoirStaff <<
%    \new Lyrics = sopranos \with { \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) }
    \new Staff = women <<
      \new Voice = "sopranos" { \voiceOne << \global \sopMusic >> }
      \new Voice = "altos" { \voiceTwo << \global \altoMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \sopWords
     \new Lyrics = "altosVI"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsVI
    \new Lyrics = "altosV"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsV
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "altos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \altoWords
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
    \tempo 4 = 120
    \set Staff.midiInstrument = "flute"
  
    \context {
      \Voice
      \remove "Dynamic_performer"
    }
  }
}
