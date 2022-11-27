\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.152
%(volume.page)

global = {
 \key f \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Christo confixus sum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Christo confixus sum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Christo confixus sum" }
    \line {}
  }
}

chantText = \lyricmode {
Chri -- sto 
\set stanza = " * " con -- fí -- xus sum cru -- _ ci: 
vi -- vo au -- _ tem, jam non e -- _ go: 
vi -- vit ve -- ro in me Chri -- stus: 
in fi -- de vi -- _ vo Fí -- li -- i De -- _ i, 
qui di -- lé -- xit me, et trá -- di -- dit se -- met -- í -- psum _ pro me. 
Al -- le -- _ lú -- ia, al -- le -- _ _ lú -- ia. Ps. 
Be -- á -- tus qui in -- tél -- li -- git su -- per e -- gé -- num et páu -- pe -- rem: 
\set stanza = " * " 
in di -- e ma -- la li -- be -- rá -- bit e -- um Dó -- mi -- nus. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   f'4 ( f'4 f'4) d'4 ( f'4 e'4)  f'4 e'4 ( f'4 g'4) g'4 g'4 ( a'4) g'4. f'4 ( a'4 g'4) e'4 ( e'4 f'4) \divisioMaior
 d'4 g'4  a'4 ( g'4) a'4 ( bes'4) a'4 \divisioMinima
 c''4 ( c''4) a'4 ( g'4) g'4 ( a'4) c''4 ( b'4) b'4 ( a'4) \divisioMaior
 c''4 ( c''4) a'4 ( c''4) c''4 g'4 ( a'4) f'4 e'4 ( f'4 g'4) e'4 ( g'4 f'4 f'4) f'4 ( e'4) \divisioMaxima
 f'4 ( g'4 f'4) e'4 ( f'\prall g'4 a'4) g'4  a'4 ( g'4) a'4 ( bes'4 g'4) g'4 ( f'4) \divisioMinima
 a'4 ( c''4) c''4 b'4 ( b'4 c''4) a'4 ( b'\prall c''4) d''4 ( c''4 c''4) c''4 ( b'4) \divisioMaxima
 g'4 a'4 c''4 ( c''4) a'4 ( g'4) g'4 ( b'4 a'4 g'4 a'4) \divisioMinima
 e'4 ( f'4) g'4 ( a'4) g'4 g'4 a'4 g'4  a'4 ( bes'4 g'4) g'4 ( f'4) a'4 ( g'4 f'4 g'4) e'4 ( g'4 f'4 f'4) f'4 ( e'4) \divisioMaxima
 f'4 f'4 ( a'4) c''4 ( a'4) g'4 ( a'4 g'4) e'4 \divisioMinima
 g'4  g'4. a'4 ( bes'4 g'4 f'4) a'4 ( g'4 f'4 g'4) e'4 ( g'4 f'4 f'4) f'4 ( e'4) \finalis
 a'4 ( g'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 ( g'4) g'4 ( b'4) b'4 a'4 ( b'4) a'4 a'4 \divisioMaxima
 a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 g'4 ( f'4) g'4 ( a'4) g'4 e'4 \finalis
  a'4 ( g'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 a'4 ( g'4) g'4 ( b'4) b'4 a'4 ( b'4) a'4 \divisioMaxima
 a'4 ( g'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 ( g'4) g'4 ( b'4) b'4 a'4 ( b'4) a'4 \divisioMaxima
 a'4 ( g'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 g'4 ( f'4) g'4 ( a'4) g'4 e'4 ( g'4 f'4 f'4) \finalis

}

altoMusic = {
c'2*3/2 ~ c'2*3/2 ~ c'4 ~ c'2*4/2 ~ c'2 ~ c'2*3/4 a2*3/2 ~ a2*3/2 \divisioMaior
d'2 ~ d'2*4/2 ~ d'4 \divisioMinima
c'2 ~ c'2 ~ c'2 ~ c'2 e'2 ~ \divisioMaior
e'2 d'2 c'4 ~ c'2 ~ c'4 ~ c'2*3/2 ~ c'2*4/2 ~ c'2 \divisioMaxima
a2*3/2 ~ a2*4/2 c'4 ~ c'2 ~ c'2*3/2 ~ c'2 \divisioMinima
e'2*3/2 ~ e'2*3/2 ~ e'2*3/2 ~ e'2*3/2 g'2 ~ \divisioMaxima
g'2 f'2 e'2 ~ e'2*4/2 ~ e'4 ~ \divisioMinima
e'4 f'4 d'2 ~ d'2 ~ d'2 ~ d'2*3/2 c'2 ~ c'2*4/2 ~ c'2*4/2 ~ c'2 \divisioMaxima
f'4 ~ f'2 e'2 d'2*3/2 c'4 ~ \divisioMinima
c'4 d'2*3/4 ~ d'2*4/2 c'2*4/2 ~ c'2*4/2 ~ c'2 \finalis
e'2 ~ e'2*3/2 f'2*5/2 g'2*3/2 f'2 e'2*3/2 ~ e'2*3/2 ~ e'4 \divisioMaxima
c'2 d'2*3/2 c'2*4/2 ~ c'2 ~ c'2*3/2 d'2*3/2 c'4 e'2 ~ e'2*3/2 f'2*3/2 g'2*3/2 ~ \divisioMinima
g'2 f'2 e'2*3/2 ~ e'2*3/2 \divisioMaxima
d'2 ~ d'2 ~ d'2*4/2 ~ d'2*3/2 ~ \divisioMinima
d'2 ~ d'2*3/2 e'2*3/2 ~ \divisioMaxima
e'2 d'2 c'2*5/2 ~ c'2*4/2 ~ c'4 ~ c'2*4/2 \finalis
}

tenorMusic = {
a2*3/2 ~ a2*3/2 ~ a4 g2*4/2 f2 e2*3/4 ~ e2*3/2 d2*3/2 ~ \divisioMaior
d2 f2*4/2 ~ f4 ~ \divisioMinima
f2 e2 ~ e2 ~ e2 ~ e2 \divisioMaior
g2 f2 g4 f2 a4 ~ a2*3/2 ~ a2*4/2 ~ a2 ~ \divisioMaxima
a2*3/2 g2*4/2 ~ g4 ~ g2 f2*3/2 a2 ~ \divisioMinima
a2*3/2 ~ a2*3/2 b2*3/2 c'2*3/2 d'2 \divisioMaxima
c'2 ~ c'2 ~ c'2 b2*4/2 c'4 ~ \divisioMinima
c'2 ~ c'2 bes2 a2 g2*3/2 ~ g2 f2*4/2 g2*4/2 a2 ~ \divisioMaxima
a4 f2 g2 ~ g2*3/2 a4 \divisioMinima
g4 ~ g2*3/4 f2*4/2 ~ f2*4/2 g2*4/2 a2 \finalis
c'2 d'2*3/2 ~ d'2*5/2 e'2*3/2 d'2 ~ d'2*3/2 c'2*3/2 ~ c'4 \divisioMaxima
e2 ~ e2*3/2 ~ e2*4/2 f2 g2*3/2 ~ g2*3/2 ~ g4 c'2 d'2*3/2 ~ d'2*3/2 e'2*3/2 ~ \divisioMinima
e'2 d'2 ~ d'2*3/2 c'2*3/2 \divisioMaxima
f2 e2 d2*4/2 ~ d2*3/2 ~ \divisioMinima
d2 e2*3/2 ~ e2*3/2 ~ \divisioMaxima
e2 ~ e2 ~ e2*5/2 f2*4/2 g4 a2*4/2 \finalis
}

bassMusic = {
r2*3/2 a,2*3/2 ~ a,4 ~ a,2*4/2 ~ a,2 c2*3/4 d2*3/2 ~ d2*3/2 \divisioMaior
bes,2 ~ bes,2*4/2 d4 \divisioMinima
a,2 c2 b,2 a,2 c2 ~ \divisioMaior
c2 d2 e4 f2 ~ f4 g2*3/2 a2*4/2 a,2 \divisioMaxima
d2*3/2 ~ d2*4/2 e4 f2 ~ f2*3/2 ~ f2 \divisioMinima
g2*3/2 a2*3/2 ~ a2*3/2 ~ a2*3/2 g2 \divisioMaxima
e2 d2 c2 e2*4/2 a4 ~ \divisioMinima
a2 g2 ~ g2 ~ g2 ~ g2*3/2 a,2 ~ a,2*4/2 ~ a,2*4/2 ~ a,2 \divisioMaxima
d4 ~ d2 c2 bes,2*3/2 a,4 ~ \divisioMinima
a,4 bes,2*3/4 ~ bes,2*4/2 a,2*4/2 ~ a,2*4/2 ~ a,2 \finalis
r2*21/2 a4 \divisioMaxima
c2 b,2*3/2 a,2*4/2 ~ a,2 ~ a,2*3/2 b,2*3/2 c4 r2*21/2 \divisioMaxima
d2 ~ d2 ~ d2*4/2 c2*3/2 \divisioMinima
b,2 ~ b,2*3/2 c2*3/2 ~ \divisioMaxima
c2 b,2 a,2*5/2 ~ a,2*4/2 ~ a,4 ~ a,2*4/2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Introit"
        "IV"
      }
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
    \new Lyrics \lyricsto chant {
      \chantText
    }
  >>
  \layout{
  }
  \midi{
    \tempo 4 = 125
  }
}
