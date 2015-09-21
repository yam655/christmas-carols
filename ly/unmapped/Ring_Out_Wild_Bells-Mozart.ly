\version "2.14.2"

\header {
  title = "Ring Out, Wild Bells"
  poet = "Alfred Lord Tennyson (1809–1892)"
  composer = \markup{Adapted from \italic {Kyrie}, 12th Mass}
  arranger = "W.A. Mozart (1756–1791)"
  %source = \markup { "from" \italic {HymnWiki.org}}
}

global = {
    \time 3/4
    \key g \major
    %\override Rest #'direction = #'0
    %\override MultiMeasureRest #'staff-position = #0
    \autoBeamOff
    \tempo 4 = 120
}

sopWords = \lyricmode
{ 
	\set stanza = "1. "
	%\set vocalName = "Men/Women/Unison/SATB"
  Ring out, wild bells, \set ignoreMelismata = ##t to the \unset ignoreMelismata wild sky,
  The fly -- ing cloud, the frost -- y light:
  The year is dy -- ing in the night;
  Ring out, wild bells, and let him die.
        
	\set stanza = "5. "
  Ring out the want, the care, the sin,
  The faith -- less cold -- ness of the times:
  Ring out, ring out __ my mourn -- ful rhymes,
  But ring the full -- er min -- strel in.

}
sopWordsTwo = \lyricmode
{
  
	\set stanza = "2. "
  Ring out the old, ring in the new,
  Ring, hap -- py bells a -- cross the snow:
  The year is go -- ing, let him go;
  Ring out the false, ring in the true.
  
	\set stanza = "6. "
  Ring out false pride in place and blood,
  The civ -- ic slan -- der and the spite:
  Ring in the love __ of truth and right,
  Ring in the com -- mon love of good.
}
sopWordsThree = \lyricmode
{
  
	\set stanza = "3. "
  Ring out the grief that \set ignoreMelismata = ##t saps the \unset ignoreMelismata mind,
  For those that here we see no more:
  Ring out the feud __ of rich and poor,
  Ring in re -- dress to all man -- kind.
  
  
	\set stanza = "7. "
  Ring out old shapes of foul dis -- ease:
  Ring out the nar -- ’wing lust of gold:
  Ring out the thou -- sand wars of old,
  Ring in the thou -- sand years of peace.
}
sopWordsFour = \lyricmode
{
  
	\set stanza = "4. "
  Ring out a slow -- ly \set ignoreMelismata = ##t dy -- ing \unset ignoreMelismata cause,
  And an -- cient forms of par -- ty strife:
  Ring in the no -- bler modes of life,
  With sweet -- er man -- ners, pu -- rer laws.
        
  \set stanza = "8. "
  Ring in the val -- iant man and free,
  The lar -- ger heart, the kind -- lier hand;
  Ring out the dark -- ness of the land,
  Ring in the Christ that is to be.
}
sopMusic = {
  \repeat volta 2 {
    g'4 g' g' fis'2 d'4 c''2 c''4 b'2.  d''4 d'' b'
    d''4 (c'') a' g'2 b'8[ a'] a'2.  g'4 g' g' fis'4. (e'8) d'4
    c''2 c''4 b'2.  d''4 d'' b' a' (c'') e'' g'2 fis'4 g'2. 
  }
}

altoMusic = {
  \voiceTwo
  d'4 d' d' d'2 d'4 d'2 fis'4 g'2. g'4 g' g'
  e'2 d'4 d'2 g'8[ fis'] fis'2. g'4 g' g' fis'4. (e'8) d'4
  d'2 d'4 d'2. d'4 g'4 f'4 e'2 e'4 d'2 c'4 b2.
}

tenorMusic = {
  b4 b b a2 fis4 fis4 (a) d' d'2. b4 d' d'
  a2 c'4 b2 d'4 d'2. b4 d' b c'4. (b8) a8[ g]
  fis8 [g a b] c'8[ a] g2. b4 b d' c'2 a4 b2 a4 g2.
}
tenorWords = \lyricmode {

}

bassMusic = {
  g,4 b, g, d2 d4 d4 (fis) d g2. g4 b g
  a2 fis4 g2 g4 d2. g4 b g a4. (g8) fis8[ e]
  d8[ e fis g] a8[ fis] g2. g4 g gis a2 c4 d2 d4 g,2.
}
bassWords = \lyricmode {

}


\bookpart {
\score {
  <<
   \new ChoirStaff <<
    \new Staff = women <<
      \new Voice = "sopranos" { \voiceOne << \global \repeat unfold2 \sopMusic >> }
      \new Voice = "altos" { \voiceTwo << \global \repeat unfold2 \altoMusic >> }
    >>
    \new Lyrics  \lyricsto "sopranos" \sopWords
    \new Lyrics  \lyricsto "sopranos" \sopWordsTwo
    \new Lyrics  \lyricsto "sopranos" \sopWordsThree
    \new Lyrics  \lyricsto "sopranos" \sopWordsFour
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \repeat unfold2 \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \repeat unfold2 \bassMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "tenors" \tenorWords
    \new Lyrics \with { alignBelowContext = #"men" \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 1)) } \lyricsto "basses" \bassWords
  >>
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


