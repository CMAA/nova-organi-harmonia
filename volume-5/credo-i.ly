\version  "2.18.0"
\language "english"
\include "../noh.ily"

global = {
  \key d \major
  \cadenzaOn
}

chantText = \lyricmode {
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
  Et í -- te -- rum ven -- tú -- rus est cum gló -- ri -- a ju -- di -- cá -- re
  vi -- vos et mór -- tu -- os: cu -- jus re -- gni non e -- rit fi -- nis.
  Et in Spí -- ri -- tum San -- ctum, Dó -- mi -- num, et vi -- vi -- fi -- cán -- tem:
  qui ex Pa -- tre Fi -- li -- ó -- que pro -- cé -- dit. Qui cum Pa -- tre et
  Fí -- li -- o si -- mul ad -- o -- rá -- tur, et con -- glo -- ri -- fi -- cá -- tur:
  qui lo -- cú -- tus est per Pro -- phé -- tas. Et u -- nam san -- ctam
  ca -- thó -- li -- cam et a -- po -- stó -- li -- cam Ec -- clé -- si -- am.
  Con -- fí -- te -- or u -- num ba -- ptís -- ma in re -- mis -- si -- ó -- nem pec -- ca --
  tó -- rum. Et ex -- spé -- cto re -- sur -- re -- cti -- ó -- nem mor -- tu -- ó -- rum.
  Et vi -- tam ven -- tú -- ri saé -- cu -- li. A -- _ men.
}

chantMusic = \relative c' {
  %Measure 1
  a'4 fs g e fs a b \doubleBar

  %2
  b16( c16*3) b4 b a g a a \halfBar \forceBreak
  fs16( g16*3) a4 a a g b a a \quarterBar
  fs g a a b a g fs16( e16*3) \quarterBar \forceBreak
  b'16( c16*3) b4 a g b a16( g16*3) a4 \doubleBar

  %3
  fs4 g a a a g fs16( g fs fs) \quarterBar \forceBreak
  e4 fs a b \halfBar
  b16( c16*3) b4 b b b a g b a16( g16*3) a4 \doubleBar \break

  %4
  fs4 g a fs a b \quarterBar
  b16( c16*3) b4 b a g b a16( g16*3) a4 \doubleBar \break

  %5
  a4 g b a a \quarterBar
  a g b a g fs16( g fs fs) \quarterBar
  e4 fs a b \forceBreak
  b a g a a \doubleBar

  %6
  fs4 g a b a fs \quarterBar
  g e fs g \forceBreak
  a fs a b \halfBar
  b16( c16*3) b4 b a g b a16( g16*3) a4 \doubleBar

  %7
  fs4 g a b \forceBreak
  a g fs \quarterBar
  e fs g a fs g a a \quarterBar
  a a g b a a \doubleBar \break

  %8
  e4 fs g a g fs fs g e fs a b \halfBar
  b16( c16*3) b4 a g \forceBreak
  b a16( g16*3) a4 \halfBar
  b16( c16*3) b4 g b a16( g16*3) a4 \doubleBar

  %9
  fs4 g a fs g fs \forceBreak
  e fs a b \halfBar
  b16( c16*3) b4 b a g a a \halfBar
  b16( c16*3) b4 a g \forceBreak
  b a16( g16*3) a4 \doubleBar

  %10
  e4 fs g a fs g e fs a b \halfBar
  b16( c16*3) b4 a \forceBreak
  g a a \doubleBar

  %11
  fs4 g a g fs a b \halfBar
  b16( c16*3) b4 b b a g \forceBreak
  a a \doubleBar

  %12
  fs16( g16*3) a4 a a a a a a b a g fs16( g fs fs) \quarterBar \forceBreak
  e4 fs a b b16( c16*3) b4 g b a16( g16*3) a4 \halfBar
  fs g a a a \forceBreak
  g b a a \doubleBar

  %13
  fs4 g a a a a b a g fs16( e16*3) \quarterBar \forceBreak
  b'16( c16*3) b4 a g a a \halfBar
  fs g a a a a a g b a a \doubleBar \break

  %14
  fs4 g a a b a g fs \quarterBar
  g fs e fs a b \halfBar
  b16( c16*3) b4 \forceBreak
  b a g a a \halfBar
  fs g a a a g b a a \doubleBar

  %15
  fs16( g16*3) a4 a \forceBreak
  a g b a g fs16( e16*3) \quarterBar
  b'16( c16*3) b4 b b b a g b a16( g16*3) a4 \doubleBar

  %16
  fs16( g16*3) a4 a a a g b a fs \quarterBar
  g fs e fs a b \forceBreak
  g b a a \doubleBar

  %17
  fs g a fs g fs e fs a b g b a a \doubleBar \break

  %18
  fs16( g16*3) a4 a a a16( g16*3) fs4 e16( b' c4) b b \doubleBar

  %19
  b16( a g4) a16( b a g fs4) e( fs) \doubleBar
}

altoMusic = \relative c' {
  %1
  s2*3 s4

  %2
  d2*3/2~ d2~ d~
  d2*1/2~ d2~ d2*3/2~ d2~
  d~ d2*3/2 e2 \glissando fs4
  d2*1/2 g2*3/2( e4)~ e2*1/2~ e4

  %3
  d2~ d~ d~ d2*1/2
  e2 d
  e2*3/2 d2~ d~ d4 b2*1/2 c4

  %4
  d2~ d~ d
  e d2*3/2~ d4~ d2*1/2~ d4

  %5
  d2*3/2~ d2~ d2*3/2~ d2~ d2*1/2
  e2 d2~ d4~ d2~ d

  %6
  d2~ d~ d~ d~ d e d
  e~ e2*3/2~ e2~ e4

  %7
  d4~ d2*3/2 cs2 d4~
  d b2~ b2*3/2 a2~
  a4 d2*3/2~ d2

  %8
  e4~ e2 cs d~ d2*3/2~ d2~
  d~ d~ d4~ d2*1/2~ d4
  g2*1/2~ g2 e4~ e2*1/2~ e4

  %9
  d2~ d b e~ e4 d~
  d2*1/2~ d2~ d~ d~
  d2*1/2~ d2*3/2~ d4 b2*1/2 c4

  %10
  s4 d2~ d~ d2*3/2~ d2~
  d2*1/2~ d2~ \set tieWaitForNote = ##t
  s4 d2       \set tieWaitForNote = ##f

  %11
  d2~ d2*3/2~ d2
  e2*1/2~ e2 d2*3/2~ d2

  %12
  d2*1/2~ d2*4 e2~ e2*1/4 d~
  d2~ d g2*3/2~ g4 e2*1/2~ e
  d2~ d2*3/2~ d2~ d

  %13
  d2 e2*3/2 d2 b2~ b2*1/2
  e2*1/2 d2*3/2~ d2~
  d~ d~ d~ d2*3/2~ d2

  %14
  d2~ d2*3/2~ d~
  d2*2~ d2
  g e2*3/2~ e2
  d2 c2*3/2 d2~ d4 c

  %15
  d2*1/2~ d2 b2*3/2~ b2~ b2*1/2
  d2*3/2~ d2*2~ d4 b2*1/2 c4

  %16
  d2*1/2~ d2*3/2~ d~ d2
  b e d~ d~ d

  %17
  a2~ a d~ d~ d~ d~ d

  %18
  d2*1/2~ d2*3/2 b2 e2*5/4 d4

  %19
  b2*3/4~ b2*1/4~ b2*3/4~ b2
}

tenorMusic = \relative c' {
  %1
  s2*3 s4

  %2
  g2*3/2 e2 fs \halfBar
  s4 fs2 \shiftRightB e 2*3/2 fs2 \quarterBar
  b a2*3/2 b2 g2*1/2 \quarterBar
  s4 d'2*3/2~ d4 b2*1/2 c4

  %3
  a2 fs b a2*1/2 \quarterBar
  fs2~ fs \halfBar
  g2*3/2~ g2 e~ e4~ e2*1/2~ e4

  %4
  s2 fs~ fs \quarterBar
  g~ g2*3/2~ g4 b2*1/2 a4

  %5
  fs4 e2 fs \quarterBar
  g2*3/2 b2 a2*1/2 \quarterBar
  fs2~ fs g4~ g2 fs

  %6
  b2 a b~ \quarterBar
  b g fs~ fs~ \halfBar
  fs g b4~ b d2*1/2 c4

  %7
  s4 b2*3/2~ b2~ b4~ \quarterBar
  b d,2~ d2*3/2~ d2~ \quarterBar
  d4~ d2 g4~g fs

  %8
  s4 b2*2~ b2~ b2*3/2~ b2 \halfBar
  g2 b g4 b2*1/2 a4 \halfBar
  d2*1/2~ d2~ d4 b2*1/2 c4

  %9
  a2 fs e fs~ fs \halfBar
  g2*1/2~ g2 b a \halfBar
  g2*1/2~ g2*3/2 e4~ e2*1/2~ e4

  %10
  s4
  d2~ d e2*3/2 fs2 \halfBar
  a2*1/2 g2 b4 a2

  %11
  a2 b2*3/2 fs2 \halfBar
  a2*1/2 g2~ g2*3/2~ g4 fs

  %12
  b2*1/2 a2*4 b2~ b2*1/2~ \quarterBar
  b2~ b~ b2*3/2 d4~ d2*1/2 c4 \halfBar
  a2 fs2*3/2 e2 g4 fs

  %13
  a2 fs2*3/2~ fs2~ fs g2*1/2~ \quarterBar
  g~ g2 b4 \shiftRightB a2~ \halfBar
  a fs~ fs g2*3/2~ g4 fs

  %14
  a2~ a2*3/2 b~ \quarterBar
  b2*2~ b2 \halfBar
  g2~ g2*3/2 e2~ \halfBar
  e~ e2*3/2~ e2~ e

  %15
  s4 fs2 e2*3/2 fs2 g2*1/2~ \quarterBar
  g2*3/2~ g e4~ e2~ e4

  %16
  s4 fs2*3/2 e fs2 \quarterBar
  e fs~fs g~ g4 fs

  %17
  d2~ d~ d a' g e~ e4 fs

  %18
  b2*1/2 a2*3/2~ a2 g2*5/4~ g4

  %19
  d2*3/4~ d2*1/4 e2*3/4 cs4 d
}

bassMusic = \relative c {
  %1
  s2*3 s4

  %2
  s4 s2*3
  d2*1/2~ d2~ d2*3/2~ d2~
  d fs2*3/2 e2~ e2*1/2
  g2*1/2~ g2*3/2 a4~ a2*1/2~ a4

  %3
  d,2~ d~ d~ d2*1/2
  cs2 b
  e2*3/2 b2~ b a4~ a2*1/2~ a4

  %4
  d2~ d b
  e \shiftRight g2*3/2 e4~ e2*1/2 fs4

  %5
  d2*3/2~ d2
  b2*3/2~ b2 d2*1/2
  cs2 b~ b4 d2~ d

  %6
  s2 fs~ fs
  e~ e cs b
  e~ e2*3/2 a2~ a4

  %7
  s4 e2*3/2 b2~ b4~
  b a2 g2*3/2 fs2~
  fs4 b2~ b4 d2

  %8
  e4~ e2*2 \shiftRight b'2 a2*3/2 g2~
  \shiftRight g fs e4~ e2*1/2 fs4
  g2*1/2 e2 a4~ a2*1/2~ a4

  %9
  d,2~ d~ d cs b~
  b2*1/2 e2~ e fs
  \shiftRight g2*1/2 e2*3/2 a,4~ a2*1/2~ a4

  %10
  s4 s2 b~ b2*3/2~ b2~
  b2*1/2 e2~ e4 fs2

  %11
  d2 b2*3/2~ b2
  e2*1/2~ e2 b2*3/2 d2

  %12
  s4 fs2*4 e2 \shiftRight b'2*1/2
  a2 g e2*3/2~ e4 a2*1/2~ a4
  d,2~ d2*3/2~ d2~ d

  %13
  d2 cs2*3/2 b2 e~ e2*1/2~
  e \shiftRight g2~ g4~ g fs
  d2~ d b~ b2*3/2 d2

  %14
  d2 fs2*3/2 \shiftRight b
  a2*2 g2
  e d2*3/2 c2
  b a2*3/2~ a2~ a

  %15
  d2*1/2~ d2 \shiftRight e2*3/2~ e2~ e2*1/2
  b2*3/2 g~ g4 a2~ a4

  %16
  cs2*1/2( d2*3/2)~ d~ d2~
  d cs b~ b d

  %17
  d,2 fs b~ b~ b~ b d

  %18
  s4 fs2*3/2 e2~ e2*5/4 \shiftRight g4

  %19
  g,2*3/4 fs2*1/4 e2*3/4 b'2
}

voiceLines = \relative c' {
  \voiceLineStyle

  %2
  s2*14 s4
  \allowVoiceLineBreak
  \voiceLine "down" "down" g2*1/2 g

  %9
  s2*73 s4
  \allowVoiceLineBreak
  \voiceLine "down" "down" e2*3/2 e4

  %12
  s2*27
  \offsetVoiceLineY
  \voiceLine "down" "down" a4 a2

  %14
  s2*23
  \voiceLine "down" "down" g2 g4
}

\paper {
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "CREDO I."
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "CREDO I." }
    \line {}
  }
}

\header {
  title = "CREDO."
  subtitle = "I."
  tagline = ""
}

\score {
  \new GrandStaff <<
    \set GrandStaff.instrumentName = "IV."

    \new Staff = up <<
      \new Voice = "chant" {
        \voiceOne \global \chantMusic
      }
      \new Voice {
        \voiceTwo \global \altoMusic
      }
    >>

    \new Staff = down <<
      \clef bass
      \new Voice {
        \voiceOne \global \tenorMusic
      }
      \new Voice {
        \voiceTwo \global \bassMusic
      }
      \new Voice {
        \voiceThree \global \voiceLines
      }
    >>

    \new Lyrics \lyricsto chant \chantText
  >>
}
