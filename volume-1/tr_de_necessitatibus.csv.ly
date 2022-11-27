\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.185
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"De necessitatibus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "De necessitatibus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "De necessitatibus" }
    \line {}
  }
}

chantText = \lyricmode {
De ne -- ces -- si -- tá -- ti -- _ bus 
\set stanza = " * " me -- _ _ _ _ _ is 
é -- ri -- pe me, _ Dó -- _ mi -- ne: _ _ _ _ _ 
vi -- _ de _ _ hu -- mi -- li -- tá -- _ tem me -- _ _ _ am, _ 
et la -- bó -- rem _ me -- _ _ _ _ um: _ 
et di -- mít -- te ó -- mni -- a _ pec -- cá -- ta me -- a. _ _ _ ℣. 
Ad te Dó -- mi -- _ ne 
le -- vá -- vi á -- ni -- mam me -- am: 
De -- us me -- _ _ us, _ 
in te con -- fí -- _ do, 
non e -- ru -- bé -- _ _ _ _ _ _ scam: _ 
ne -- que ir -- rí -- de -- ant _ me _ _ 
in -- _ _ i -- mí -- ci me -- _ _ i. _ _ _ _ _ _ ℣. 
Et -- e -- _ _ _ _ nim 
u -- ni -- vér -- _ _ _ _ _ _ _ _ _ si 
qui te ex -- spé -- _ ctant, 
non con -- fun -- dén -- _ _ _ _ _ _ tur: _ 
con -- fun -- dán -- tur o -- _ mnes _ _ 
fa -- _ ci -- én -- tes 
\set stanza = " * " va -- _ _ na. _ _ _ _ _ _ }

chantMusic = {
\tieDown   g'4 f'4 ( g'4 f'4 d'4) f'4 ( g'4 f'4) g'4 ( bes'4) bes'4 bes'4 ( bes'4) ~ bes'4 ( g'4) bes'4 ( c''4) \divisioMinima
 c''4 ( d''4 c''4 bes'4) c''4 ( bes'4) ~ bes'4 ( bes'4) ~ bes'4 ( a'4 f'4) g'4 ( f'4 \forceBreak
) g'4 ( a'\prall bes'4 a'4 g'4 a'4) a'4 ( g'4) \divisioMaior
 bes'4 ( c''4) bes'4 ( a'4 g'4) g'4 bes'4 ( a'4) bes'4 ( c''4) c''4 ( bes'4) ~ bes'4 ( a'4) g'4 ( f'4) f'4 ( g'4) a'4 ( g'4) a'4 ( a'4 g'4 \forceBreak
) a'4 ( bes'4) c''4 ( g'4) ~ g'4 ( f'4) \divisioMaxima
 bes'4 ( bes'4 c''4.) bes'4 ( c''4 d''4 c''4 a'4) a'4 ( c''4 bes'4 a'4) bes'4 ( a'4 g'4) a'4 ( g'4) \divisioMinima
 g'4 ( d'4) f'4 ( g'4 f'4) g'4 ( bes'4 \forceBreak
) bes'4 ( bes'4) ~ bes'4 ( g'4) bes'4 ( c''4) bes'4. a'4 ( bes'4) d''4 ( c''4 bes'4) ~ bes'4 ( a'4 g'4) g'4 ( bes'4 g'4) ~ g'4 ( f'4) \divisioMaior
 g'4 bes'4 ( a'4) bes'4 ( c''4) c''4 ( f'4) g'4 ( bes'4 a'4 g'4 \forceBreak
) g'4 ( a'4 g'4 f'4 g'4) bes'4 ( bes'4) ~ bes'4 ( g'4) c''4 ( bes'4) ~ bes'4 ( a'4 g'4) g'4 ( bes'4 g'4) ~ g'4 ( f'4) \divisioMaxima
 f'4 g'4 ( bes'4) bes'4 a'4 a'4 ( bes'4 c''4 d''4 bes'4) g'4 g'4 ( c''4 bes'4) ~ bes'4 ( a'4) \divisioMinima \forceBreak

 g'4 ( f'4) g'4 bes'4 ( bes'4) bes'4 ( c''4 bes'4 f'4) f'4 bes'4 ( bes'4 bes'4) c''4 ( bes'4 f'4 g'4) a'4 ( a'4 g'4) \finalis
 f'4 ( g'4) bes'4 ( c''4) c''4 ( bes'4) c''4 ( d''4 c''4 bes'4 a'4 \forceBreak
) bes'4 ( a'4 g'4 a'4) a'4 ( g'4) \divisioMaior
 g'4 ( d'4 e'\prall f'4 g'4 a'4) g'4 ( a'4) g'4 g'4 g'4 bes'4 bes'4 ( a'4 g'4) g'4 \divisioMaxima
 bes'4 bes'4 ( c''4 d''4 \forceBreak
) d''4 ( c''4 bes'4 g'4) c''4 ( bes'4) ~ bes'4 ( a'4 g'4) g'4 ( bes'4 g'4) ~ g'4 ( f'4) \divisioMaior
 f'4 ( g'4) bes'4 ( c''4) g'4 g'4 ( c''4 bes'4) ~ bes'4 ( a'4 g'4 a'4) a'4 ( g'4) \divisioMaior
 bes'4 ( bes'4) bes'4 bes'4 \forceBreak
 bes'4 ( c''4 bes'4 g'4) ~ g'4 ( f'4) bes'4 ( c''4 bes'4 g'4) ~ g'4 ( f'4) bes'4 ( a'4 g'4) c''4 ( bes'4) ~ bes'4 ( a'4 g'4) g'4 ( bes'4 g'4) ~ g'4 ( f'4) \divisioMaxima
 f'4 a'4 ( bes'4) g'4 g'4 ( a'4) g'4 \forceBreak
 g'4 ( f'4) g'4 ( a'\prall bes'4 c''4)  bes'4 ( aes'4 c''4.) d''4 ( e''4 c''4) ~ c''4 ( bes'4) \divisioMaior
 bes'4 c''4 ( bes'4) ~ bes'4 ( a'4) g'4 ( f'4) g'4 ( a'4 g'4) a'4 c''4 ( bes'4) c''4 ( bes'4 g'4 a'4) \divisioMinima \forceBreak

 bes'4 ( d''4 c''4 d''4 bes'4 a'4 g'4) g'4 ( f'4 g'4) bes'4 ( bes'4) c''4 ( d''4 c''4 a'4 bes'4) \divisioMinima
 a'4 ( bes'4) d''4 ( c''4 bes'4) ~ bes'4 ( a'4 g'4) a'4 ( a'4 g'4) \finalis
 f'4 ( g'4) bes'4 ( g'4 a'4 \forceBreak
) bes'4 ( g'4 f'4) g'4 ( f'4 g'4) bes'4 ( g'4 a'4) bes'4 ( g'4 a'4) g'4 \divisioMaior
 g'4 ( bes'4 a'4) bes'4 c''4 ( d''4 c''4 bes'4) c''4 ( bes'4 a'4) bes'4 ( bes'4) ~ bes'4 ( g'4) \divisioMinima
 c''4 ( d''4 c''4 bes'4 \forceBreak
) c''4 ( bes'4 a'4) bes'4 ( bes'4) ~ bes'4 ( g'4.) a'4 ( g'4 f'4) g'4 ( a'\prall bes'4 a'4 g'4 a'4) a'4 ( g'4) \divisioMaior
 f'4 ( g'4) bes'4 ( c''4) c''4 g'4 ( a'\prall bes'4) c''4 ( a'4 bes'4 \forceBreak
) a'4 ( a'4 g'4) \divisioMaior
 bes'4 ( bes'4) bes'4 bes'4 bes'4 ( c''4 bes'4 g'4) ~ g'4 ( f'4) bes'4 ( c''4 bes'4 g'4) ~ g'4 ( f'4) bes'4 ( a'4 g'4) c''4 ( bes'4) ~ bes'4 ( a'4 g'4) g'4 ( bes'4 g'4) ~ g'4 ( f'4) \divisioMaxima \forceBreak

 f'4 f'4 a'4 ( bes'4) g'4 g'4 ( f'4) g'4 ( a'\prall bes'4 c''4)  bes'4 ( aes'4 c''4.) d''4 ( e''4 c''4) ~ c''4 ( bes'4) \divisioMaior
 bes'4 ( c''4 bes'4) ~ bes'4 ( a'4) g'4 ( f'4) g'4 ( a'4 g'4) a'4  \forceBreak
 c''4 ( bes'4) c''4 ( bes'4 g'4 a'4) \divisioMinima
 bes'4 ( d''4 c''4 d''4 bes'4 a'4 g'4) g'4 ( f'4 g'4) bes'4 ( bes'4) c''4 ( d''4 c''4 a'4 bes'4) \divisioMinima
 a'4 ( bes'4) d''4 ( c''4 bes'4) ~ bes'4 ( a'4 g'4) a'4 ( a'4 g'4) \finalis

}

altoMusic = {
r4 d'2*4/2 ~ d'2*5/2 ~ d'4 ~ d'2 ~ d'2 f'2 \divisioMinima
g'2*6/2 f'2 ~ f'2*5/2 d'2*6/2 ~ d'2 \divisioMaior
g'2 f'2*3/2 ~ f'4 d'2*4/2 ~ d'4 ~ d'2*3/2 c'2 d'2*4/2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 ~ \divisioMaxima
d'2*7/4 ~ d'2*5/2 ~ d'2*4/2 ~ d'2*3/2 ~ d'2 ~ \divisioMinima
d'2 ~ d'2*3/2 ~ d'2 g'2 f'2 ~ f'2 ~ f'2*3/4 ~ f'2*4/2 d'2*4/2 ~ d'2 c'2*3/2 ~ \divisioMaior
c'4 d'2 ~ d'2 f'2 g'2*3/2 ~ g'4 f'2*5/2 ees'2 f'2*3/2 d'2*4/2 ~ d'2 ~ d'2*3/2 ~ \divisioMaxima
d'4 ~ d'2 ~ d'2 ees'2*6/2 d'2 ~ d'2*3/2 ~ \divisioMinima
d'2 ~ d'4 ~ d'2 f'2*4/2 ~ f'4 ~ f'2*3/2 ~ f'2*4/2 d'2 ~ d'4 ~ \finalis
d'2 ~ d'2 ~ d'2 g'2*5/2 f'2*4/2 d'2 ~ \divisioMaior
d'2*6/2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 ~ d'4 \divisioMaxima
g'4 ~ g'2*3/2 f'2*5/2 ~ f'2*4/2 ~ f'2 d'2*3/2 ~ \divisioMaior
d'2 ees'2*3/2 f'2 ~ f'2*5/2 d'2 \divisioMaior
ees'2*4/2 f'2*3/2 d'2*3/2 '2*3/2 c'2*3/2 d'2*4/2 ~ d'2*4/2 c'2 d'2*3/2 \divisioMaxima
f'4 ~ f'2*3/2 ~ f'2*3/2 d'2 c'2*4/2 f'2 ~ f'2*3/4 ees'2 d'2*3/2 \divisioMaior
g'2 f'2*3/2 ~ f'2 ~ f'2*4/2 g'2 f'2*3/2 ~ f'4 \divisioMinima
d'2 ~ d'2*5/2 ~ d'2*3/2 ees'2 d'2*5/2 \divisioMinima
f'2*4/2 ~ f'2*4/2 d'2 ~ d'4 ~ \finalis
d'2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 ~ d'4 \divisioMaior
g'2*4/2 ~ g'2*4/2 f'2*3/2 ~ f'2 ees'2 \divisioMinima
d'2*4/2 ~ d'2*3/2 ~ d'2 ~ d'2*5/4 f'2*3/2 ~ f'2*6/2 d'2 ~ \divisioMaior
d'2 g'2 ~ g'4 f'2*6/2 d'2 ~ d'4 \divisioMaior
ees'2*4/2 f'2*3/2 d'2*3/2 ~ d'2*3/2 c'2*3/2 d'2*4/2 ~ d'2*4/2 c'2 d'2*3/2 \divisioMaxima
f'2 ~ f'2*3/2 ~ f'2 ~ f'2*4/2 g'2*7/4 ~ g'2 d'2*3/2 \divisioMaior
g'2 f'2*3/2 ~ f'2 ~ f'2*4/2 ~ f'2 d'2*3/2 ~ d'4 ~ \divisioMinima
d'2 ~ d'2*5/2 ~ d'2*3/2 ees'2 d'2*5/2 \divisioMinima
f'2*4/2 ~ f'2*4/2 d'2 ~ d'4 \finalis
}

tenorMusic = {
r4 bes2*4/2 a2*5/2 g4 a2 bes2 ~ bes2 ~ \divisioMinima
bes2*6/2 ~ bes2 c'2*5/2 ~ c'2*6/2 bes2 ~ \divisioMaior
bes2 c'2*3/2 bes4 ~ bes2*4/2 a4 bes2*3/2 a2 bes2*4/2 c'2*3/2 bes2*3/2 a2*3/2 ~ \divisioMaxima
a2*7/4 bes2*5/2 c'2*4/2 a2*3/2 bes2 ~ \divisioMinima
bes2 ~ bes2*3/2 ~ bes2 ~ bes2 ~ bes2 ~ bes2 d'2*3/4 c'2*4/2 ~ c'2*4/2 bes2 a2*3/2 ~ \divisioMaior
a4 g2 ~ g2 a2 bes2*4/2 ~ bes2*5/2 ~ bes2 ~ bes2*3/2 ~ bes2*4/2 a2 ~ a2*3/2 \divisioMaxima
bes4 a2 g2 ~ g2*6/2 ~ g2 a2*3/2 \divisioMinima
bes2 a4 g2 bes2*4/2 d'4 c'2*3/2 bes2*4/2 c'2 bes4 ~ \finalis
bes2 ~ bes2 ~ bes2 ~ bes2*5/2 c'2*4/2 ~ c'4 bes4 \divisioMaior
a2*6/2 c'2*3/2 ~ c'2*3/2 a2*3/2 bes4 ~ \divisioMaxima
bes4 g2*3/2 bes2*5/2 '2*4/2 bes2 a2*3/2 \divisioMaior
bes2 ~ bes2*3/2 ~ bes2 c'2*5/2 ~ c'4 bes4 \divisioMaior
g2*4/2 ~ g2*3/2 a2*3/2 bes2*3/2 a2*3/2 g2*4/2 ~ g2*4/2 ~ g2 a2*3/2 \divisioMaxima
r4 c'2*3/2 bes2*3/2 a2 g2*4/2 ~ g2 f2*3/4 g2 ~ g2*3/2 ~ \divisioMaior
g2 ~ g2*3/2 a2 bes2*4/2 g2 ~ g2*3/2 f4 \divisioMinima
r2 a2*5/2 bes2*3/2 ~ bes2 ~ bes2*5/2 \divisioMinima
c'2*4/2 d'2*4/2 c'2 bes4 ~ \finalis
bes2 ~ bes2*3/2 ~ bes2*3/2 a2*3/2 g2*3/2 c'2*3/2 bes4 ~ \divisioMaior
bes2*4/2 g2*4/2 ~ g2*3/2 f2 g2 ~ \divisioMinima
g2*4/2 a2*3/2 c'2 bes2*5/4 c'2*3/2 bes2*6/2 ~ bes2 ~ \divisioMaior
bes2 ~ bes2 a4 bes2*6/2 c'2 bes4 \divisioMaior
g2*4/2 ~ g2*3/2 a2*3/2 bes2*3/2 a2*3/2 g2*4/2 ~ g2*4/2 ~ g2 a2*3/2 \divisioMaxima
d'2 c'2*3/2 bes2 a2*4/2 g2*7/4 a2 bes2*3/2 \divisioMaior
g2 ~ g2*3/2 a2 bes2*4/2 a2 g2*3/2 f4 \divisioMinima
r2 a2*5/2 bes2*3/2 ~ bes2 ~ bes2*5/2 \divisioMinima
c'2*4/2 d'2*4/2 c'2 bes4 \finalis
}

bassMusic = {
g4 ~ g2*4/2 ~ g2*5/2 ~ g4 ~ g2 ~ g2 d2 \divisioMinima
ees2*6/2 d2 ~ d2*5/2 g2*6/2 ~ g2 \divisioMaior
ees2 d2*3/2 ~ d4 g2*4/2 ~ g4 ~ g2*3/2 ~ g2 ~ g2*4/2 ~ g2*3/2 ~ g2*3/2 d2*3/2 \divisioMaxima
g2*7/4 ~ g2*5/2 ~ g2*4/2 ~ g2*3/2 ~ g2 \divisioMinima
r2 a2*3/2 g2 ees2 ~ ees2 d2 ~ d2*3/4 ~ d2*4/2 g2*4/2 ~ g2 a2*3/2 \divisioMaior
r4 r2 f2 ~ f2 ees2*4/2 d2*5/2 c2 d2*3/2 g2*4/2 ~ g2 d2*3/2 \divisioMaxima
bes,4 ~ bes,2 ~ bes,2 c2*6/2 g2 ~ g2*3/2 ~ \divisioMinima
g2 ~ g4 ~ g2 d2*4/2 ~ d4 ~ d2*3/2 ~ d2*4/2 g2 ~ g4 \finalis
r2 a2 g2 ees2*5/2 d2*4/2 g2 \divisioMaior
d2*6/2 ~ d2*3/2 g2*3/2 ~ g2*3/2 ~ g4 \divisioMaxima
ees4 ~ ees2*3/2 d2*5/2 ~ d2*4/2 ~ d2 ~ d2*3/2 \divisioMaior
bes,2 c2*3/2 d2 ~ d2*5/2 g2 \divisioMaior
c2*4/2 d2*3/2 ~ d2*3/2 g2*3/2 ~ g2*3/2 ~ g2*4/2 f2*4/2 ees2 d2*3/2 ~ \divisioMaxima
d4 ~ d2*3/2 ~ d2*3/2 ~ d2 ees2*4/2 d2 ~ d2*3/4 c2 g2*3/2 \divisioMaior
ees2 d2*3/2 ~ d2 ~ d2*4/2 ees2 d2*3/2 ~ d4 \divisioMinima
g2 ~ g2*5/2 ~ g2*3/2 ~ g2 ~ g2*5/2 \divisioMinima
d2*4/2 ~ d2*4/2 g2 ~ g4 \finalis
r2 a2*3/2 g2*3/2 ~ g2*3/2 ~ g2*3/2 ~ g2*3/2 ~ g4 \divisioMaior
ees2*4/2 ~ ees2*4/2 d2*3/2 ~ d2 c2 \divisioMinima
g2*4/2 ~ g2*3/2 ~ g2 ~ g2*5/4 d2*3/2 ~ d2*6/2 g2 ~ \divisioMaior
g2 ees2 ~ ees4 d2*6/2 g2 ~ g4 \divisioMaior
c2*4/2 d2*3/2 ~ d2*3/2 g2*3/2 ~ g2*3/2 ~ g2*4/2 f2*4/2 ees2 d2*3/2 ~ \divisioMaxima
d2 ~ d2*3/2 ~ d2 ~ d2*4/2 ees2*7/4 ~ ees2 g2*3/2 \divisioMaior
ees2 d2*3/2 ~ d2 ~ d2*4/2 ~ d2 ~ d2*3/2 ~ d4 \divisioMinima
g2 ~ g2*5/2 ~ g2*3/2 ~ g2 ~ g2*5/2 \divisioMinima
d2*4/2 ~ d2*4/2 g2 ~ g4 \finalis
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
        "2"
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
