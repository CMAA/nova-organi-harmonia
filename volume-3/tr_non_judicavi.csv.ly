\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.148
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Non judicavi" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Non judicavi"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Non judicavi" }
    \line {}
  }
}

chantText = \lyricmode {
Non ju -- di -- cá -- vi 
\set stanza = " * " me _ sci -- re _ _ _ 
á -- _ li -- quid in -- _ ter vos _ _ _ _ _ 
ni -- si Je -- sum Chri -- _ stum, _ _ 
et hunc cru -- ci -- _ fí -- xum. _ ℣. 
Ló -- qui -- mur De -- i sa -- pi -- én -- _ _ ti -- am _ _ 
in my -- sté -- ri -- o, _ _ _ _ 
quæ abs -- cón -- di -- ta est, _ _ _ _ 
quam præ -- de -- sti -- ná -- vit De -- _ us _ _ an -- te sǽ -- cu -- la in gló -- _ ri -- am no -- stram. _ ℣. 
Quam ne -- _ _ _ _ _ _ _ _ mo prín -- ci -- pum hu -- jus sǽ -- cu -- li _ _ _ _ _ 
co -- gnó -- _ _ _ _ _ _ vit. _ 
Si e -- nim co -- gno -- vís -- _ sent, _ _ 
num -- _ quam Dó -- mi -- num gló -- ri -- æ 
\set stanza = " * " cru -- ci -- fi -- _ _ xís -- sent. _ _ _ _ _ _ }

chantMusic = {
\tieDown   g'4 g'4 f'4 ( g'4 f'4 d'4) f'4 ( g'4 f'4 g'4) g'4 \divisioMinima
 f'4 ( g'4) bes'4 ( a'4 bes'4) a'4 ( bes'4 a'4 g'4) f'4 ( g'\prall a'4 g'4.) a'4 ( bes'4 a'4) bes'4 ( a'4 g'4) a'4 ( g'4) \divisioMaior
 f'4 ( g'4) bes'4 ( bes'4 c''4) bes'4 bes'4 bes'4 ( a'4) ~ a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( \once \tweak #'font-size #-4 f' ) f'4 ( g'4) a'4 ( g'4) a'4 ( a'4 g'4) a'4 ( bes'4) c''4 ( g'4) ~ g'4 ( f'4) \divisioMaxima
 a'4 ( bes'4) g'4 g'4 ( a'4) g'4 g'4 ( f'4) g'4 ( a'\prall bes'4 c''4) bes'4 ( a'4) bes'4 ( c''4) ~ c''4 ( bes'4) \divisioMaior
 f'4 ( g'4) f'4 ( bes'4) bes'4 a'4 ( bes'4) c''4 ( bes'4) bes'4 ( a'4 g'4) g'4 a'4 ( a'4 g'4) \finalis
 c''4 bes'4 ( c''4 bes'4 g'4) g'4 ( a'\prall bes'4) \divisioMinima
 bes'4 ( c''4 bes'4 g'4) g'4 g'4 bes'4 ( g'4 bes'4) c''4. bes'4 ( c''4) d''4 ( c''4) c''4 ( a'4) a'4 ( c''4 bes'4 a'4) bes'4 ( a'4 g'4) a'4 ( g'4) \divisioMaior
 g'4 ( \once \tweak #'font-size #-4 c'' ) c''4 ( a'4 c''4) bes'4 ( a'4) g'4 ( a'4) g'4 ( f'4) a'4 ( a'4 g'4) a'4 ( bes'4) c''4 ( g'4) ~ g'4 ( f'4) \divisioMaxima
 g'4 ( bes'4 a'4) bes'4 c''4 ( a'4 c''4) bes'4 ( a'4) f'4 ( g'4) g'4 ( f'4 a'\prall bes'4 c''4 bes'4 g'4) \divisioMinima
 bes'4 ( a'4 g'4) c''4 ( bes'4.) g'4 ( a'4 g'4) ~ g'4 ( f'4) \divisioMaxima
 a'4 ( bes'4) g'4 g'4 g'4 g'4 ( a'4) g'4 g'4 ( f'4) g'4 ( a'\prall bes'4 c''4) bes'4 ( a'4) bes'4 ( c''4) ~ c''4 ( bes'4) \divisioMinima
 c''4 f'4 g'4 ( bes'4) bes'4 bes'4 \divisioMinima
 bes'4 a'4 ( bes'4) c''4 ( d''4 bes'4) g'4 g'4 ( a'\prall bes'4 a'4) bes'4 ( a'4 g'4) g'4 ( a'4) ~ a'4 ( g'4) \finalis
 f'4 ( g'4) bes'4 c''4 ( bes'4) ~ bes'4 ( g'4) bes'4 ( bes'4) c''4 ( d''4 bes'4) ~ bes'4 ( a'4) c''4 ( bes'4) ~ bes'4 ( a'4) ~ a'4 ( g'4 a'\prall bes'4 a'4 bes'4) a'4 ( g'4) \divisioMinima
 bes'4 ( c''4) bes'4 bes'4 bes'4 ( bes'4 \once \tweak #'font-size #-4 a' ) c''4 bes'4 ( bes'4 a'4) g'4 ( f'4) f'4 ( g'4) a'4 ( g'4) a'4 ( a'4 g'4) a'4 ( bes'4) c''4 ( g'4) ~ g'4 ( f'4) \divisioMaior
 bes'4 ( c''4) bes'4 ( c''4 bes'4 g'4) ~ g'4 ( f'4.) bes'4 ( c''4 bes'4 g'4) ~ g'4 ( f'4.) bes'4 ( a'4 g'4) c''4 ( bes'4) ~ bes'4 ( a'4 g'4) g'4 ( bes'4 g'4) ~ g'4 ( f'4) \divisioMaxima
 f'4 a'4 ( bes'4) g'4 g'4 ( a'4) g'4 g'4 ( f'4) g'4 ( a'\prall bes'4 c''4)  bes'4 ( aes'4 c''4.) d''4 ( e''4 c''4) ~ c''4 ( bes'4) \divisioMaior
 a'4 ( bes'4) c''4 ( d''4 bes'4 g'4) g'4 g'4 ( a'4) g'4 g'4 g'4 g'4 g'4 ( a'\prall bes'4 a'4 g'4 f'4) \divisioMinima
 g'4 g'4 ( a'\prall bes'4 a'4) bes'4. a'4 ( bes'4) c''4 ( bes'4 c''4) g'4 ( f'4 g'4) g'4 bes'4 ( bes'4) c''4 ( d''4 c''4 a'4 bes'4) \divisioMinima
 a'4 ( bes'4) d''4 ( c''4 bes'4) ~ bes'4 ( a'4 g'4) a'4 ( a'4 g'4) \finalis

}

altoMusic = {
d'2 ~ d'2*4/2 c'2*4/2 d'4 \divisioMinima
c'2 d'2*3/2 ~ d'2*4/2 ~ d'2*3/2 ~ d'2*3/4 ~ d'2*6/2 ~ d'2 \divisioMaior
c'2 d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2 ~ d'2*4/2 ~ d'2*3/2 ~ d'2*3/2 c'2*3/2 \divisioMaxima
d'2*3/2 ~ d'2*3/2 c'2 d'2*4/2 ~ d'2*3/2 ~ d'2*3/2 ~ \divisioMaior
d'2 ~ d'2 ~ d'4 ~ d'2*4/2 ~ d'2*4/2 ~ d'2 ~ d'4 \finalis
f'4 ~ f'2*4/2 d'2*3/2 \divisioMinima
ees'2*4/2 ~ ees'2 ~ ees'2*3/2 ~ ees'2*3/4 f'2*4/2 ~ f'2 ~ f'2*4/2 d'2*3/2 ~ d'2 \divisioMaior
g'2 f'2*3/2 d'2 ~ d'2*4/2 ~ d'2*3/2 ~ d'2*3/2 c'2*3/2 \divisioMaxima
d'2*4/2 ~ d'2*3/2 ~ d'2 ~ d'2 c'4 d'2*4/2 ~ d'2 \divisioMinima
ees'2*3/2 f'2*5/4 d'2 ~ d'2*3/2 ~ \divisioMaxima
d'2 ~ d'2*3/2 ~ d'2*3/2 c'2 d'2*4/2 ees'2*3/2 f'2*3/2 ~ \divisioMinima
f'4 ~ f'4 d'2 ~ d'2 \divisioMinima
f'4 ~ f'2 ~ f'2*3/2 ~ f'4 ees'2*4/2 d'2*4/2 ~ d'2 ~ d'4 \finalis
f'2 ~ f'2 ees'2*3/2 d'2*4/2 ~ d'2*4/2 ~ d'2 ees'2 d'2*5/2 ~ d'2 \divisioMinima
g'2 f'2 ees'2*4/2 d'2*3/2 c'2 ~ c'2 d'2 ~ d'2*3/2 ees'2*3/2 r2*3/2 \divisioMaior
d'2 ~ d'2*3/2 ~ d'2 c'2*3/4 d'2*3/2 ~ d'2*7/4 g'2*4/2 f'2*4/2 ees'2 d'2*3/2 \divisioMaxima
f'4 ~ f'2*3/2 d'2*3/2 ~ d'2 ~ d'2*4/2 f'2 g'2*7/4 f'2*3/2 ~ \divisioMaior
f'2 ~ f'2*4/2 ees'4 d'2*4/2 ees'2 ~ ees'2*4/2 d'2 ~ \divisioMinima
d'4 ~ d'2*4/2 ~ d'2*7/4 ~ d'2*3/2 ~ d'2*3/2 ees'4 f'2 ees'2*3/2 f'2 ~ \divisioMinima
f'2 ~ f'2 d'2*4/2 ~ d'2*3/2 \finalis
}

tenorMusic = {
bes2 ~ bes2*4/2 a2*4/2 bes4 \divisioMinima
a2 ~ a2*3/2 ~ a2*4/2 c'2*3/2 bes2*3/4 a2*3/2 g2*3/2 c'4 bes4 \divisioMaior
a2 g2*3/2 ~ g2*3/2 a2*3/2 ~ a2 c'2*4/2 ~ c'2*3/2 bes2*3/2 a2*3/2 ~ \divisioMaxima
a2*3/2 bes2*3/2 c'2 bes2*4/2 ~ bes2*3/2 ~ bes2*3/2 ~ \divisioMaior
bes2 ~ bes2 ~ bes4 c'2*4/2 d'2*4/2 c'2 bes4 \finalis
a4 g2*4/2 ~ g2*3/2 ~ \divisioMinima
g2*4/2 ~ g2 ~ g2*3/2 bes2*3/4 ~ bes2*4/2 d'2 c'2*4/2 ~ c'2*3/2 bes2 ~ \divisioMaior
bes2 a2*3/2 g2 c'2*4/2 bes2*3/2 a2*3/2 ~ a2*3/2 \divisioMaxima
bes2*4/2 a2*3/2 g2 a2 ~ a2*5/2 g2 ~ \divisioMinima
g2*3/2 f2*5/4 g2 a2*3/2 \divisioMaxima
r2 a2*3/2 bes2*3/2 c'2 bes2*4/2 c'2*3/2 d'2*3/2 \divisioMinima
c'2 bes2 ~ bes2 ~ \divisioMinima
bes4 d'2 bes2*3/2 ~ bes4 ~ bes2*4/2 ~ bes2*4/2 c'2 bes4 \finalis
r2 d'2 c'2*3/2 bes2*4/2 a2*6/2 c'2 ~ c'2*5/2 bes2 \divisioMinima
besb2 bes2 ~ bes2*4/2 ~ bes2*3/2 a2 ~ a2 bes2 ~ bes2*3/2 c'2*3/2 ~ c'2*3/2 \divisioMaior
bes2 a2*3/2 bes2 c'2*3/4 bes2*3/2 ~ bes2*7/4 ~ bes2*4/2 ~ bes2*4/2 ~ bes2 a2*3/2 ~ \divisioMaxima
a4 c'2*3/2 ~ c'2*3/2 bes2 c'2*4/2 ~ c'2 ~ c'2*7/4 d'2*3/2 \divisioMaior
c'2 bes2*4/2 ~ bes4 ~ bes2*4/2 ~ bes2 c'2*4/2 a2 \divisioMinima
bes4 a2*4/2 g2*7/4 a2*3/2 bes2*3/2 ~ bes4 ~ bes2 ~ bes2*3/2 ~ bes2 \divisioMinima
c'2 bes2 ~ bes2*4/2 c'2 bes4 \finalis
}

bassMusic = {
r2 a2*4/2 ~ a2*4/2 g4 \divisioMinima
a2 g2*3/2 f2*4/2 ~ f2*3/2 g2*3/4 ~ g2*3/2 ~ g2*3/2 ~ g2 ~ \divisioMaior
g2 ~ g2*3/2 f2*3/2 ~ f2*3/2 d2 ~ d2*4/2 g2*3/2 ~ g2*3/2 a2*3/2 \divisioMaxima
g2*3/2 ~ g2*3/2 a2 ~ a2*4/2 bes2*3/2 g2*3/2 \divisioMaior
bes2 a2 g4 ~ g2*4/2 ~ g2*4/2 ~ g2 ~ g4 \finalis
f4 ~ f2*4/2 ~ f2*3/2 \divisioMinima
ees2*4/2 d2 c2*3/2 ~ c2*3/4 d2*4/2 ~ d2 ~ d2*4/2 g2*3/2 ~ g2 \divisioMaior
ees2 f2*3/2 g2 ~ g2*4/2 ~ g2*3/2 ~ g2*3/2 a2*3/2 \divisioMaxima
g2*4/2 ~ g2*3/2 ~ g2 ~ g2 ~ g2*5/2 ~ g2 \divisioMinima
c2*3/2 d2*5/4 ~ d2 ~ d2*3/2 \divisioMaxima
g2 ~ g2*3/2 ~ g2*3/2 a2 bes2*4/2 ~ bes2*3/2 ~ bes2*3/2 \divisioMinima
a2 ~ a2 g2 \divisioMinima
d4 ~ d2 ~ d2*3/2 ~ d4 c2*4/2 g2*4/2 ~ g2 ~ g4 \finalis
r2*15/2 g2 ~ g2 ~ g2*5/2 ~ g2 \divisioMinima
ees2 d2 c2*4/2 g2*3/2 ~ g2 a2 ~ a2 bes2*3/2 ~ bes2*3/2 a2*3/2 \divisioMaior
g2 ~ g2*3/2 ~ g2 a2*3/4 ~ a2*3/2 bes2*7/4 ees2*4/2 d2*4/2 c2 d2*3/2 ~ \divisioMaxima
d4 ~ d2*3/2 g2*3/2 ~ g2 ~ g2*4/2 f2 ees2*7/4 d2*3/2 ~ \divisioMaior
d2 ~ d2*4/2 c4 bes,2*4/2 c2 ~ c2*4/2 d2 \divisioMinima
g4 ~ g2*4/2 ~ g2*7/4 ~ g2*3/2 ~ g2*3/2 ees4 d2 c2*3/2 d2 ~ \divisioMinima
d2 ~ d2 g2*4/2 ~ g2*3/2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Tract"
        "II"
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
