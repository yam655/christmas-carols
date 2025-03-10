﻿\version "2.14.2"

songTitle = "Of the Father’s Love Begotten"
songPoet = "tr. by John Mason Neale (1818–1866)"
tuneComposer = \markup{\italic{Divinum Mysterium}, 13th Century Melody}
tuneSource = \markup {from \italic{Great Hymns of the Church Compiled by the Late Right Reverend John Freeman Young}, 1887}
%   via \italic{HymnsAndCarolsOfChristmas.com}}

global = {
  \key f \major
  \time 10/4
  \autoBeamOff
}

sopMusic = \relative c' {
  \repeat volta 3 {
    f4. g8 a4 bes a g a4.( g8) f2 |
    a4 bes c d c( a2) bes4 c2 \bar "||"
    
    d4. e8 f4 c c bes a4.( g8) f2 |
    d4. e8 f4 g f( d2) e4 f2 \bar "||"
    
    f4. g8 a4 bes a g |
    c4( d) c4( a2 bes4 c2) |
    f,4 e4 d4 e  f d c2 |
    f4 g a c a f g2( f)
  }
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  f4. f8 f4 f f f f2 f |
  f4 f f f e( f2) f4 e2 \bar "||"
  
  f4. g8 f4 f f f8[ g] f4( e) d2 |
  bes4. c8 c4 d c2 bes a \bar "||"
  
  f'4. f8 f4 f f g |
  f2 e4( f)~ f1 |
  c4 c4 bes4 bes a bes a2 |
  f'4 f f e e f e2( f)
}
altoWords = \lyricmode {
  
  \set associatedVoice = "sopranos"
  \set stanza = #"1. "
  Of the Fa -- ther’s love be -- got -- ten,
      Ere the worlds be -- gan to be,
  He is Al -- pha and O -- me -- ga,
      He the source, the end -- ing He,
  Of the things that are, that have been, __
      And that fu -- ture years shall see,
  Ev -- er -- more and ev -- er -- more!
  
  \set stanza = #"4."
  O that birth for -- ev -- er bless -- èd,
    When the Vir -- gin, full of grace,
By the Ho -- ly Ghost con -- ceiv -- ing,
    Bare the Sav -- ior of our race;
And the Babe, the world’s Re -- deem -- er, __
    First re -- vealed His sa -- cred face,
        Ev -- er -- more and ev -- er -- more!
  
  
  \set stanza = #" 7."
  Right -- eous judge of souls de -- part -- ed,
    Right -- eous King of them that live,
On the Fa -- ther’s throne ex -- alt -- ed
    None in might with Thee may strive;
Who at last in ven -- geance com -- ing __
    Sin -- ners from Thy face shalt drive,
        Ev -- er -- more and ev -- er -- more!
}
altoWordsII = \lyricmode {
  
%\markup\italic
  \set associatedVoice = "sopranos"
  \set stanza = #"2. "
  At His Word the worlds were fram -- èd;
    He com -- mand -- ed; it __ was done:
Heav’n and earth and depths of o -- cean
    In their three -- fold or -- der one;
All that grows be -- neath the shin -- ing __
    Of the moon and burn -- ing sun,
        Ev -- er -- more and ev -- er -- more!
  
  \set stanza = #"5."
  This is He Whom seers in old time
    Chant -- ed of with one ac -- cord;
Whom the voi -- ces of the pro -- phets
    Prom -- ised in their faith -- ful word;
Now He shines, the long ex -- pect -- ed, __
    Let cre -- a -- tion praise its Lord,
        Ev -- er -- more and ev -- er -- more!
  
  \set stanza = #" 8."
  Thee let old men, thee let young men,
    Thee let boys in cho -- rus sing;
Ma -- trons, vir -- gins, lit -- tle maid -- ens,
    With glad voi -- ces an -- swer -- ing:
Let their guile -- less songs re -- ech -- o, __
    And the heart its mu -- sic bring,
        Ev -- er -- more and ev -- er -- more!
}
altoWordsIII = \lyricmode {
  
  \set associatedVoice = "sopranos"
  \set stanza = #"3. "
  He is found in hu -- man fash -- ion,
    Death and sor -- row here to know,
That the race of A -- dam’s chil -- dren
    Doomed by law to end -- less woe,
May not hence -- forth die and per -- ish __
    In the dread -- ful gulf be -- low,
        Ev -- er -- more and ev -- er -- more!
  
  
  \set stanza = #"6."
  O ye heights of heav’n a -- dore Him;
    An -- gel hosts, His prais -- es sing;
Pow’rs, do -- min -- ions, bow be -- fore Him,
    And ex -- tol our God and King!
Let no tongue on earth be si -- lent, __
    Ev -- ’ry voice in con -- cert sing,
        Ev -- er -- more and ev -- er -- more!
  
  \set stanza = #" 9."
  Christ, to Thee with God the Fa -- ther,
    And, O Ho -- ly Ghost, to Thee,
Hymn and chant with high thanks -- giv -- ing,
    And un -- wear -- ied prais -- es be:
Hon -- or, glo -- ry, and do -- min -- ion, __
    And e -- ter -- nal vic -- to -- ry,
        Ev -- er -- more and ev -- er -- more!
}
altoWordsIV = \lyricmode {
  \set associatedVoice = "sopranos"
}
altoWordsV = \lyricmode {
  \set associatedVoice = "sopranos"
}
altoWordsVI = \lyricmode {
  \set associatedVoice = "sopranos"
}
altoWordsVII = \lyricmode {
  \set associatedVoice = "sopranos"
}
altoWordsVIII = \lyricmode {
  \set associatedVoice = "sopranos"
}
altoWordsIX = \lyricmode {
  \set associatedVoice = "sopranos"
}
tenorMusic = \relative c' {
  a4. bes8 c4 d c bes c4.( bes8) a2 |
  c4 bes a bes g( f2) f4 g2 \bar "||"
  
  d'4. c8 c4 f8[ e] d4 d c4.( bes8) a2 |
  bes4. g8 f4 f f2. c4 c2 \bar "||"
  
  a'4. bes8 c4 d c4. bes8 |
  bes8[( a] bes4) g4( f2~ f8[ g8] a2) |
  f4 f4 f4 g f f f2 |
  a4 bes c c c a bes2( a)
}
tenorWords = \lyricmode {

}

bassMusic = \relative c {
  f4. f8 f4 f f f f2 f |
  f4 e8[ d] c4 bes c( f2) d4 c2 \bar "||"
  
  bes'4. bes8 a4 a bes g c,2 d |
  bes4. bes8 a4 bes a( bes2) bes4 f2 \bar "||"
  
  f'4. f8 f4 f f e |
  f4( bes,) c4( f2 d4 f,2) |
  a4 a4 bes4 bes f f f2 |
  f'4 f f a,8[ bes] c4 d c2( f)
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
      \new Voice = "sopranos" { \voiceOne << \global \repeat unfold3\sopMusic >> }
      \new Voice = "altos" { \voiceTwo << \global \repeat unfold3\altoMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1))} \lyricsto "sopranos" \sopWords
    \new Lyrics = "altosIX"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWordsIX
    \new Lyrics = "altosVIII"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWordsVIII
    \new Lyrics = "altosVII"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWordsVII
    \new Lyrics = "altosVI"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWordsVI
    \new Lyrics = "altosV"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWordsV
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" } \lyricsto "altos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((padding . -0.5)) } \lyricsto "altos" \altoWords
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \repeat unfold3\tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \repeat unfold3\bassMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "tenors" \tenorWords
  >>
  >>
  \layout {
    \context {
      \Score
      \override SpacingSpanner #'base-shortest-duration = #(ly:make-moment 1 1)
      \override SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 1)
    }
  }
  \midi {
    \tempo 4 = 90
    \set Staff.midiInstrument = "flute"
  
    \context {
      \Voice
      \remove "Dynamic_performer"
    }
  }
}
}

