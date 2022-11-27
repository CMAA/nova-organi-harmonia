\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.229
%(volume.page)

global = {
 \key g \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Justitiae Domini" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Justitiae Domini"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Justitiae Domini" }
    \line {}
  }
}

chantText = \lyricmode {
Ju -- stí -- ti -- æ _ Dó -- mi -- ni 
\set stanza = " * " re -- _ ctæ, 
læ -- ti -- fi -- cán -- tes cor -- _ da, 
et dul -- ci -- ó -- _ _ ra 
su -- per mel et fa -- _ _ _ vum: 
nam _ et ser -- vus tu -- us 
cu -- stó -- _ di -- et _ _ e -- _ _ _ a. }

chantMusic = {
\tieDown   f'4 aes'4 aes'4 ( aes'4 aes'4) aes'4 ( bes'\prall c''4 bes'4) c''4 ( bes'4) aes'4 aes'4 ( bes'4 c''4 bes'4 aes'4 bes'4) bes'4 ( aes'4) \divisioMinima
 aes'4 ( aes'4) ~ aes'4 ( bes'\prall c''4 bes'4 c''4 \forceBreak
) bes'4 ( aes'4) \divisioMaior
 aes'4 ( aes'4 aes'4) f'4 ( g'\prall aes'4 g'4 ees'4) f'4 aes'4 aes'4 ( aes'4 aes'4) aes'4 ( bes'\prall c''4 bes'4) c''4 ( bes'4 aes'4) bes'4 ( aes'4) \divisioMaxima
 aes'4 ( \once \tweak #'font-size #-4 f' ) aes'4 ( bes'4 \forceBreak
) aes'4 ( bes'4 c''4) c''4 ( bes'4) ~ bes'4 ( aes'4) bes'4 ( c''4 bes'4 aes'4 bes'4) bes'4 ( aes'4) \divisioMaior
 aes'4 f'4 f'4 ( aes'4 bes'4) bes'4 ( aes'4) aes'4 ( f'4 g'\prall aes'4) bes'4 ( g'4) aes'4 ( f'4) ~ f'4 ( ees'4 f'4 \forceBreak
) f'4 ( ees'4) \divisioMaxima
 ees'4 aes'4 ( aes'4 aes'4) aes'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( c''4) aes'4 ( g'4) aes'4 ( c''4 bes'4) bes'4 \divisioMaior
 aes'4 c''4 ( aes'4) c''4 ( bes'4 c''4) bes'4 ( aes'4) aes'4. ~ aes'4 ( aes'4) ~ aes'4 ( ees'4 \forceBreak
) aes'4. aes'4. ~ aes'4 ( aes'4 aes'4) c''4 ( bes'4 aes'4) bes'4 ( aes'4 g'4) g'4 \finalis

}

altoMusic = {
f'2 ~ f'2*3/2 ~ f'2*4/2 ~ f'2*3/2 ~ f'2 g'2*4/2 f'2 ~ \divisioMinima
f'2 ~ f'2*5/2 ees'2 ~ \divisioMaior
ees'2*3/2 des'2 ees'2*4/2 ~ ees'4 f'2*3/2 ~ f'2*4/2 g'2*3/2 ees'2 \divisioMaxima
des'2*4/2 ees'2*3/2 ~ ees'4 f'2*3/2 ~ f'2 g'2*3/2 f'2 \divisioMaior
des'2 c'4 ~ c'2 f'2 ees'2*4/2 des'2*3/2 c'2*4/2 bes2 \divisioMaxima
ees'4 c'2*3/2 ~ c'2 ~ c'2*4/2 ees'2*3/2 ~ ees'4 ~ \divisioMaior
ees'4 f'2 g'2*3/2 c'2 des'2*3/4 ees'2 des'2 c'2*3/4 ~ c'2*9/4 ~ c'2*3/2 ees'2*3/2 ~ ees'4 \finalis
}

tenorMusic = {
r4 ees'4 des'2*3/2 ~ des'2*4/2 c'2 ~ c'4 ~ c'2 ~ c'2*4/2 ~ c'2 ~ \divisioMinima
c'2 bes2*5/2 c'2 \divisioMaior
aes2*3/2 ~ aes2 ~ aes2*4/2 c'4 ~ c'2*3/2 bes2*4/2 ~ bes2*3/2 des;4 c'4 \divisioMaxima
f2*4/2 ees2*3/2 aes4 ~ aes2*3/2 des'2 c'2*3/2 ~ c'2 \divisioMaior
bes2 ~ bes4 aes2 ~ aes2 ~ aes2*4/2 ~ aes2*3/2 ~ aes2*4/2 bes2 \divisioMaxima
aes2*4/2 f2 ~ f2*4/2 ees2*3/2 g4 \divisioMaior
f4 ~ f2 ees2*3/2 r2 f2*3/4 ~ f2 ees2 ~ ees2*3/4 ~ ees2*3/4 f'2*3/2 f2*3/2 ~ f2*3/2 g4 \finalis
}

bassMusic = {
r2*5/2 bes2*4/2 aes2 g4 f2 ees2*4/2 f2 \divisioMinima
des2 ~ des2*5/2 c2 ~ \divisioMaior
c2*3/2 bes,2 c2*4/2 ~ c4 des2*3/2 ~ des2*4/2 ees2*3/2 aes2 \divisioMaxima
bes,2*4/2 c2*3/2 ~ c4 des2*3/2 ~ des2 ees2*3/2 f2 ~ \divisioMaior
f2 ~ f2*3/2 des2 c2*4/2 bes,2*3/2 aes,2*4/2 g,2 \divisioMaxima
f,2*4/2 ~ f,2 aes,2*4/2 c2*3/2 ~ c4 ~ \divisioMaior
c4 des2 ees2*3/2 f2 ~ f2*3/4 c2 bes,2 aes,2*3/4 g,2*3/4 f,2*3/2 aes,2*3/2 c2*3/2 ~ c4 \finalis
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
