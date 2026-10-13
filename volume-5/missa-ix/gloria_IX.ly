\version  "2.18.0"
\include "gregorian.ly"
\include "noh2.ily"

%Proofed 3/14

global = {
  \key g \major
  \cadenzaOn
}

chantText = \lyricmode {
  Gló -- ri -- a in ex -- cél -- sis De -- o.
  Et in ter -- ra pax ho -- mí --  ni -- bus
  bo -- næ vo -- lun -- tá -- tis.
  Lau -- dá -- mus te.
  Be -- ne -- dí -- ci -- mus te.
  Ad -- o -- rá -- mus te.
  Glo -- ri -- fi -- cá -- mus te.
  Grá -- ti -- as á -- gi -- mus ti -- bi
  pro -- pter ma -- gnam gló -- ri -- am tu -- am.
  Dó -- mi -- ne De -- us, Rex cœ --  lé -- stis,
  De -- us Pa -- ter o -- mní -- po -- tens.
  Dó -- mi -- ne Fi -- li u -- ni -- gé -- ni -- te
  Je -- su Chri -- ste.
  Dó -- mi -- ne De -- us, A -- gnus De -- i, Fí -- li -- us Pa -- tris.
  Qui tol --  lis pec -- cá -- ta mun -- di,
  mi -- se -- ré -- re no -- bis.
  Qui tol -- lis pec -- cá -- ta mun -- di,
  sús -- ci -- pe de -- pre -- ca -- ti -- ó -- nem no -- stram.
  Qui se -- des ad déx -- te -- ram Pa -- tris,
  mi -- se -- ré -- re no -- bis.
  Quó -- ni -- am tu so -- lus san -- ctus.
  Tu so -- lus Dó -- mi -- nus.
  Tu so -- lus Al -- tís -- si -- mus, Je -- su Chri -- ste.
  Cum San -- cto Spí -- ri -- tu, in gló -- ri -- a De -- i Pa -- _ tris.
  A -- _ _ _ men.
}

chantMusic = \relative c' {
  %1
  d4( e d) c( d) d d e( fis)
  g( \once \tweak #'font-size #-4 fis) e( d) b( c d) d \finalis

  %2
  a'4 b fis( g a) a \forceBreak
  d,4 e( fis) g( fis) e( d) d4 \divisioMinima
  g e d e b( c d) d \finalis

  %3
  a'4 g( fis e) g4 a4 \finalis \forceBreak

  %4
  a4 a( g fis g) e4 d g a \finalis

  %5
  a4 a( g fis g) e( d c) e4 d4 \finalis \forceBreak

  %6
  a'4 b a g( fis e) g4 a \finalis

  %7
  d,4 e fis g e d g a \divisioMinima
  a b( c) \forceBreak
  d4 b( a) b( a) g( fis) e( fis) fis( e d) d4 \finalis

  %8
  a'4 g fis( e d) g a \divisioMinima
  a( d) c( b a g) b( c) a4 \divisioMinima \forceBreak
  d,( e) g( fis) e( d) g( a) b( a) fis( g) e( d) c( d) \finalis

  %9
  e4 d c d e g a b( a) g a \divisioMinima \forceBreak
  g c b( a g) a4 \finalis

  %10
  d,( g fis) g4 a b a \divisioMinima
  g( fis) e( d) g a \divisioMinima
  b a g( fis) \forceBreak
  e( d) g( a) \finalis

  %11
  c4 b( c) a a g a b( c) a4 \divisioMinima
  b a g( fis) e( d) g( a) a4 \finalis \forceBreak

  %12
  d c( d) b( a) d d c( b) c( d) b( a) \divisioMinima
  a( g fis g) e d a' a g a \forceBreak
  b( c d) c( b a) g( a) a4 \finalis

  %13
  a4 d, a' g c b a g a \divisioMinima
  a b( c) \forceBreak
  d( c) b( a) g( a) a4 \finalis

  %14
  a4 g fis( g) e( d) g4 a b( c) a4 \finalis

  %15
  d4 c b( a b) g4 a a \finalis \forceBreak

  %16
  d4 e d a( b) c( d) c4 b( a) \divisioMinima
  g4 c b( a g) a4 \finalis

  %17
  a( b) g( \once \tweak #'font-size #-4 fis) e( d) g4 a a \divisioMinima \forceBreak
  a( \once \tweak #'font-size #-4 d) d4 c d a c b( a g) a( b) a4 \finalis

  %18
  a( fis) g( fis e d4.) c4( e) g( fis e) e( d) \finalis
}

altoMusic = \relative c' {
  %2
  s2*8 s4
  d2~ d2*2~ d2*3/2 b2~ b2*3/2
  d2*2 g,2*3/2 a4

  %3
  d4 b2*3/2 d2

  %4
  d4~ d2*2 \glissando e4 d4~ d2

  %5
  d4~ d2*2 c2*3/2 a2

  %6
  c2*3/2 d~ d2

  %7
  s4*3 b2*3/2 c2
  e2*3/2 d~ d2~ d2*2 a2*3/2~ a4

  %8
  d2~ d2*3/2~ d2~
  d2~ d2*2 e2*3/2
  d2*2 -\tweak Glissando.Y-offset #-0.7 \glissando e4
  d~ d2*2~ d2 c2 a2

  %9
  s4*3 d2~ d c2*2
  e2 d2*3/2~ d4

  %10
  d2*5/2~ d2~ d2*2 c2 e2
  \allowVoiceLineBreak d2 \glissando e4
  d~ d2

  %11
  s4 e2*2 d2 c2*3/2
  e2 d2 -\tweak Glissando.Y-offset #-0.7 \glissando e4
  d4~ d2~ d4

  %12
  d4 e2*5/2 g2*3/2~ g2 e2
  d2*3/2~ d2*3/2~ d2*2~ d2*3/2 e d2~ d4

  %13
  s2*2 e2*3/2~ e2~
  e4 g2~ g2*2 e2~ e4

  %14
  d2~ d2 \glissando e4*2 e2~ e2*3/2

  %15
  g4~ g~ g2*3/2 e2~ e4

  %16
  s4 g2~ g2 e2*3/2~ e2
  g2 <c, e>2*2

  %17
  d2 b2*2 d2*3/2~
  d2 e2*3/2~ e2~ e2~ e4~ e2*3/2

  %18
  d2 b2*9/4 c2 d2*3/2 a2
}

tenorMusic = \relative c' {
  %2
  s2*8 s4 \finalis
  fis,2 b2*2 a2*3/2 g2 fis2*3/2 \divisioMinima
  g2*2 e2*3/2 fis4 \finalis

  %3
  fis4 g2*3/2~ g4 fis \finalis

  %4
  fis4 g2*2 fis2 e4 fis \finalis

  %5
  fis4 g2*2~ g2*3/2~ g4 fis \finalis

  %6
  e2*3/2 g2*3/2~ g4 fis \finalis
 
  %7
  a2*3/2 g~ g2~ \divisioMinima
  g2*3/2~ g fis2 g2*2~ g2*3/2 fis4 \finalis

  %8
  fis2 a2*3/2 g2 \divisioMinima
  fis2 g2*2~ g2*3/2~ \divisioMinima
  g2*2 fis2 g2*2 a2 g~ g4 fis4 \finalis

  %9
  g2*3/2~ g2~ g~ g2*2~ \divisioMinima
  g2 e2*3/2 fis4 \finalis

  %10
  g2*5/2 fis2 \divisioMinima
  g2*2~ g2~ \divisioMinima
  g~ g2 fis e4 fis4 \finalis

  %11
  s4 g2*2~ g2~ g2*3/2~ \divisioMinima
  g2~ g2 fis e fis4 \finalis

  %12
  g4~ g2*5/2~ g2*3/2 c2~ c \divisioMinima
  b2*3/2 a2*3/2 fis2*2 g2*3/2~ g~ g2 fis4 \finalis

  %13
  d'4~ d2*3/2 c b4 c4~ \divisioMinima
  c~ c2 b2*2~ b2 c4 \finalis

  %14
  fis,2 a2~ a b2 c2*3/2 \finalis

  %15
  b4 c d2*3/2~ d2 c4 \finalis

  %16
  s4 b2 d2~ d2*3/2 c2~ \divisioMinima
  c2 s2*2 \finalis

  %17
  fis,2 g2*2~ g2*3/2 \divisioMinima
  fis2 g2*3/2~ g2~ g2 b4 c2*3/2 \finalis

  %18
  fis,4 a4 g2*9/4~ g2~ g2*3/2~ g4 fis4 \finalis
}

bassMusic = \relative c {
  %2
  s2*8 s4
  d2~ d2*2 fis2*3/2 e2 b2*3/2~
  b2*2 d2*3/2~ d4

  %3
  d4 e2*3/2 d2

  %4
  d4 b2*2~ b2 d2

  %5
  d4 b2*2 a2*3/2 d2

  %6
  a2*3/2 b2*3/2 d2

  %7
  fis2*3/2 e a,2
  c2*3/2 b~ b2~ b2*2 d2*3/2~ d4

  %8
  d2~ d2*3/2~ d2~
  d2 e2*2 c2*3/2
  b2*2~ b2~ b2*2~ b2 d~ d

  %9
  c2*3/2~ c2 b a2*2
  c2 d2*3/2~ d4

  %10
  b2*5/2~ b2~
  b2*2 a2
  c b2~ b d

  %11
  c4~ c2*2 b2 a2*3/2
  c2 b2~ b d~ d4

  %12
  b4 c2*5/2 e2*3/2~ e2 a
  d,2*3/2~ d2*3/2~ d2*2 b2*3/2 a d2~ d4

  %13
  s4 b'2*3/2 a~ a2~
  a4 e2~ e2*2 a2~ a4

  %14
  d,2~ d2 fis e2 a2*3/2

  %15
  g4 e~ e2*3/2 a2~ a4

  %16
  g4~ g2 g2 a2*3/2~ a2
  e2 a,2*2

  %17
  d2 e2*2 d2*3/2~
  d2~ d2*3/2 c2 e2~ e4 a2*3/2

  %18
  d,2 e2*9/4 a,2 b2*3/2 d2
}

voiceLines = \relative c' {
  \voiceLineStyle

  %2
  s2*15 s4
  \voiceLine "down" "up" g2*2 g2*3/2

  %16
  s2*113 s4
  \voiceLine "down" "up" c2 c2
}

\score {
  <<
    \new Lyrics
  \new GrandStaff <<
    \set GrandStaff.instrumentName = "VII."

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

  >>
    \context Lyrics {
      \lyricsto chant \chantText
    }
>>
}
 

