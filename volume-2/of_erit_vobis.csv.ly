\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.30
%(volume.page)

global = {
 \key f \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Erit vobis" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Erit vobis"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Erit vobis" }
    \line {}
  }
}

chantText = \lyricmode {
E -- _ rit 
\set stanza = " * " vo -- _ bis _ hic di -- es 
me -- mo -- ri -- á -- _ _ lis, al -- le -- _ _ _ lú -- ia: 
et di -- em fe -- stum ce -- le -- brá -- bi -- tis 
so -- lé -- _ mnem _ _ Dó -- mi -- no 
in pro -- gé -- ni -- es ve -- stras: 
le -- gí -- ti -- mum _ _ sem -- pi -- tér -- _ num di -- _ em, 
al -- le -- lú -- ia, al -- le -- _ _ lú -- ia, _ 
al -- le -- _ _ _ _ _ _ _ _ _ _ _ _ lú -- ia. }

chantMusic = {
\tieDown   d'4 ( g'4 f'4) g'4 ( a'4) g'4  g'4 ( a'4) b'4 ( g'4) g'4 ( b'4 a'4) b'4 ( g'4 e'4 g'4) \divisioMinima
 e'4 ( g'4 a'4) a'4 ( b'4 a'4 g'4 a'4) a'4 ( g'4) \divisioMaior \forceBreak

 f'4 g'4 a'4 a'4 ( c''4) ~ c''4 ( c''4) d''4 ( c''4) c''4 \divisioMinima
  c''4 c''4 ( d''4 c''4) ~ c''4 ( a'4) c''4 ( c''4) ~ c''4 ( a'4 bes'\prall c''4 bes'4 g'4 a'\prall bes'4 a'4 g'4 \forceBreak
) f'4 ( g'4 a'4) g'4 ( f'4) \divisioMaxima
 f'4 g'4 a'4 c''4 ( d''4 c''4) c''4 ( c''4 c''4) a'4 g'4 c''4 ( c''4) a'4 ( b'4 a'4 g'4 a'4) a'4 ( g'4) \divisioMaior
 g'4 ( a'4 \forceBreak
) a'4 ( g'4) ~ g'4 ( \once \tweak #'font-size #-4 f' ) g'4. f'4 ( a'4 b'4 a'4) ~ a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4 g'4 f'4) f'4 ( e'4) e'4 \divisioMaior
 c'4 d'4 e'4 c'4 d'4 f'4 ( g'\prall a'4 g'4 a'4 \forceBreak
) g'4 ( f'4) \divisioMaior
 f'4 f'4 ( a'4 g'4) f'4 f'4 ( f'4) ~ f'4 ( d'4) ~ d'4 ( \once \tweak #'font-size #-4 c' ) d'4 f'4 ( f'4) f'4 ( g'4 f'4) ~ f'4 ( \once \tweak #'font-size #-4 d' ) f'4 f'4 ( e'4) ~ e'4 ( d'4 e'4 \forceBreak
) e'4 ( d'4) \divisioMaxima
 f'4 ( f'4) d'4 ( f'4 e'4) f'4 ( f'4 f'4) d'4 ( c'4 d'4) \divisioMinima
 f'4 ( f'4) d'4 f'4 ( f'4) ~ f'4 ( d'4 c'4) c'4 ( d'4) c'4 ( c'4 d'4) c'4 ( e'4 d'4 c'4) \divisioMaior \forceBreak

 c'4 c'4 ( d'4) f'4 ( g'4 e'4.) g'4 ( a'4) f'4 ( f'4 f'4) ~ f'4 ( g'4 f'4 f'4)  g'4 bes'4 ( bes'4) ~ bes'4 ( bes'4) c''4 ( bes'4 a'4 f'4 g'4) \divisioMinima
  bes'4 ( bes'4) ~ bes'4 ( g'4. \forceBreak
) a'4 ( bes'4 f'4 d'4) f'4. ~ f'4 ( f'4) g'4 ( f'4) f'4 ( g'4 a'4 \tiny g' f' 4) g'4 ( f'4) \finalis

}

altoMusic = {
d'2*3/2 ~ d'2*3/2 c'2*4/2 d'2*7/2 \divisioMinima
e'2*3/2 ~ e'2*5/2 d'2 \divisioMaior
f'2*3/2 ~ f'2 g'2*4/2 ~ g'4 ~ g'4 f'2 ~ f'2*3/2 e'2 d'2*3/2 ~ d'2 ~ d'2*5/2 ~ d'2*3/2 c'2 \divisioMaxima
f'2*3/2 e'2*3/2 f'2*3/2 e'2 ~ e'2 ~ e'2*5/2 d'2 ~ \divisioMaior
d'2 c'2*4/2 ~ c'2*3/4 f'2*3/2 e'2*3/2 ~ e'2*4/2 d'2 c'4 ~ \divisioMaior
c'2 ~ c'2*3/2 ~ c'2*5/2 ~ c'2 ~ \divisioMaior
c'4 d'2*4/2 ~ d'2*3/2 a2*4/2 ~ a2 c'2 ~ c'2*4/2 ~ c'4 a2*4/2 ~ a2 ~ \divisioMaxima
a2 ~ a2*3/2 ~ a2*3/2 ~ a2*3/2 ~ \divisioMinima
a2*3/2 d'2 c'2 ~ c'4 a2 ~ a2*3/2 ~ a2*4/2 ~ \divisioMaior
a4 ~ a2 c'2*7/4 ~ c'2 ~ c'2*3/2 d'2*5/2 ~ d'2 ~ d'2 ~ d'2*5/2 ~ d'2 f'2*5/4 ~ f'2 ~ f'4 d'4 ~ d'2*3/4 ~ d'2*4/2 c'2*5/2 ~ c'2 \finalis
}

tenorMusic = {
a2*3/2 g2*3/2 ~ g2*4/2 ~ g2*7/2 ~ \divisioMinima
g4 a2 c'2*5/2 ~ c'4 b4 \divisioMaior
c'2*3/2 ~ c'2 ~ c'2*4/2 g4 ~ g4 a2 ~ a2*3/2 ~ a2 ~ a2*3/2 g2 bes2*5/2 a2*3/2 bes4 a4 ~ \divisioMaxima
a2*3/2 ~ a2*3/2 ~ a2*3/2 ~ a2 g2 a2*5/2 e2 \divisioMaior
d2 f4 g2*3/2 a2*3/4 ~ a2*3/2 ~ a2*3/2 c'2*4/2 a2 g4 \divisioMaior
a2 g2*3/2 f2*5/2 ~ f2 ~ \divisioMaior
f4 ~ f2*4/2 g2*3/2 ~ g2*4/2 f2 ~ f2 a2*4/2 g4 ~ g2*4/2 e4 f4 ~ \divisioMaxima
f2 g2*3/2 f2*3/2 e2 f4 ~ \divisioMinima
f2*3/2 ~ f2 ~ f2*3/2 g2 f2*3/2 e2*4/2 ~ \divisioMaior
e4 f2 g2*7/4 e2 f2*3/2 ~ f2*5/2 g2 f2 g2*4/2 bes4 b2 ~ b2*5/4 c'2*4/2 a2*3/4 bes2*4/2 ~ bes2*5/2 ~ bes4 a4 \finalis
}

bassMusic = {
f2*3/2 ~ f2*3/2 e2*4/2 b,2*7/2 \divisioMinima
c4 ~ c2 ~ c2*5/2 g2 \divisioMaior
a2*3/2 f2 e2*4/2 ~ e2 ~ e2 d2*3/2 a,2 bes,2*3/2 ~ bes,2 ~ bes,2*5/2 d2*3/2 f2 \divisioMaxima
d2*3/2 a,2*3/2 d2*3/2 c2 ~ c2 ~ c2*5/2 b,2 ~ \divisioMaior
b,2 a,2*4/2 ~ a,2*3/4 d2*3/2 c2*3/2 ~ c2*4/2 ~ c2 ~ c4 \divisioMaior
a,2 ~ a,2*3/2 ~ a,2*5/2 ~ a,2 ~ \divisioMaior
a,4 bes,2*4/2 b,2*3/2 d2*4/2 ~ d2 a,2 ~ a,2*4/2 ~ a,4 d2*4/2 ~ d2 ~ \divisioMaxima
d2 ~ d2*3/2 ~ d2*3/2 ~ d2 ~ d4 \divisioMinima
c2*3/2 bes,2 a,2*3/2 ~ a,2 ~ a,2*3/2 ~ a,2*4/2 ~ \divisioMaior
a,4 f2 c2*7/4 ~ c2 a,2*3/2 bes,2*5/2 b,2 d2 g2*5/2 ~ g2 d2*5/4 ~ d2*4/2 ~ d2*3/4 bes,2*4/2 f2*5/2 ~ f2 \finalis
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
        "VI"
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
