\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.60
%(volume.page)

global = {
 \key f \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Christo confixus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Christo confixus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Christo confixus" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- _ _ lú -- ia, 
\set stanza = " * " 
al -- le -- _ _ lú -- ia. _ _ _ _ _ _ _ _ _ _ ℣. 
Chri -- sto _ _ con -- fí -- _ _ _ xus sum cru -- ci: 
vi -- vo e -- go, 
jam _ _ non _ e -- go, 
vi -- vit ve -- _ _ ro 
in me _ _ 
\set stanza = " * " Chri -- stus. _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   ees'4 ( \once \tweak #'font-size #-4 f' ) f'4 ( g'\prall aes'4) bes'4 ( aes'4 g'4 \once \tweak #'font-size #-4 f' ) aes'4 ( g'4 f'4 ees'4) aes'4 ( bes'4 \once \tweak #'font-size #-4 c'' ) c''4 \divisioMaxima
  ees'4 ( \once \tweak #'font-size #-4 f' ) f'4 ( g'\prall aes'4) bes'4 ( aes'4 g'4 \once \tweak #'font-size #-4 f' ) aes'4 ( g'4 f'4 ees'4) aes'4 ( bes'4 \once \tweak #'font-size #-4 c'' ) c''4 \divisioMinima
  des''4 ( c''4 bes'4) c''4 ( bes'4 aes'4) bes'4 ( c''4) ~ c''4 ( bes'4 aes'4) bes'4 ( f'4) g'4 ( f'4 ees'4) \divisioMinima
 aes'4 ( bes'4) c''4 ( bes'4 aes'4 g'4) aes'4 ( g'4 f'4) g'4 ( g'4 f'4) \finalis
 ees'4 ( f'4) f'4 ( g'\prall aes'4) bes'4 ( aes'4 g'4 \once \tweak #'font-size #-4 f' ) aes'4 ( g'4 f'4 ees'4) \divisioMinima
 aes'4  ( aes'4) bes'4 ( c''4 bes'4) aes'4 ( bes'4 c''4) bes'4 ( c''4) des''4 c''4 bes'4 ( aes'4) bes'4 ( c''4) c''4 \divisioMaxima
 aes'4 ( g'4) f'4 f'4 ( g'\prall aes'4 g'4 aes'4) g'4 ( f'4) \divisioMaior
 c''4 ( bes'4 aes'4) bes'4 ( f'4) g'4 ( f'4 ees'4) aes'4 ( bes'4) c''4 ( bes'4 aes'4 g'4 f'4) ees'4 ( f'4) f'4 \divisioMaxima
 aes'4 ( bes'4 c''4) c''4 ( ees''4) ees''4 ( d''4 c''4 bes'4) c''4 ( c''4 bes'4 aes'4) bes'4 ( aes'4 f'4) g'4 ( f'4) \divisioMaior
 ees'4 ( \once \tweak #'font-size #-4 f' ) f'4 ( g'\prall aes'4) bes'4 ( aes'4 g'4 f'4.) aes'4 ( g'4 f'4 ees'4)  aes'4 ( bes'4 c''4) c''4 \divisioMinima
  des''4 ( c''4 bes'4) c''4 ( bes'4 aes'4) bes'4 ( c''4) ~ c''4 ( bes'4 aes'4) bes'4 ( f'4) g'4 ( f'4 ees'4) \divisioMinima
 aes'4 ( bes'4) c''4 ( bes'4 aes'4 g'4) aes'4 ( g'4 f'4) g'4 ( g'4 f'4) \finalis

}

altoMusic = {
r2 ees'2*3/2 f'2*9/4 ees'2*3/2 ~ ees'4 ~ ees'2*3/2 ~ ees'4 c'2 ~ c'2*3/2 ~ c'2*9/4 ~ c'2*4/2 f'2*3/2 ees'4 des'2*3/2 f'2*4/2 ees'2*4/2 des'2 bes2 ~ bes4 \divisioMinima
f'2 ees'2*4/2 ~ ees'2*3/2 c'2*3/2 \finalis
r2 ees'2*3/2 des'2*3/2 c'2*3/4 d'2*3/2 ees'4 ~ \divisioMinima
ees'4 ~ ees'4 ~ ees'2*3/2 f'2*3/2 ~ f'2*4/2 ees'2 ~ ees'2 ~ ees'4 ~ \divisioMaxima
ees'2*3/2 des'2*5/2 c'2 \divisioMaior
ees'2*3/2 des'2 ees'2*3/2 c'2 ~ c'2*5/2 bes2 aes4 \divisioMaxima
f'2*3/2 g'2 ~ g'2*4/2 f'2*4/2 c'2*3/2 ~ c'2 \divisioMaior
bes2 c'2*3/2 ~ c'2*3/2 ~ c'2*3/4 ~ c'2*4/2 f'2*3/2 ees'4 des'2*3/2 f'2*4/2 ees'2*4/2 des'2 bes2 ~ bes4 \divisioMinima
f'2 ees'2*4/2 ~ ees'2*3/2 c'2*3/2 \finalis
}

tenorMusic = {
c'2 ~ c'2*3/2 des'2*9/4 c'2*4/2 ~ c'2*3/2 ~ c'4 aes2 ~ aes2*3/2 ~ aes2*9/4 f2*4/2 ~ f2*3/2 g4 aes2*3/2 ~ aes2*4/2 ~ aes2*4/2 ~ aes2 ~ aes2 g4 \divisioMinima
aes2 ~ aes2*4/2 bes2*3/2 ~ bes2 aes4 \finalis
c'2 ~ c'2*3/2 bes2*3/2 aes2*3/4 bes2*3/2 c'4 ~ \divisioMinima
c'4 bes4 aes2*3/2 ~ aes2*3/2 bes2*4/2 ~ bes2 aes2 g4 \divisioMaxima
r2*10/2 \divisioMaior
ees'2*3/2 bes2 ~ bes2*3/2 ~ bes2 aes2*5/2 g2 f4 \divisioMaxima
c'2*3/2 ~ c'2 bes2*4/2 aes2*4/2 g2*3/2 aes2 \divisioMaior
bes2 aes2*3/2 g2*3/2 aes2*3/4 f2*4/2 ~ f2*3/2 g4 aes2*3/2 ~ aes2*4/2 ~ aes2*4/2 ~ aes2 ~ aes2 g4 \divisioMinima
aes2 ~ aes2*4/2 bes2*3/2 ~ bes2 aes4 \finalis
}

bassMusic = {
r2*27/4 bes2*3/2 aes4 r2 g2*3/2 f2*9/4 ees2*4/2 des2*3/2 c4 f2*3/2 des2*4/2 c2*4/2 bes,2 ees2 ~ ees4 \divisioMinima
des2 c2*4/2 ~ c2*3/2 f2*3/2 \finalis
r2*27/4 \divisioMinima
c4 ~ c4 ~ c2*3/2 des2*3/2 d2*4/2 c2 ~ c2 ~ c4 \divisioMaxima
c'2*3/2 bes2*5/2 aes2 ~ \divisioMaior
aes2*3/2 ~ aes2 g2*3/2 f2 ~ f2*5/2 ~ f2 ~ f4 ~ \divisioMaxima
f2*3/2 ees2 ~ ees2*4/2 ~ ees2*4/2 f2*3/2 ~ f2 \divisioMaior
g2 f2*3/2 ~ f2*3/2 ~ f2*3/4 ees2*4/2 des2*3/2 c4 f2*3/2 des2*4/2 c2*4/2 bes,2 ees2 ~ ees4 \divisioMinima
des2 c2*4/2 ~ c2*3/2 f2*3/2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Alleluia"
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
