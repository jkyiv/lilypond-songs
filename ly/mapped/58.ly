﻿\version "2.14.2"
\include "util.ly"
\header{ tagline = ""}
\paper {
  print-all-headers = ##t
  ragged-right = ##f
  %print-all-headers = ##t
  paper-height = 11\in
  paper-width = 8.5\in
  indent = 0\in
  %system-system-spacing = #'((basic-distance . 10) (padding . 0))
  system-system-spacing =
    #'((basic-distance . 0)
       (minimum-distance . 0)
       (padding . 0)
       (stretchability . 100))
  score-markup-spacing =
    #'((basic-distance . 0)
       (minimum-distance . 0)
       (padding . -14)
       (stretchability . 70))
  top-system-spacing =
    #'((basic-distance . 0)
       (minimum-distance . 0)
       (padding . -1)
       (stretchability . 0))
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  two-sided = ##t
  inner-margin = 1\in
  outer-margin = 0.75\in
  top-margin = 0.26\in
  bottom-margin = 0.25\in
  first-page-number = #58
  print-first-page-number = ##t
  headerLine = ""
  oddHeaderMarkup = \markup\fill-line{
     \override #'(font-name . "Garamond Premr Pro")\abs-fontsize #12.5
     \combine 
        \fill-line{"" \on-the-fly #print-page-number-check-first
        \oldStylePageNum""
        }
        \fill-line{\headerLine}
  }
  evenHeaderMarkup = \markup {
     \override #'(font-name . "Garamond Premr Pro")\abs-fontsize #12.5
     \combine
        \on-the-fly #print-page-number-check-first
        \oldStylePageNum""
        \fill-line{\headerLine}
  }
}
#(set-global-staff-size 18) \paper{ #(define fonts (make-pango-font-tree "Garamond Premr Pro" "Garamond Premr Pro" "Garamond Premr Pro" (/ 18 20))) }
global = {
  \key bes \major
  \time 4/4
  \dynamicUp
  %\set crescendoSpanner = #'dashed-line
  %\set midiInstrument = "recorder"
  \autoBeamOff
  \override DynamicTextSpanner #'style = #'none
}

sopMusic = \relative c' {
	\partial 8
  f16[\mf f] |
  f8. f16 f8. ees16 d8. f16 bes8. c16 |
  d8. d16 d8. c16 bes4 bes8. a16 |
  
  g8. g16 g8. a16 bes8. a16 bes8. g16 |
  f8. g16 f8. d16 f4 f8. f16 |
  
  f8. f16 f8. ees16 d8. f16 bes8. c16 |
  d8. d16 d8. c16 bes4 bes |
  c c bes a |
  bes1 |
  
  f4.\f ees8 d8. f16 bes8. c16 |
  d2 bes |
  g4. a8 bes8. a16 bes8. g16 |
  f2 d |
  
  f4. ees8 d8. f16 bes8. c16 |
  d2 bes4 bes |
  c c bes a |
  bes2. b8\rest \bar"|."
}
sopWords = \lyricmode {
  \set stanza = #"1. "
	Mine eyes have seen the glo -- ry of the com -- ing of the Lord;
  He is tramp -- ling out the vin -- tage where the grapes of wrath are stored;
  He hath loosed the fate -- ful light -- ning of His ter -- ri -- ble swift sword;
  His truth is march -- ing on.
}

sopWordsII = \lyricmode {
  \set stanza = #"2. "
  \set ignoreMelismata = ##t
  I have seen Him in the watch -- fires of a hun -- dred cir -- cling camps;
  They have build -- ed Him an al -- tar in the eve -- ning dews and damps;
  I can read His right -- eous sen -- tence in the dim and flar -- ing lamps:
  His day is march -- ing on.
}

sopWordsIII = \lyricmode {
  \set stanza = #"3. "
  \set ignoreMelismata = ##t
  I have read a fie -- ry gos -- pel writ in bur -- nished rows of steel:
  “As ye deal with My con -- tem -- ners, so with you My grace shall deal:”
  Let the He -- ro born of wo -- man crush the ser -- pant with His heel,
  Since God is march -- ing on.
  
  Glo -- ry, glo -- ry, Hal -- le -- lu -- jah!
  Glo -- ry, glo -- ry, Hal -- le -- lu -- jah!
  Glo -- ry, glo -- ry, Hal -- le -- lu -- jah!
  His truth is march -- ing on.
}

sopWordsIV = \lyricmode {
  \set stanza = #"4. "
  \set ignoreMelismata = ##t
  He has sound -- ed forth the trum -- pet that shall nev -- er call re -- treat;
  He is sift -- ing out the hearts of men be -- fore His judg -- ment seat:
  Oh, be swift, my soul, to an -- swer Him! be ju -- bi -- lant, my feet!
  Our God is march -- ing on.
}

sopWordsV = \lyricmode {
  \set stanza = #"5. "
  \set ignoreMelismata = ##t
  In the beau -- ty of the lil -- ies Christ was born a -- cross the sea,
  With a glo -- ry in His bo -- som that trans -- fig -- ures you and me;
  As He died to make men ho -- ly, let us die to make men free,
  While God is march -- ing on.
}

altoMusic = \relative c' {
  \partial 8
  d16[ d] |
  d8. d16 d8. c16 bes8. d16 f8. f16 |
  f8. f16 f8. f16 d4 \bar"" f8. f16 |
  
  ees8. ees16 ees8. ees16 ees8. ees16 ees8. ees16 |
  d8. ees16 d8. bes16 d4 \bar"" d8. d16 |
  
  d8. d16 d8. c16 bes8. d16 f8. f16 |
  f8. f16 f8. ees16 d4 d |
  g g f f |
  f1 |
  
  d4. c8 bes8. d16 f8. f16 |
  f2 d |
  ees4. ees8 ees8. ees16 ees8. ees16 |
  d2 bes |
  
  c4. c8 bes8. c16 g'8. g16 |
  fis2 d4 d |
  g g f f |
  f2. s8 \bar"|."
}
altoWords = \lyricmode {
}
altoWordsII = \lyricmode {
%\markup\italic
  \set stanza = #"2. "
}
altoWordsIII = \lyricmode {
  \set stanza = #"3. "
}
altoWordsIV = \lyricmode {
  \set stanza = #"4. "
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
  \partial 8
  bes16[ bes] |
  bes8. bes16 bes8. bes16 f8. bes16 bes8. a16 |
  bes8. bes16 bes8. a16 bes4 bes8. bes16 |
  
  bes8. bes16 bes8. c16 bes8. c16 bes8. bes16 |
  bes8. bes16 bes8. f16 bes4 bes8. bes16 |
  
  bes8. bes16 bes8. bes16 f8. bes16 bes8. a16 |
  bes8. bes16 bes8. a16 bes4 bes |
  ees ees d c |
  d1 |
  
  bes4 bes4 f8. bes16 bes8. a16 |
  bes2 bes |
  bes4. c8 bes8. c16 bes8. a16 |
  bes2 bes |
  
  a4. a8 f8. a16 d8. c16 |
  a2 bes4 bes |
  ees ees d c |
  d2. s8 \bar "|."
}

tenorWords = \lyricmode {
}

tenorWordsII = \lyricmode {
}

tenorWordsIII = \lyricmode {
}

bassMusic = \relative c' {
  bes,16[ bes] |
  bes8. bes16 bes8. bes16 bes8. bes16 d8. f16 |
  bes8. bes16 bes8. f16 bes,4 d8. d16 |
  
  ees8. ees16 ees8. f16 g8. f16 g8. ees16 |
  bes8. bes16 bes8. bes16 bes4 bes8. bes16 |
  
  bes8. bes16 bes8. bes16 bes8. f'16 d8. c16 |
  bes8. d16 f8. fis16 g4 f |
  ees ees f f |
  bes,1 |
  
  bes4 bes bes8. f'16 d8. c16 |
  bes2 bes4( d) |
  ees4. f8 g8. f16 g8. a16 |
  bes4( a) g( f) |
  
  f4. f8 bes,8. f'16 g8. ees16 |
  d2 g4 f |
  ees ees f f |
  bes,2. d8\rest \bar"|."
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
    \new Lyrics = "altos"  \lyricsto "sopranos" \sopWords
    \new Lyrics = "altosII"  \lyricsto "sopranos" \sopWordsII
    \new Lyrics = "altosIII"  \lyricsto "sopranos" \sopWordsIII
    \new Lyrics = "altosIV"  \lyricsto "sopranos" \sopWordsIV
    \new Lyrics = "altosV"  \lyricsto "sopranos" \sopWordsV
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"tenors" } \lyricsto "tenors" \tenorWordsIII
    \new Lyrics \with { alignAboveContext = #"tenors" } \lyricsto "tenors" \tenorWordsII
    \new Lyrics \with { alignAboveContext = #"tenors" } \lyricsto "tenors" \tenorWords
  >>
%    \new PianoStaff << \new Staff { \new Voice { \pianoRH } } \new Staff { \clef "bass" \pianoLH } >>
  >>
  
  \layout {
    \context {
      \Lyrics
      \override LyricText #'font-size = #1.3
      \override VerticalAxisGroup #'staff-affinity = #0
      \override LyricText #'X-offset = #center-on-word
    }
    \context {
      \Score
      \override SpacingSpanner #'base-shortest-duration = #(ly:make-moment 1 8)
      \override SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 4)
    }
    \context {
      % Remove all empty staves
      \Staff \RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##t
      
      \override VerticalAxisGroup #'staff-staff-spacing =
      #'((basic-distance . 0)
         (minimum-distance . 0)
         (padding . -1)
         (stretchability . 2))
    }
  }
\header {
  title = \markup{\override #'(font-name . "Garamond Premr Pro Smdb Subh"){ \abs-fontsize #18 \smallCapsOldStyle"The Battle Hymn of the Republic"}}
  poet = \markup\oldStyleNum"Julia Ward Howe (1819–1910)"
  composer = \markup\oldStyleNum"William Steffe (1830–1890)"
  tagline = ""
}}


global = {
  \key c \major
  \time 6/8
  \dynamicUp
  %\set crescendoSpanner = #'dashed-line
  %\set midiInstrument = "recorder"
  \autoBeamOff
  \override DynamicTextSpanner #'style = #'none
  \slurDashed
  \tieDashed
}

sopMusic = \relative c' {
	\partial 8
  g'8 |
  c8. d16 c8 b c d |
  \tieDashed
  e d c d4 
  
  b16~ b |
  c8. d16 c8 b( a) g |
  a d, fis g4
  
  g16~ g |
  \tieSolid
  a8 f a c4 b16 a |
  g8 e c a'4. |
  
  d8. e16 f8 b,8. a16 b8 |
  c4. g4 e8 |
  f8. g16 a8 g c b |
  \tieSolid
  c4.~ c4 \bar"|."
}
sopWords = \lyricmode {
  \set ignoreMelismata = ##t
  \set stanza = #"1. "
	When might -- y Roast Beef was the Eng -- lish -- man’s food,
  It en -- no -- bled our hearts and en -- rich -- ed our blood.
  Our __ _ sol -- diers were brave and our court -- iers were good.
}

sopWordsII = \lyricmode {
  \set stanza = #"2. "
  But since we have learned from ef -- fem -- in -- ate France
  To __ eat their ra -- gouts __ as well as to dance,
  We’re fed up with noth -- ing but vain com -- plais -- sance.
}

sopWordsIII = \lyricmode {
  \set ignoreMelismata = ##t
  \set stanza = #"3. "
  Our fa -- thers of old were ro -- bust, stout, and strong,
  And they kept o -- pen house with good cheer all day long,
  Which _ made their plump ten -- ants re -- joice in this song:
  
  Oh! the Roast Beef of old Eng -- land,
  And oh for old Eng -- land’s Roast Beef! __ _
}

sopWordsIV = \lyricmode {
  \set stanza = #"4. "
  \set ignoreMelismata = ##t
  Great Han -- del, ’tis said, could eat din -- ner for six,
  Which was doubt -- less his rea -- son on Eng -- land to fix,
  As the land where good mu -- sic with eat -- ing they mix.
}

sopWordsV = \lyricmode {
  \set stanza = #"5. "
  \set ignoreMelismata = ##t
  Then long may each Brit -- on of beef have his fill
  At __ _ Christ -- mas, the sea -- son of peace and good -- will,
  For the man that’s well fed, sirs, can nev -- er do ill.
}

altoMusic = \relative c' {
  g'8 |
  e8. e16 g8 g g b |
  g g g b4 \bar""\break
  
  \tieDashed
  g16~ g |
  fis8. fis16 fis8 g( fis) g |
  fis d c b4 \bar""\break
  
  d16~ d |
  \tieSolid
  f8 f f f4 f16 f |
  c8 c c e4. \bar"||"\break
  
  f8. g16 a8 f8. f16 f8 |
  e4. c4 c8 |
  d8. e16 f8 f f f |
  e4.~ e4 \bar"|."
}
altoWords = \lyricmode {
}
altoWordsII = \lyricmode {
%\markup\italic
  \set stanza = #"2. "
}
altoWordsIII = \lyricmode {
  \set stanza = #"3. "
}
altoWordsIV = \lyricmode {
  \set stanza = #"4. "
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
  g8 |
  g8. g16 c8 d e f |
  c e c f4
  
  \tieDashed
  f16~ f |
  d8. d16 d8 d( c) b |
  c c a d4
  
  b16~ b |
  \tieSolid
  c8 a c a4 g16 f |
  e8 g c cis4. |
  
  a8. d16 d8 d8. d16 d8 |
  c4. c4 c8 |
  a8. g16 f8 d' d d |
  c4.~ c4 \bar"|."
}

tenorWords = \lyricmode {
}

tenorWordsII = \lyricmode {
}

tenorWordsIII = \lyricmode {
}

bassMusic = \relative c' {
  g8 |
  c,8. c16 e8 g g g |
  c, c e g4
  
  \tieDashed
  g,16~ g |
  a8. a16 a8 g( d') e |
  d fis d g4
  
  g16~ g |
  \tieSolid
  f8 f f f4 f16 f |
  c8 c e a,4. |
  
  d8. d16 d8 g8. g16 g8 |
  a4. e4 c8 |
  f8. e16 d8 g g g, |
  c4.~ c4 \bar"|."
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
    \new Lyrics = "altos"  \lyricsto "sopranos" \sopWords
    \new Lyrics = "altosII"  \lyricsto "sopranos" \sopWordsII
    \new Lyrics = "altosIII"  \lyricsto "sopranos" \sopWordsIII
    \new Lyrics = "altosIV"  \lyricsto "sopranos" \sopWordsIV
    \new Lyrics = "altosV"  \lyricsto "sopranos" \sopWordsV
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"tenors" } \lyricsto "tenors" \tenorWordsIII
    \new Lyrics \with { alignAboveContext = #"tenors" } \lyricsto "tenors" \tenorWordsII
    \new Lyrics \with { alignAboveContext = #"tenors" } \lyricsto "tenors" \tenorWords
  >>
%    \new PianoStaff << \new Staff { \new Voice { \pianoRH } } \new Staff { \clef "bass" \pianoLH } >>
  >>
  
  \layout {
    \context {
      \Lyrics
      \override LyricText #'font-size = #0.9
      \override VerticalAxisGroup #'staff-affinity = #0
      \override LyricText #'X-offset = #center-on-word
    }
    \context {
      \Score
      \override SpacingSpanner #'base-shortest-duration = #(ly:make-moment 1 8)
      \override SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 4)
    }
    \context {
      % Remove all empty staves
      \Staff \RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##t
      
      \override VerticalAxisGroup #'staff-staff-spacing =
      #'((basic-distance . 0)
         (minimum-distance . 0)
         (padding . -1)
         (stretchability . 2))
    }
  }
\header {
  title = \markup{\override #'(font-name . "Garamond Premr Pro Smdb Subh"){ \abs-fontsize #18 \smallCapsOldStyle"The Roast Beef of Old England"}}
  poet = \markup\oldStyleNum"Henry Fielding (1707–1754) and others"
  composer = \markup\oldStyleNum"Richard Leveridge (1670–1758)"
  tagline = ""
}}


