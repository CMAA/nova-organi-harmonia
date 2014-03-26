\version  "2.18.0"
\language "english"

% Breathing marks are borrowed from gregorian.ly
quarterBar = {
  \once \override BreathingSign.stencil = #ly:breathing-sign::divisio-minima
  \once \override BreathingSign.minimum-X-extent = #'(-1.0 . 0.0)
  \once \override BreathingSign.minimum-Y-extent = #'(-2.5 . 2.5)

  \breathe
}
halfBar = {
  \once \override BreathingSign.stencil = #ly:breathing-sign::divisio-maior
  \once \override BreathingSign.Y-offset = #0
  \once \override BreathingSign.minimum-X-extent = #'(-1.0 . 0.0)
  \once \override BreathingSign.minimum-Y-extent = #'(-2.5 . 2.5)

  \breathe
}

doubleBar   = { \bar "||" }
forceBreak  = { \bar "" \break }
shiftRight  = { \once \override NoteColumn #'force-hshift = #0.9 }
shiftRightB = { \once \override NoteColumn #'force-hshift = #1.6 }
staffDown   = { \change Staff = "down" }
staffUp     = { \change Staff = "up"   }

global = {
  \key d \major
}

chantText = \lyricmode {
  %Line 1
  Cre -- do in u -- num De -- um, Pa -- trem o -- mni -- po -- tén -- tem,
  fa -- ctó -- rem cœ -- li et ter -- ræ, vi -- si -- bí -- li -- um ó -- mni -- um,
  et in -- vi -- si -- bí -- li -- um. Et in u -- num Dó -- mi -- num
  Je -- sum Chri -- stum, Fí -- li -- um De -- i u -- ni -- gé -- ni -- tum.
  Et ex Pa -- tre na -- tum an -- te ó -- mni -- a saé -- cu -- la.
  De -- um de De -- o, lu -- men de lú -- mi -- ne, De -- um ve -- rum de
  De -- o ve -- ro. Gé -- ni -- tum, non fa -- ctum, con -- sub -- stan -- ti -- á -- lem Pa -- tri:
  per quem ó -- mni -- a fa -- cta sunt. Qui pro -- pter nos hó -- mi -- nes,
  et pro -- pter no -- stram sa -- lú -- tem de -- scén -- dit de cœ -- lis.
  Et in -- car -- ná -- tus est de Spí -- ri -- tu San -- cto ex Ma -- rí -- a
  Vír -- gi -- ne: Et ho -- mo fa -- ctus est. Cru -- ci -- fí -- xus é -- ti -- am pro
  no -- bis: sub Pón -- ti -- o Pi -- lá -- to pas -- sus et se -- púl -- tus est.
  Et re -- sur -- ré -- xit tér -- ti -- a di -- e, se -- cún -- dum Scri -- ptú -- ras.
  Et a -- scén -- dit in cœ -- lum se -- det ad dé -- xte -- ram Pa -- tris.
  Et í -- te -- rum ven -- tú -- rus est cum gló -- ri -- a, ju -- di -- cá -- re
  vi -- vos et mór -- tu -- os: cu -- jus re -- gni non e -- rit fi -- nis.
  Et in Spí -- ri -- tum San -- ctum, Dó -- mi -- num, et vi -- vi -- fi -- cán -- tem:
  qui ex Pa -- tre Fi -- li -- ó -- que pro -- cé -- dit. Qui cum Pa -- tre et
  Fí -- li -- o si -- mul ad -- o -- rá -- tur, et con -- glo -- ri -- fi -- cá -- tur:
  qui lo -- cú -- tus est per Pro -- phé -- tas. Et u -- nam san -- ctam
  ca -- thó -- li -- cam et a -- po -- stó -- li -- cam Ec -- clé -- si -- am.
  Con -- fí -- te -- or u -- num ba -- ptís -- ma in re -- mis -- si -- ó -- nem pec -- ca --
  tó -- rum. Et ex -- spé -- cto re -- sur -- re -- cti -- ó -- nem mor -- tu -- ó -- rum.
  Et vi -- tam ven -- tú -- ri saé -- cu -- li. A -- _ _ _ _ _ _ men.
}

chantMusic = \relative c' {
  \cadenzaOn

  %Measure 1
  a'4 fs d g fs fs8( e d4) d \doubleBar

  %2
  fs4*1/3( g4*2/3) fs4 a fs d e d \halfBar \forceBreak
  d4 fs g a a a b a \halfBar
  a a b b d cs8( a b4) b a \halfBar \forceBreak
  a fs d g fs8( d e4) e d \doubleBar

  %3
  a'4 a fs fs d d e \forceBreak
  fs g e d \quarterBar
  fs fs fs g e a a b b a \doubleBar \break

  %4
  fs4 e g g fs8( d e4) d \quarterBar
  fs4 fs a b a fs8( d e4) e d \doubleBar \break

  %5
  a' a a fs d \quarterBar
  d e e fs e d \quarterBar
  a' a b a d \forceBreak
  cs a b a \doubleBar

  %6
  fs fs e g fs8( d e4) d \quarterBar
  fs4 fs a a b a g a \halfBar \forceBreak
  b d cs a a b g a \doubleBar

  %7
  a4 a fs fs a b a \quarterBar \forceBreak
  d,4 d d d e fs g a \quarterBar
  b cs d cs4*1/3( a4*2/3) b4 a \doubleBar \break

  %8
  a4 fs fs d e d fs fs e fs a4*1/3( b4*2/3) a4 \quarterBar
  b d cs a \forceBreak
  b b a \halfBar
  d, fs fs g g a \doubleBar

  %9
  fs4 e8( g) fs( d e4) d d e fs g \forceBreak
  a4*1/3( b4*2/3) a4 \quarterBar
  a a a b g a fs \quarterBar
  a fs d g fs8( d e4) e d \doubleBar \break

  %10
  a'4 a a b a a fs g a a \quarterBar
  d, e fs g e d \doubleBar \break

  %11
  d4 fs a4*1/3( b4*2/3) cs4 d cs8( a b4) a \halfBar
  a a a fs fs g fs8( d e4) d \doubleBar \break

  %12
  a'4 a a fs fs d d e e fs e d \quarterBar
  a' a b a \forceBreak
  d cs a b b a \halfBar
  a a fs d g fs fs e d \doubleBar \break

  %13
  d'4 d b b d a a b b a \quarterBar
  d, fs a a b a \halfBar \forceBreak
  a g a fs g e fs g fs4*1/3( d4*2/3) e4 d \doubleBar

  %14
  d4 fs a a fs \forceBreak
  g fs a \quarterBar
  b a d cs b a \quarterBar
  d, fs fs a a b a \halfBar \forceBreak
  a a fs fs d g fs4*1/3( d4*2/3) e4 d \doubleBar

  %15
  a'4 a a fs fs \forceBreak
  d e e d \quarterBar
  a' a a a a b g a a fs \doubleBar \break

  %16
  a4 b cs d b d cs4*1/3( a4*2/3) b4 a \quarterBar
  fs e fs a g fs e fs \forceBreak
  e d \doubleBar

  %17
  a'4 a fs d a' a a a b a g fs g fs \doubleBar \break

  %18
  d'4 cs4*1/3( b4*2/3) a4 fs b a fs g a \doubleBar

  %19
  a8(  fs d4) e8( e d4.)
  d'8( cs a4) b8( b a4.)
  fs4*1/3( g4*2/3)
  a4*1/3( d,4*2/3)
  e8( e d4) d \doubleBar
}

altoMusic = \relative c' {
  %1
  s2*4

  %2
  d2~ d2*3/2 s2
  d4~ d2 e2*3/2~ e2
  fs g2*3/2 e2*3/2~ e4~
  e d2*3/2~ d2 a

  %3
  e'2 d~ d2*3/2~ d2 \glissando e4 d~
  d2*3/2~ d2 e~ e~ e4

  %4
  d2~ d~ d2*3/2~
  d2 e2*3/2 d2 a

  %5
  e'2*3/2 d2~
  d2*3/2~ d2~ d4
  e2 fs2*3/2~
  fs2~ fs

  %6
  d2*2~ d2*3/2~
  d2 e d~ d
  fs~ fs2*3/2 e2~ e4

  %7
  s4 d2*3/2 e
  (d4) d d d2*3/2~ d4 e~
  e g2 a2*1/2 e2

  %8
  s4 d2~ d2*2~ d2*3/2 e2
  fs~ fs~ fs2*3/2
  d4~ d2~ d e4

  %9
  d2~ d2*3/2 d2*2 e2~
  e4 d2~  d e
  d2~ d~
  d -\tweak Glissando.Y-offset #-0.6 \glissando e4
  s4

  %10
  fs2*3/2 e2 d2*3/2 e2
  d4~ d2*3/2 a2

  %11
  s2*2 s4 e'2 e4
  e2*3/2 d~ d2~ d4

  %12
  s4 e2 d~ d2*2~ d2~ d4
  e2 fs
  g2*3/2 fs
  e2 d2*3/2~ d2 a

  %13
  d2~ d2*3/2~ d2 e2*3/2
  d2*2 cs2
  d~ d2*2~ d2~ d2*1/2 a2

  %14
  d2 e2*3/2 d
  fs2~ fs cs \glissando
  d4~ d2*2 cs2
  e d~ d~ d2*1/2 a2

  %15
  s4 e'2 d s2*2
  e2*3/2 d2~ d cs d4

  %16
  e4 fs2*3/2~ fs2~ fs2*1/2~ fs2
  cs d~ d~ d a

  %17
  e'2 d e2*2 d2~ d~ d

  %18
  s4 fs2*1/2~ fs2~ fs d e4

  %19
  d2( e4) d4.~
  d2 e2*5/4
  d2*1/2~ d a2~ a4
}

tenorMusic = \relative c' {
  %1
  s2*4

  %2
  a2~ a2*3/2~ a2~ \halfBar
  a4~ a2~ a2*3/2~ a2 \halfBar
  d~ d2*3/2~ d2*3/2 cs4~ \halfBar
  cs b2*3/2 a2 g4 fs

  %3
  a2 b a2*3/2 g2 fs \quarterBar
  b2*3/2~ b2~ b d cs4

  %4
  a2 g a2*3/2~ \quarterBar
  a2~ a2*3/2~ a2 g4 fs4

  %5
  a2*3/2~ a2 \quarterBar
  g2*3/2 fs2 b4 \quarterBar
  a2~ a2*3/2 d2 cs

  %6
  b2*2 a2*3/2~ \quarterBar
  a2~ a fs e4 fs \halfBar
  a2 d2*3/2~ d2 cs4

  %7
  a4~ a2*3/2~ a~ \quarterBar
  a4~ a2 b2*3/2~ b4 cs~ \quarterBar
  cs d2 e2*1/2 d4 cs

  %8
  a4~ a2 b2*2 a2*3/2~ a2 \quarterBar
  d~ d cs2*3/2 \halfBar
  b4~ b2~ \shiftRightB b cs4

  %9
  a2~ a2*3/2 b2*2 a2~ \quarterBar
  a4 fs2 e fs~ \quarterBar
  fs g a g4 fs

  %10
  d'2*3/2 cs2 b2*3/2 cs2 \quarterBar
  b4~ b2*3/2 g4 fs

  %11
  d'2 e2*3/2 d2 cs4~ \halfBar
  cs2*3/2 b a2*1/2 g4 fs

  %12
  a4~ a2~ a g2*2 fs2 b4 \quarterBar
  a2 d~ d2*3/2 cs \halfBar
  a2 b2*3/2 a2 g4 fs

  %13
  fs2 g2*3/2 fs2 a2*3/2~ \quarterBar
  a2*2~ a2 \halfBar
  b~ b2*2~ b2 a2*1/2 g4 fs

  %14
  a2~ a2*3/2~ a~ \quarterBar
  a2~ a~ a~ \quarterBar
  a4 b2*2 fs2 \halfBar
  a~ a b a2*1/2 g4 fs

  %15
  a4~ a2~ a s4 g2 fs4 \quarterBar
  e2*3/2 fs2 g e fs4

  %16
  a4~ a2*3/2 d2~ d2*1/2 cs2 \quarterBar
  a~ a~ a g~ g4 fs

  %17
  a2~ a~ a2*2 fs2 g b

  %18
  s4 d2*1/2~ d2~ d b cs4

  %19
  fs,2 g2*1/2 fs2*3/4~
  fs2 a2*5/4
  b2*1/2 a g2 fs4
}

bassMusic = \relative c {
  %1
  s2*4

  %2
  d2 cs2*3/2 b2~
  b4 d2~ d2*3/2 cs2
  d e2*3/2 a2*3/2~ a4~
  a b2*3/2 d,2~ d

  %3
  cs2 b~ b2*3/2~ b2~ b
  d2*3/2 e2 a~ a~ a4

  %4
  d,2 b~ b2*3/2
  d2 cs2*3/2 d2~ d

  %5
  cs2*3/2 b2~
  b2*3/2~ b2~ b4
  cs2 d2*3/2~
  d2 fs

  %6
  b,2*2 d2*3/2~
  d2 cs b~ b
  d~ d2*3/2 a'2~ a4

  %7
  s4 d,2*3/2 cs~
  cs4 b2 s2*3/2 a'2~
  a4 e2 fs2*1/2 a2

  %8
  s4 d,2~ d2*2~ d2*3/2 cs2
  d e
  fs2*3/2
  s2 s4 a2~ a4

  %9
  d,2 b2*3/2~ b2*2 cs2~
  cs4 d2~ d cs
  b~ b d2~ d2

  %10
  s2*4 a'2~
  a4 g2*3/2 d2

  %11
  b'2 a2*3/2~ a2~ a4
  fs2*3/2 \shiftRight b d,2*1/2~ d2

  %12
  s4 cs2 b~ b2*2~ b2~ b4
  cs2 d
  e2*3/2 fs
  cs2 d2*3/2~ d2~ d

  %13
  b2~ b2*3/2 d2 cs2*3/2
  fs2*2~ fs2
  e d2*2 b2 d2*1/2~ d2

  %14
  d2 cs2*3/2 b
  d2 e fs~
  fs4 \shiftRight b2*2 s2
  cs,2 d~ d~ d2*1/2~ d2

  %15
  s4 cs2 d~ d4~ d2~ d4
  cs2*3/2 b2~ b~ b~ b4

  %16
  cs4 d2*3/2~ d2 e2*1/2 fs2
  s d b~ b d

  %17
  cs2 d cs2*2 b2~ b~ b

  %18
  d4~ d2*1/2 fs2 g a~ a4

  %19
  d,2~ d2*1/2~ d2*3/4
  b2 cs2*5/4
  d2*1/2~ d~ d2~ d4
}

voiceLines = \relative c' {
  \override Glissando #'style = #'dashed-line
  \override NoteColumn #'force-hshift = #0
  \override NoteHead #'transparent = ##t

  %1-2
  s2*18
  \staffDown a2 \glissando \staffUp a2

  %3-4
  s2*16 s4
  \staffDown a2 \glissando \staffUp a2

  %5-7
  s2*30 s4
  \staffDown e'2*1/2 \glissando \staffUp e2

  %8-10
  s2*31
  \staffDown g,2*3/2 \glissando g4
  s4

  %11
  s2
  \staffDown e'2*3/2 \glissando \staffUp e2
  s2*4 s4

  %12
  s2*14
  \staffDown a,2 \glissando \staffUp a2

  %13
  s2*12
  \staffDown a2*1/2 \glissando \staffUp a2

  %14
  s2*13 s4
  \staffDown a2*1/2 \glissando \staffUp a2

  %15-16
  s2*13
  \staffDown cs2 \glissando \staffUp cs2
  s2*4 s4

  %17-18
  s2*8 s4
  \staffDown d2 \glissando \staffUp d2
  s4

  %19
  s2*5
  \staffDown a2*1/2 \glissando \staffUp a2
}

\paper {
  line-width    = 6.5\in
  top-margin    = 0.4\in
  bottom-margin = 0.7\in
  markup-system-spacing #'padding = #2
  top-system-spacing    #'padding = #4

  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "CREDO III."
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "CREDO III." }
    \line {}
  }
}

\header {
  title = "CREDO."
  subtitle = "III."
  tagline = ""
}

\score {
  \new StaffGroup <<
    \set StaffGroup.instrumentName = "V."
    \set StaffGroup.systemStartDelimiter = #'SystemStartBrace

    \new Staff = up <<
      \new Voice = "chant" {
        \voiceOne
        << \global \chantMusic >>
      }
      \new Voice {
        \voiceTwo
        << \global \altoMusic >>
      }
    >>

    \new Staff = down <<
      \clef bass
      \new Voice {
        \voiceOne
        << \global \tenorMusic >>
      }
      \new Voice {
        \voiceTwo
        << \global \bassMusic >>
      }
      \new Voice {
        \voiceThree
        << \global \voiceLines >>
      }
    >>

    \new Lyrics \lyricsto chant \chantText
  >>

  \layout {
    indent = 1.7\cm
    ragged-last = ##f
    \context {
      \Staff
      \remove "Time_signature_engraver"
      \omit Flag
      \omit Stem
    }
    \context {
      \Lyrics
      \with { alignAboveContext = "up" }
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing #'minimum-distance = #4
      \override LyricText #'font-size = #-1
    }
  }
}
