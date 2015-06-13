\version "2.14.2"

songTitle = "A Virgin Unspotted"
songPoet = "Traditional"
tuneComposer = "English"
tuneArranger = "Arranged by Sir John Stainer (1840–1901)"
tuneSource = \markup { "from" \italic {Christmas Carols, New and Old}}

global = {
    \autoBeamOff
    \key f \major
    \time 3/4
    \tempo 4 = 120
}

sopMusic = \relative c'' {
  \repeat volta 4 {
    \partial 4 a8[ bes] |
    c4 d c8[ bes] |
    a4 g c8[ a] |
    bes[ c] d4 c |
    f,2 a8[ bes] |
    c4 d c8[ bes] | 
    
    a4 g c8[ a] |
    bes[ c] d4 c |
    f,2 f8[ g] |
    a4 g c |
    bes8[ a] g4 d' | 
    
    c f8[ e] d4 |
    c2 a8[ bes] |
    c4 d c8[ bes] |
    a4 g c8[ a] |
    bes[ c] d4 c |
    f,2 \bar "||" 
    
    %chorus
    f8\noBeam\ff g8 |
    a4 g c |
    bes8[ a] g4 d' |
    c f8[ e] d4 |
    
    c2  a8[ bes] | 
    c4 d c8[ bes] |
    a4 g c8[ a] |
    bes[ c] d4 c |
    f,2 
  }
}

altoMusic = \relative c' {
  f4 |
  f f g |
  f e f |
  f f e |
  f2 f4 |
  f f g |
  
  f e f |
  f f e |
  f2 f4 |
  e e f |
  g8[ f] e4 g |
  
  a a8[ g] f4 |
  e2 f4 |
  f d d |
  f e f |
  f f e |
  f2 \bar "||"
  
  %chorus
  f8\noBeam\ff f8 |
  e[ f] g[ e] f4 |
  f e g |
  a a8[ g] f4 |
  
  e2 f4 |
  f d g |
  f e f |
  f d e |
  f2
}

altoWords = \lyricmode {
    \set stanza = #"1. "
    A __ Vir -- gin un -- spot -- ted, the pro -- phet fore -- told,
    Should bring forth a __ Sav -- ior, which now we be -- hold,
    To __ be our Re -- deem -- er from death, hell __ and sin,
    Which Ad -- am’s trans -- gres -- sion had wrap -- ped us in.
    \set stanza = #"Ch."
    \set associatedVoice = "sopranos"
    Aye 
    \set associatedVoice = "altos"
    and there -- fore
    \unset associatedVoice
    be mer -- ry, set sor -- row a -- side,
    Christ Je -- sus, our Sav -- ior, was born on this tide.
}

altoWordsII = \lyricmode { 
  \set stanza = #"2. "
  At __ Beth -- le -- hem ci -- ty in Jew -- ry it was
  That Jo -- seph and Ma -- ry to -- geth -- er did pass,
  All __ for to be tax -- ed with ma -- ny __ one moe.
  Great Cae -- sar com -- mand -- ed the same should be so.
}

altoWordsIII = \lyricmode { 
  \set stanza = #"3. "
  But when they had en -- tered the ci -- ty so fair,
  A __ num -- ber of __ peo -- ple so __ might -- y was there,
  That Jo -- seph and Ma -- ry, whose sub -- stance was small,
  Could find in the inn there no lodg -- ing at all.
}

altoWordsIV = \lyricmode { 
  \set stanza = #"4. "
  Then were they con -- strain’d in a __ sta -- ble to lie,
  Where hors -- es and ass -- es they used for to tie:
  Their lodg -- ing so sim -- ple they took it __ no scorn,
  But_a -- gainst the next morn -- ing our Sav -- ior was born. 
}

altoWordsV = \lyricmode {
    \set stanza = #"5. "
    The King of all kings  to this world be -- ing brought,
    Small store of fine lin -- en to __ wrap Him was sought,
    But when she had swad -- dled her young Son so sweet,
    With -- in an ox man -- ger she laid __ Him to sleep.
}

altoWordsVI = \lyricmode {
  \set stanza = #"6. "
  Then God sent an an -- gel from heav -- en so high,
  To __ cer -- tain poor shep -- herds in __ fields where they lie,
  And bade them no long -- er in sor -- row to stay,
  Be -- cause that our Sav -- ior was born on this day.
}

altoWordsVII = \lyricmode {
  \set stanza = #"7. "
  Then pres -- ent -- ly __ af -- ter the shep -- herds did spy
  Vast num -- bers of __ an -- gels to __ stand in the sky;
  They joy -- ful -- ly talk -- ed and sweet -- ly __ did sing:
  “To God be all glo -- ry, our heav -- en -- ly King.”
}

altoWordsVIII = \lyricmode {
  \set stanza = #"8. "
  To __ teach us hu -- mil -- i -- ty __ all __ this was done,
  And learn we from thence haugh -- ty __ pride for to shun;
  A __ man -- ger His cra -- dle Who came from a -- bove,
  The great God of mer -- cy, of __ peace, and of love.
}

tenorMusic = \relative c' {
  c8[ bes] |
  a4 d d |
  c c c |
  f, bes bes |
  a2 c4 |
  c bes d |
  
  c c c |
  f, bes bes |
  a2 a8[ bes] |
  c4 c c |
  d e e |
  
  f c b |
  c2 c8[ bes] |
  a4 f g |
  a8[ bes] c4 c |
  f, bes bes |
  a2 \bar "||"
  
  %chorus
  a8\noBeam\ff bes |
  c4 d8[ c] c4 |
  d e e |
  f c b |
  
  c2 f,8[ g] |
  a4 f d' |
  c c c |
  f, bes bes |
  a2
}

bassMusic = \relative c {
  f8[ g] |
  a4 bes g |
  c, c a |
  d bes c |
  f2 f8[ g] |
  a4 bes g |
  
  c, bes a |
  d bes c |
  f2 d4 |
  c bes' a |
  g c bes |
  
  a f g |
  c,2 f4 |
  a, bes g |
  c c a |
  d bes c |
  f2 \bar "||"
  
  %chorus
  d8\noBeam\ff d |
  c4 bes' a |
  g c bes |
  a f g |
  
  c,2 d4 |
  a bes g |
  c c a |
  d bes c |
  f2
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
  <<
   \new ChoirStaff <<
    \new Staff = women <<
      \new Voice = "sopranos" { \voiceOne << \global {\sopMusic } >> }
      \new Voice = "altos" { \voiceTwo << \global {\altoMusic } >> }
    >>
    \new Lyrics = "altos"   \lyricsto "sopranos" \altoWords
    \new Lyrics = "altosII"   \lyricsto "sopranos" \altoWordsII
    \new Lyrics = "altosIII"  \lyricsto "sopranos" \altoWordsIII
    \new Lyrics = "altosIV"   \lyricsto "sopranos" \altoWordsIV
    \new Lyrics = "altosV"   \lyricsto "sopranos" \altoWordsV
    \new Lyrics = "altosVI"   \lyricsto "sopranos" \altoWordsVI
    \new Lyrics = "altosVII"   \lyricsto "sopranos" \altoWordsVII
    \new Lyrics = "altosVIII"   \lyricsto "sopranos" \altoWordsVIII
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global {\tenorMusic } >> }
      \new Voice = "basses" { \voiceTwo << \global {\bassMusic } >> }
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

