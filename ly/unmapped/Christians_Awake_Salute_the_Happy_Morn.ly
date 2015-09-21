﻿\version "2.14.2"

songTitle = "Christians, Awake, Salute the Happy Morn"
songPoet = "John Byrom (1692–1763)"
tuneComposer = "John Wainwright (1723–1768)"
tuneSource = \markup {from \italic {The English Hymnal}, 1906}

global = {
    \key c \major
    \time 4/4
    \tempo 4 = 135
}

sopMusic = \relative c' {
  \repeat volta 3 {
    c2 c4 d |
    e2. f4 |
    g e f g |
    a1 \bar "||"
    g2 a4 b |
    
    c d e d |
    c2 b |
    c1 \bar "||"
    c2 e4 g, |
    a2. g4 |
    a b c d |
    b1 \bar "||"
    
    b2 c4 b |
    a gis a b |
    c2 b |
    a1 \bar "||"
    a2 g4 f |
    e2 c |
    
    f4 e d c |
    g'2. \bar"||" g4 |
    a2 b |
    c4 d e d |
    c2 b |
    c1 
  }
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  c2 c4 b |
  c2. b4 |
  c c b c |
  c1 |
  c2 c4 f |
  
  g f e f |
  e2 d |
  e1 |
  e2 e4 g |
  g( f8[ e] f4) c4 |
  f f g f |
  d1 |
  
  e2 e4 gis |
  a e c f |
  e2. d4 |
  c1 |
  c2 d4 b |
  c2 c |
  
  b4 c b a |
  b2. c4 |
  a'( g) f2 |
  g4 g g f |
  e2 d4( e8[ f]) |
  e1
}
altoWords = \lyricmode {
  
  \set stanza = #"1. "
  \set associatedVoice = "altos"
  Christ -- ians, a -- wake, sa -- lute the hap -- py morn,
  Where -- on the Sav -- ior of man -- kind was born;
  Rise to a -- dore __ the mys -- ter -- y of love,
  \unset associatedVoice
  Which hosts of an -- gels chant -- ed from a -- bove;
  With them the joy -- ful ti -- dings first be -- gun
  Of God In -- car -- nate and the Vir -- gin’s Son.
  
  \set stanza = #"4. "
  \set associatedVoice = "altos"
  To Beth -- l’hem straight the hap -- py shep -- herds ran,
  To see the won -- der God had wrought for man:
  And found, with Jo -- seph and the bless -- ed maid,
  \unset associatedVoice
  Her Son, the Sav -- ior in a man -- ger laid;
  A -- mazed the won -- drous sto -- ry they pro -- claim,
  The ear -- liest her -- alds of the Sav -- ior’s name.
}
altoWordsII = \lyricmode {
  
  \set stanza = #"2. "
  \set associatedVoice = "altos"
  Then to the watch -- ful shep -- herds it was told,
  Who heard th’an -- gel -- ic her -- ald’s voice: “Be -- hold,
  I bring good ti -- dings of a Sav -- ior’s birth
  \unset associatedVoice
  To you and all the na -- tions up -- on earth:
  This day hath God ful -- fill’d His prom -- ised word,
  This day is born a Sav -- ior, Christ, the Lord.”
  
  \set stanza = #"5. "
  \set associatedVoice = "altos"
  Let us, like these good shep -- herds, then em -- ploy
  Our grate -- ful voi -- ces to pro -- claim the joy;
  Trace we the Babe, __ Who hath re -- trieved our loss,
  \unset associatedVoice
  From His poor man -- ger to His bit -- ter Cross;
  Tread -- ing His steps, as -- sist -- ed by His grace,
  Till man’s first heav’n -- ly state a -- gain takes place.
}
altoWordsIII = \lyricmode {
  
  \set stanza = #"3. "
  \set associatedVoice = "altos"
  He spake; and straight -- way the ce -- les -- tial choir
  In hymns of joy, un -- known be -- fore, con -- spire:
  The prais -- es of __ re -- deem -- ing love they sang,
  \unset associatedVoice
  And heav’n’s whole arch with al -- le -- lu -- ias rang:
  God’s high -- est glo -- ry was their an -- them still,
  Peace up -- on earth, and un -- to men, good -- will.
  
  \set stanza = #"6. "
  \set associatedVoice = "altos"
  Then may we hope, th’an -- gel -- ic thrones a -- mong,
  To sing, re -- deemed, a glad tri -- um -- phal song;
  He, that was borne __ up -- on this joy -- ful day,
  \unset associatedVoice
  A -- round us all His glo -- ry shall dis -- play;
  Saved by His love, in -- ces -- sant we shall sing
  Of an -- gels and of an -- gel -- men, the King.
}
altoWordsIV = \lyricmode {
}
altoWordsV = \lyricmode {
}
altoWordsVI = \lyricmode {
}

tenorMusic = \relative c {
  e2 e4 g |
  g2. g4 |
  g g g g |
  f1 |
  g2 f4 d' |
  
  c b c a |
  g2 g |
  g1 |
  g2 c4 c |
  c2. c4 |
  c d c a |
  g1 |
  
  gis2 a4 d |
  e b a a |
  a2 gis |
  a1 |
  e2 g4 g |
  g2 g |
  
  g4 g g fis |
  g2. c4 |
  c2 d |
  c4 b c a |
  g2 g |
  g1
}
tenorWords = \lyricmode {

}

bassMusic = \relative c {
  c2 c4 g |
  c2. d4 |
  e c d e |
  f1 |
  e2 f4 d |
  e d c f |
  g2 g, |
  c1 |
  c2 c4 e |
  f2. e4 |
  f d e f |
  g1 |
  
  e2 a,4 b |
  c e f d |
  e2 e |
  a,1 |
  a2 b4 g |
  c2 e |
  
  d4 c b a |
  g2. e'4 |
  f( e) d2 |
  e4 g c f, |
  g2 g |
  c,1
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
      \new Voice = "sopranos" { \voiceOne << \global {\once \override Score.RehearsalMark #'self-alignment-X = #LEFT \mark "Majestically" \sopMusic \sopMusic} >> }
      \new Voice = "altos" { \voiceTwo << \global \repeat unfold 2 \altoMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \sopWords
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \repeat unfold 2 \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \repeat unfold 2 \bassMusic >> }
    >>
    \new Lyrics = "altosVI"  \with { alignBelowContext = #"women" 
      \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))
      } \lyricsto "basses" \altoWordsVI
    \new Lyrics = "altosV"  \with { alignBelowContext = #"women" 
      \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))
      } \lyricsto "basses" \altoWordsV
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" 
      \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))
      } \lyricsto "basses" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" 
      \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))
      } \lyricsto "basses" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" 
      \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))
      } \lyricsto "basses" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" 
      \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))
      } \lyricsto "basses" \altoWords
    \new Lyrics \with { alignAboveContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "tenors" \tenorWords
  >>
%    \new PianoStaff << \new Staff { \new Voice { \pianoRH } } \new Staff { \clef "bass" \pianoLH } >>
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

