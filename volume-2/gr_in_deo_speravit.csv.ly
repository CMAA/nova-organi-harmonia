\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.183
%(volume.page)

global = {
 \key c \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"In Deo speravit" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "In Deo speravit"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "In Deo speravit" }
    \line {}
  }
}

chantText = \lyricmode {
In De -- o 
\set stanza = " * " spe -- rá -- vit cor me -- _ um, 
et ad -- jú -- tus sum: _ _ _ _ 
et re -- fló -- ru -- it ca -- ro me -- a: _ _ _ _ _ 
et ex vo -- lun -- tá -- _ te me -- a _ 
con -- fi -- té -- _ _ bor il -- _ _ _ li. _ _ _ _ _ ℣. 
Ad te, Dó -- _ _ mi -- ne, cla -- má -- vi: _ _ _ _ _ _ _ _ _ _ _ _ 
De -- us _ _ me -- _ us, _ _ _ 
ne sí -- _ le -- _ _ as: 
ne dis -- cé -- das 
\set stanza = " * " a _ me. _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   c'4 ees'4 ( ees'4 f'4) ees'4 \divisioMinima
 ees'4 ees'4 ( f'4) ees'4 f'4 ( g'4 f'4 g'4) g'4 ( f'4 ees'4) ~ ees'4 ( d'4 c'4) d'4 ( c'4) \divisioMaior \forceBreak

 ees'4 ( d'4) ees'4 ( \once \tweak #'font-size #-4 f' ) f'4 ( f'4 ees'4) f'4 ees'4 ( d'4) ees'4 ( f'4) g'4 ( f'4) g'4 ( f'4 ees'4) f'4 ( ees'4) \divisioMaior
 ees'4 ( f'4) ees'4 f'4 ( g'4) f'4 ( ees'4) ees'4 \divisioMinima \forceBreak

 ees'4 f'4 ees'4 ees'4. c'4 ees'4 ( ees'4) f'4 ( d'4) ees'4 ( f'4 c'4) d'4 ( c'4) ~ c'4 ( bes4) \divisioMaxima
 g'4 ees'4 f'4 g'4 g'4 ( bes'4) c''4 ( bes'4 c''4 \forceBreak
) bes'4  aes'4 ( g'4) aes'4 ( aes'4 aes'4) f'4 ( g'4 f'4) \divisioMaior
  aes'4 ( \once \tweak #'font-size #-4 g' ) aes'4 bes'4. aes'4 ( c''4 bes'4 aes'4) ~ aes'4 ( g'4 f'4 ees'4) f'4 ( f'4 ees'4) \divisioMinima \forceBreak

 f'4 ( ees'4) f'4 ( f'4 ees'4) f'4 ( ees'4 ees'4) f'4 ( \once \tweak #'font-size #-4 ees' ) f'4. ees'4 ( f'4 ees'4) ~ ees'4 ( ees'4) ~ ees'4 ( g'4 f'4) g'4 ( f'4) ~ f'4 ( ees'4) \finalis
  ees'4 g'4 g'4 ( bes'4) c''4 ( bes'4) c''4 ( d''4 bes'4) bes'4 bes'4 \divisioMinima \forceBreak

 bes'4 bes'4 c''4 ( bes'4) ~ bes'4 ( f'4.) bes'4 ( c''4 bes'4) c''4 ( bes'4) ~ bes'4 ( f'4) \divisioMinima
 bes'4 ( c''4) ees''4. f''4 ( ees''4 c''4) d''4 ( bes'4 g'4) \divisioMinima
 bes'4 ( a'4) c''4 ( d''4 bes'4) d''4 ( c''4 bes'4 \forceBreak
) d''4 ( c''4 bes'4) ~ bes'4 ( a'4 g'4) \divisioMaxima
 g'4 ( bes'4 c''4) c''4 ( bes'4) d''4 ( ees''4 c''4) bes'4 ( bes'4 g'4) bes'4 ( g'4) bes'4 ( bes'4 bes'4) bes'4 ( g'4 a'\prall bes'4 c''4.) bes'4 ( c''4) d''4 ( bes'4 bes'4) c''4 ( c''4 bes'4) \divisioMaxima \forceBreak

 g'4 bes'4 ( g'4) a'4 ( bes'4 c''4 d''\prall ees''4) c''4 ( bes'4) c''4 ( bes'4 g'4) bes'4 ( bes'4 bes'4) bes'4 \divisioMaior
 ees'4 ees'4 ees'4 ( g'4 f'4 ees'4) f'4 ( g'4)  g'4 ( bes'4 a'4 g'4 \forceBreak
) bes'4 ( bes'4 bes'4) bes'4 ( bes'4 g'4) \divisioMinima
  aes'4 ( g'4) aes'4 ( f'4 ees'4.) g'4 ( aes'4 f'4 ees'4.) g'4 ( f'4) bes'4. ~ bes'4 ( bes'4) ~ bes'4 ( g'4 g'4) ees'4 ( g'4 f'4) g'4 ( f'4) ~ f'4 ( ees'4) \finalis

}

altoMusic = {
r4 bes2*3/2 ~ bes4 ~ \divisioMinima
bes4 ees'2*3/2 ~ ees'2 d'2 ~ d'2 bes2*4/2 g2 \divisioMaior
c'2 ~ c'2 ~ c'2 ~ c'2 bes2*4/2 ~ bes2 ~ bes2*3/2 ~ bes2 \divisioMaior
c'2 ees'4 ~ ees'2 d'2 c'4 ~ \divisioMinima
c'2 bes4 ~ bes2*5/4 g2 ~ g2*4/2 bes2 r2*3/2 \divisioMaxima
r4 ees'4 ~ ees'2 f'2 ees'2*4/2 c'2 ~ c'2*3/2 ~ c'2 ~ c'4 ~ c'2*3/2 bes2*3/4 c'2*3/2 ~ c'2*3/2 ~ c'2 ~ c'2*3/2 ~ \divisioMinima
c'2 ~ c'2*3/2 bes2*3/2 ~ bes2 ~ bes2*3/4 g2*3/2 c'2 ~ c'2 ~ c'2 bes2 ~ bes4 ees'4 g'4 ~ g'2*4/2 ~ g'2*4/2 f'4 ~ \divisioMinima
f'4 ees'2 f'2 ~ f'2*3/4 g'2*4/2 f'2 ~ f'4 \divisioMinima
g'2 ~ g'2*3/4 ~ g'2*3/2 ~ g'2*3/2 ~ \divisioMinima
g'2 ~ g'2*3/2 ~ g'2*3/2 ~ g'2 f'2*3/2 d'4 \divisioMaxima
g'4 ~ g'2 f'2 ees'2*3/2 d'2*3/2 ees'2 d'2*3/2 ~ d'2*4/2 g'2*3/4 f'2 g'2*3/2 f'2 ~ f'4 \divisioMaxima
g'4 ~ g'2 ~ g'2 ~ g'2*3/2 ~ g'2 f'2*3/2 ees'2*3/2 d'4 ~ \divisioMaior
d'2 c'2*4/2 d'2 ~ d'2*4/2 ees'2*3/2 d'2*3/2 ees'2 ~ ees'2 f'2*3/4 c'2*3/2 ~ c'2*3/4 d'2 ees'2*3/4 f'2 d'2*3/2 c'2 ~ c'2 bes2 ~ bes4 \finalis
}

tenorMusic = {
aes4 a2*3/2 g4 ~ \divisioMinima
g4 ~ g2*3/2 bes2 ~ bes2 g2 f2*4/2 ees2 \divisioMaior
g2 ~ g2 aes2 g2 f2*4/2 ~ f2 ees2*3/2 g2 ~ \divisioMaior
g2*3/2 bes2 ~ bes2 ees4 ~ \divisioMinima
ees2 ~ ees4 ~ ees2*5/4 ~ ees2 d2 c2 ees2 f2*3/2 \divisioMaxima
bes2*4/2 g2 ~ g2*4/2 ~ g2 f2*3/2 bes2 aes4 ees2*3/2 ~ ees2*3/4 ~ ees2*3/2 f2*3/2 aes2 g2*3/2 ~ \divisioMinima
g2 aes2*3/2 ees2*3/2 ~ ees2 d2*3/4 ees2*3/2 g2 ~ g2 aes2 ~ aes2 g4 r2 f'2*4/2 ees'2*4/2 d'4 \divisioMinima
r2*27/4 \divisioMinima
ees'2 ~ ees'2*3/4 c'2*3/2 r2*3/2 \divisioMinima
r2 a2*3/2 bes2*3/2 ~ bes2 c'2*3/2 bes4 \divisioMaxima
r4 g2 ~ g2 ~ g2*3/2 ~ g2*3/2 c'2 bes2*3/2 g2*4/2 ~ g2*3/4 bes2 ~ bes4 ees'2 ~ ees'2 d'4 \divisioMaxima
r4 d'2 ~ d'2 c'2*3/2 g2 ~ g2*3/2 ~ g2*3/2 ~ g4 ~ \divisioMaior
g2 ~ g2*4/2 bes2 g2*4/2 ~ g2*3/2 ~ g2*3/2 ees2 f2 g2*3/4 aes2*3/2 g2*3/4 bes2 ~ bes2*3/4 ~ bes2 ~ bes2*3/2 ~ bes2 aes2 ~ aes2 g4 \finalis
}

bassMusic = {
r4 ees2*3/2 ~ ees4 \divisioMinima
d4 c2*3/2 bes,2 ~ bes,2 ~ bes,2 g,2*4/2 c2 ~ \divisioMaior
c2 bes,2 aes,2 ~ aes,2 bes,2*4/2 ees2 ~ ees2*3/2 d2 \divisioMaior
c2*3/2 bes,2 ~ bes,2 ~ bes,4 \divisioMinima
aes,2 ~ aes,4 g,2*5/4 c2 ~ c2 ~ c2 ees2 d2*3/2 \divisioMaxima
ees2*4/2 d2 c2*4/2 f2 ~ f2*3/2 ~ f2 ~ f4 c2*3/2 g,2*3/4 aes,2*3/2 ~ aes,2*3/2 ~ aes,2 c2*3/2 \divisioMinima
aes,2 ~ aes,2*3/2 g,2*3/2 bes,2 ~ bes,2*3/4 c2*3/2 bes,2 aes,2 ~ aes,2 ees2 ~ ees4 r2 d'2*4/2 c'2*4/2 d'4 ~ \divisioMinima
d'4 c'2 d'2*7/4 ees'2*4/2 d'2*3/2 ~ \divisioMinima
d'2 c'2*3/4 ~ c'2*3/2 bes2*3/2 \divisioMinima
g2 ~ g2*3/2 ~ g2*3/2 ees2 f2*3/2 g4 \divisioMaxima
ees4 ~ ees2 d2 c2*3/2 g2*3/2 ~ g2 ~ g2*3/2 f2*4/2 ees2*3/4 d2 ees2*3/2 bes2 ~ bes4 \divisioMaxima
r4 g2 f2 ees2*3/2 ~ ees2 d2*3/2 c2*3/2 g,4 \divisioMaior
c2 ~ c2*4/2 bes,2 ~ bes,2*4/2 c2*3/2 g,2*3/2 c2 ~ c2 ~ c2*3/4 f2*3/2 c2*3/4 bes,2 c2*3/4 d2 g2*3/2 aes2 ~ aes2 ees2 ~ ees4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Gradual"
        "V"
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
