\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.96
%(volume.page)

global = {
 \key d \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Confitebor tibi, Domine Deus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Confitebor tibi, Domine Deus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Confitebor tibi, Domine Deus" }
    \line {}
  }
}

chantText = \lyricmode {
Con -- fi -- té -- bor 
\set stanza = " * " ti -- bi, Dó -- mi -- ne De -- _ us me -- _ _ _ us, 
in to -- _ _ to cor -- _ _ _ _ _ de me -- _ _ _ _ _ o, 
et glo -- ri -- fi -- cá -- _ bo no -- _ men tu -- um 
in æ -- tér -- _ _ _ _ num: 
quó -- ni -- am tu, Dó -- _ mi -- ne, 
su -- á -- vis et mi -- tis es: _ 
et mul -- _ tæ mi -- se -- ri -- cór -- _ di -- æ 
ó -- mni -- bus in -- vo -- cán -- ti -- bus te, _ _ 
al -- _ _ _ _ le -- _ _ _ _ _ _ _ lú -- ia. _ _ _ _ }

chantMusic = {
\tieDown   c'4 d'4  d'4 ( a'4 bes'4) a'4  a'4 ( c''4 a'4) g'4 ( a'4 g'4) \divisioMinima
 a'4 ( f'4) g'4 ( a'4 g'4) a'4 ( g'4) a'4. g'4 c''4 ( c''4 c''4) f'4 ( g'4 \forceBreak
)  f'4 ( a'4) c''4 ( a'4 g'4) bes'4 ( g'4) a'4 ( bes'4) a'4 \divisioMaior
 a'4 c''4 ( a'4) c''4 ( g'4 f'4) ~ f'4 ( d'4 c'4 d'4) d'4 \divisioMinima
 f'4 ( g'4) a'4 ( f'4) g'4 ( a'4 g'4) c''4 ( d''4 c''4 \forceBreak
) ~ c''4 ( c''4) ~ c''4 ( \tiny b' a' 4) a'4 ( g'4) \divisioMinima
 g'4. f'4 ( a'4) ~ a'4 ( g'4) a'4. g'4 ( a'4) c''4 ( c''4) ~ c''4 ( a'4) a'4 ( a'4 g'4 a'4) \divisioMaxima
 c''4 ( d''4) d''4 ( e''4 d''4 e''4 \forceBreak
) c''4 ( a'4) a'4 ( g'4) a'4 ( c''4) d''4 ( c''4 d''4) d''4 ( a'4) \divisioMinima
 c''4 ( d''4) e''4 ( d''4 e''4) c''4 ( a'4) a'4 ( c''4) c''4 ( c''4 c''4) \divisioMaior
 a'4 ( a'4 g'4) g'4 ( f'4 g'4 \forceBreak
) f'4 ( g'4) a'4 ( f'4) g'4 ( a'4 g'4) c''4 ( d''4 c''4) ~ c''4 ( c''4) a'4 ( c''4 g'4 f'4 g'4) \divisioMaxima
 f'4 g'4 ( a'4) a'4 ( g'4 a'4) g'4 ( f'4 g'4)  bes'4 ( a'4 g'4) ~ g'4 ( f'4 \forceBreak
) g'4 ( a'4) a'4 \divisioMaior
 a'4 g'4 ( c''4 b'4) a'4 a'4 g'4 ( c''4 b'4) a'4 ( g'4) g'4 ( a'4 g'4) ~ g'4 ( f'4) \divisioMaxima
 a'4 f'4 ( g'4) a'4 ( g'4) g'4 ( d'4) d'4 \forceBreak
 e'4 f'4 g'4. f'4 ( a'4 g'4) f'4 ( e'4) f'4 \divisioMaior
 a'4 ( c''4) a'4 g'4 ( a'4 g'4) f'4 ( a'4) g'4 e'4 ( f'4 g'4 a'4) f'4 ( e'4) c'4 ( d'4 \forceBreak
) d'4 ( e'\prall f'4) g'4 ( f'4 f'4) d'4 ( e'4 d'4) \divisioMaxima
 f'4 ( f'4) ~ f'4 ( d'4) f'4 ( f'4)  a'4 ( bes'4 a'4 g'4 f'4) ~ f'4 ( \once \tweak #'font-size #-4 e' ) g'4 ( a'4 g'4 f'4) g'4 ( e'4) f'4 ( d'4) \divisioMinima \forceBreak

 f'4 ( g'4 e'4) f'4 ( a'4 g'4 f'4) ~ f'4 ( d'4.) g'4 ( f'4) g'4 ( f'4 f'4) d'4 ( \once \tweak #'font-size #-4 c' ) d'4 f'4 ( f'4) ~ f'4 ( d'4) f'4 ( f'4 f'4) d'4 ( e'4 d'4) \finalis

}

altoMusic = {
r4 d'4 ~ d'2*4/2 c'2*3/2 ~ c'2*3/2 ~ \divisioMinima
c'2*5/2 e'2 d'2*5/4 c'2*5/2 ~ c'2*5/2 d'2 ~ d'2*3/2 ~ \divisioMaior
d'4 c'2 ~ c'2 a2*5/2 ~ a4 \divisioMinima
d'2*4/2 g'2*6/2 e'2 ~ e'2*3/2 d'2 ~ \divisioMinima
d'2*5/4 ~ d'2*3/2 f'2*7/4 g'2 e'2 d'2*3/2 e'4 \divisioMaxima
g'2 ~ g'2*4/2 e'2 d'2 e'2 f'2*3/2 e'2 \divisioMinima
g'2*7/2 f'2 g'2*3/2 \divisioMaior
f'2*3/2 c'2*3/2 d'2*4/2 g'2*3/2 e'2*3/2 g'2 e'2*5/2 \divisioMaxima
d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2 e'2*3/2 ~ e'2 f'4 ~ \divisioMaior
f'4 g'2*5/2 e'2*5/2 ~ e'2 d'2*3/2 \divisioMaxima
r4 c'2*4/2 d'2*3/2 ~ d'2*7/4 ~ d'2*6/2 ~ \divisioMaior
d'2*3/2 ~ d'2*3/2 c'2*3/2 ~ c'2*6/2 ~ c'2 a2*6/2 c'2 ~ c'4 \divisioMaxima
a2 ~ a2 d'2 ~ d'2*4/2 ~ d'2*7/2 ~ d'2*4/2 ~ \divisioMinima
d'2*3/2 ~ d'2*3/2 ~ d'2*7/4 ~ d'2 ~ d'2*3/2 a2*5/2 ~ a2 ~ a2*3/2 ~ a2 ~ a4 \finalis
}

tenorMusic = {
g2 f2*4/2 ~ f2*3/2 e2*3/2 \divisioMinima
f2*5/2 e2 ~ e2*5/4 ~ e2*5/2 f2*5/2 ~ f2 ~ f2*3/2 ~ \divisioMaior
f4 ~ f2 g2 ~ g2*5/2 f4 \divisioMinima
c'2*4/2 ~ c'2*6/2 ~ c'2 d'2*3/2 ~ d'2 \divisioMinima
c'2*5/4 ~ c'2*3/2 ~ c'2*7/4 ~ c'2 ~ c'2 b2*3/2 c'4 ~ \divisioMaxima
c'2 b2*4/2 c'2 b2 c'2 ~ c'2*3/2 ~ c'2 ~ \divisioMinima
c'2*7/2 ~ c'2 ~ c'2*3/2 ~ \divisioMaior
c'2*3/2 ~ c'2*3/2 ~ c'2*4/2 ~ c'2*3/2 ~ c'2*3/2 ~ c'2 ~ c'2*5/2 \divisioMaxima
a2*3/2 g2*3/2 a2*3/2 bes2 b2*3/2 bes2 c'4 ~ \divisioMaior
c'4 ~ c'2*5/2 ~ c'2*5/2 a2 ~ a2*3/2 ~ \divisioMaxima
a4 ~ a2*4/2 ~ a2*3/2 g2*7/4 a2*6/2 ~ \divisioMaior
a2*3/2 bes2*3/2 a2*3/2 g2*6/2 ~ g2 f2*6/2 g2 f4 ~ \divisioMaxima
f2 g2 a2 ~ a2*4/2 bes2*7/2 a2*4/2 ~ \divisioMinima
a2*3/2 ~ a2*3/2 g2*7/4 e2 f2*3/2 ~ f2*5/2 g2 a2*3/2 g2 f4 \finalis
}

bassMusic = {
e2 d2*4/2 a,2*3/2 ~ a,2*3/2 ~ \divisioMinima
a,2*5/2 c2 bes,2*5/4 a,2*5/2 ~ a,2*5/2 g,2 d2*3/2 ~ \divisioMaior
d4 a,2 ~ a,2 d2*5/2 ~ d4 ~ \divisioMinima
d2*4/2 e2*6/2 a2 ~ a2*3/2 b2 \divisioMinima
a2*5/4 g2*3/2 f2*7/4 e2 a2 ~ a2*3/2 ~ a4 \divisioMaxima
e2 g2*4/2 a2 ~ a2 ~ a2 ~ a2*3/2 ~ a2 \divisioMinima
e2*7/2 d2 e2*3/2 \divisioMaior
f2*3/2 e2*3/2 d2*4/2 e2*3/2 a2*3/2 e2 c2*5/2 \divisioMaxima
d2*3/2 ~ d2*3/2 ~ d2*3/2 g2 ~ g2*3/2 ~ g2 f4 ~ \divisioMaior
f4 e2*5/2 c2*5/2 ~ c2 d2*3/2 \divisioMaxima
r4 a,2*4/2 bes,2*3/2 ~ bes,2*7/4 d2*6/2 \divisioMaior
f2*3/2 ~ f2*3/2 ~ f2*3/2 c2*6/2 e2 d2*6/2 ~ d2 ~ d4 ~ \divisioMaxima
d2 ~ d2 ~ d2 f2*4/2 g2*7/2 d2*4/2 \divisioMinima
c2*3/2 bes,2*3/2 ~ bes,2*7/4 ~ bes,2 ~ bes,2*3/2 d2*5/2 ~ d2 ~ d2*3/2 ~ d2 ~ d4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Offertory"
        "I"
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
