\version "2.14.2"

songTitle = "When Christ was born of Mary free!"
songPoet = "15th Century Middle English Harleian Manuscript"
tuneComposer = \markup{tune is \italic{When Christ Was Born}, Arthur H. Brown}
tuneArranger = "Arranged by Sir John Stainer (1840–1901)"
tuneSource = \markup {from \italic {Christmas Carols, New and Old}}

global = {
    \key g \major
    \time 4/4
    \autoBeamOff
    \tempo 4 = 105
}

silentMusicIntro = {
  \partial 4 r4 |
  r s s s |
  r s s s |
  r s s s |
  r s s 
}

sopMusicIntro = \relative c'' {
  \partial 4 g4 |
  d' b g a8[ b] |
  c4 b8[ a] b4 a8[ g] |
  fis[ e] e' [ d ] c [ b ] a[ g] |
  g4. fis8 g4 
}

altoMusicIntro = \relative c' {
  \partial 4 d4 |
  d fis e e |
  e d d d |
  d8[ e] c'[ b ] a [ g ] a [ g ] |
  b4 a b 
}

tenorMusicIntro = \relative c' {
  \partial 4 b4 |
  a d b c, |
  e fis g g |
  g e4 e8[ d] c4 |
  d d d
}

bassMusicIntro = \relative c' {
  \partial 4 g4 |
  fis d e c, |
  a4 d g b4 |
  c a,8[ b] c[ d] e4 |
  d d, g 
}

sopMusic = \relative c'' { 
  g4_\f |
  d'4 b4 g a8[ b] |
  c4 b8[ a] b4 b |
  a4. a8 b4 d |
  
  e d8[ cis] d2 |
  a4 a8\noBeam b8 c4 c |
  g4. a8 b2 |
  d4._\p e8 d4 c8[ b] |
  
  a4. g8 g4 b4\rest | 
  d,4. d8 d4 d |
  e g g2 |
  a4. b8 c4 c |
  
  b a b2 | 
  d4. d8 g,8[ a] b[ c] |
  d4 c8[ b] a2 |
  b4. c8 d4 g, |
  b a g4\fermata \bar "|."
  
}

altoMusic = \relative c' {
  d4 |
  d4 fis4 g e |
  a fis g g |
  d4. d8 g4 fis |
  
  g e fis2 |
  fis4 f8\noBeam f a4 a |
  e ees g2 |
  g4. g8 g4 fis8[ g] |
  
  g4 ^\ff fis g s | 
  d4. d8 d4 d |
  e g g2 |
  fis4. fis8 g4 g |
  
  g fis g2 |
  a4 g8[ fis] g[ d] g4 |
  d8[ g] a[ g] fis2 |
  d8[ g] fis[ e] d4 g |
  
  g fis g \bar "|."
}


tenorMusic = \relative c' {
  b'4^\f |
  a4 d4 b e |
  e d d d |
  d4. d8 d4 d |
  
  b a a2 |
  d4 d8\noBeam d e4 e |
  c c d2
  d4.^\p c8 d4 d |
  
  d c b s |
  d,4. d8 d4 d |
  e g g2 |
  d'4. d8 e4 e |
  d d d2 |
  fis8[ e] d[ c] b[ a] g[ a] |
  b4 e8[ d] d2 |
  d4. c8 b4 cis |
  
  d c b \bar "|."
}

bassMusic = \relative c' {
  g'4 |
  \slurDotted fis8\noBeam( fis) \slurSolid d4 e c |
  a d g g |
  fis4. fis8 g4 b |
  
  e, a d,2 |
  d4 d8\noBeam d a4. b8 |
  c4 c g'2 |
  b4. c8 b4 a8[ g] |
  
  d4. d8 g,4 d'\rest |
  d4. d8 d4 d |
  e g g2 |
  d4. d8 c4 c |
  
  g' d g2 |
  d'8[ c] b[ a] g[ fis] e4 |
  b c d2 |
  g,4. a8 b4 e |
  
  d d g,\fermata \bar "|."
}

altoWords = \lyricmode {
    \set stanza = #"1."
    When Christ was born of Ma -- ry free,
    In Beth -- le -- hem, that fair ci -- ty,
    An -- gels sang there with mirth and glee,
    “In ex -- cel -- sis Glo -- ri -- a.”
    \set stanza = #"Ch."
    In ex -- cel -- sis Glo -- ri -- a,
    In ex -- cel -- sis Glo -- ri -- a,
    In ex -- cel -- sis Glo -- ri -- a,
    In ex -- cel -- sis Glo -- ri -- a.
}
altoWordsII = \lyricmode {
  \set stanza = #"2."
  Herds -- men
  be -- held these An -- gels bright,
  To them ap -- pear -- ing with great light,
  Who said God’s Son is born to -- night,
  “In ex -- cel -- sis Glo -- ri -- a.”
}
altoWordsIII = \lyricmode {
  \set stanza = #"3."
  The King is come to save man -- kind, __ _
  As in scrip -- ture truths we find,
  There -- fore this song we have in mind,
  “In ex -- cel -- sis Glo -- ri -- a.”
}
altoWordsIV = \lyricmode {
  \set stanza = #"4."
  Then __ _ dear Lord, for Thy great grace,
  Grant us in bliss to see Thy face,
  That we may sing to Thy sol -- ace,
  “In ex -- cel -- sis Glo -- ri -- a.”
}

\bookpart { 
\header {
  title = \songTitle
  poet = \songPoet
  composer = \tuneComposer
  arranger = \tuneArranger
  source = \tuneSource
}

\score {
    {
        \new ChoirStaff <<
            \new Staff = top <<
                {
                    \new Voice { \voiceOne << \global \sopMusicIntro >> }
                    \new Voice = "sopranos" << \voiceOne { \sopMusic } >>
                }
                {
                    \new Voice { \voiceTwo << \global \altoMusicIntro >> }
                    \new Voice = "altos" << \voiceTwo { \altoMusic } >>
                }
            >>

            \new Lyrics = "altos"   \lyricsto "altos" \altoWords
            \new Lyrics = "altosII"   \lyricsto "altos" \altoWordsII
            \new Lyrics = "altosIII"   \lyricsto "altos" \altoWordsIII
            \new Lyrics = "altosIV"   \lyricsto "altos" \altoWordsIV

            \new Staff = bot <<
                \clef bass
                {
                    \new Voice << \voiceOne { \global \tenorMusicIntro } >>
                    \new Voice = "tenors" { \voiceOne << \tenorMusic >> }
                }
                {
                    \new Voice << \voiceTwo { \global \bassMusicIntro } >>
                    \new Voice = "basses" { \voiceTwo << \bassMusic >> }
                }
            >>

        >>
    }
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


