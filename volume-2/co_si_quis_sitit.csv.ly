\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.143
%(volume.page)

global = {
 \key aes \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Si quis sitit" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Si quis sitit"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Si quis sitit" }
    \line {}
  }
}

chantText = \lyricmode {
Si quis si -- tit 
\set stanza = " * " vé -- ni -- at ad me et bi -- bat, 
al -- le -- lú -- ia, al -- le -- _ lú -- ia. }

chantMusic = {
\tieDown   aes'4 ( f'4) aes'4 ( aes'4 bes'4) aes'4 bes'4 ( c''4 bes'4) \divisioMinima
 aes'4 aes'4 ( g'4) f'4 aes'4 bes'4 \divisioMinima
 aes'4 ( aes'4) f'4 ( g'4 ees'4) ees'4 \divisioMaior \forceBreak

 aes'4 bes'4  des''4 c''4 \divisioMinima
  des''4 c''4. bes'4 ( des''4 c''4) aes'4 ( bes'4 aes'4) aes'4 \finalis

}

altoMusic = {
c'2 ~ c'2*4/2 f'2*3/2 \divisioMinima
ees'4 ~ ees'2 des'2 d'4 ~ \divisioMinima
d'2 bes2*3/2 ~ bes4 \divisioMaior
ees'2 aes'2 ~ aes'4 f'2*3/4 ~ f'2*3/2 ees'2*3/2 ~ ees'4 \finalis
}

tenorMusic = {
f2 ~ f2*4/2 ~ f2*3/2 \divisioMinima
aes4 f2 ~ f2 ~ f4 ~ \divisioMinima
f2 aes2*3/2 g4 \divisioMaior
f4 g4 aes2*3/2 ~ aes2*3/4 des'2*3/2 ~ des'2*3/2 c'4 \finalis
}

bassMusic = {
r2 ees2*4/2 des2*3/2 \divisioMinima
c4 ~ c2 ~ c2 bes,4 ~ \divisioMinima
bes,2 ees2*3/2 ~ ees4 ~ \divisioMaior
ees2 f2 ~ f4 ees2*3/4 des2*3/2 aes2*3/2 ~ aes4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Communion"
        "6"
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
