\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.91
%(volume.page)

global = {
 \key d \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Laudem Domini" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Laudem Domini"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Laudem Domini" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- _ lú -- _ ia, 
\set stanza = " * " 
al -- le -- _ lú -- _ ia. 
_ _ _ _ _ _ _ _ _ _ _ ℣. 
Lau -- dem Dó -- mi -- ni 
lo -- qué -- _ _ tur os me -- um, 
et be -- ne -- dí -- _ _ _ cat o -- _ mnis ca -- ro 
no -- men san -- ctum 
\set stanza = " * " e -- _ _ _ jus. _ _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   d'4 ( \once \tweak #'font-size #-4 c' ) c'4 e'4 ( g'4 f'4 e'4 c'4 d'4) d'4 ( c'4) f'4 ( g'4 a'4 g'4 f'4 g'4) g'4 \divisioMaior
  d'4 ( \once \tweak #'font-size #-4 c' ) c'4 e'4 ( g'4 f'4 e'4 c'4 d'4) d'4 ( c'4 \forceBreak
) f'4 ( g'4 a'4 g'4 f'4 g'4) g'4 \divisioMaior
 a'4 ( g'4) a'4 ( g'4 f'4) g'4 ( f'4) g'4 ( f'4 d'4) f'4 ( f'4 d'4) e'4. d'4 ( e'4 c'4) \divisioMinima
 e'4 g'4 ( g'4 a'4 g'4 f'4 \forceBreak
) g'4 ( f'4 e'4) f'4 ( f'4 d'4.) e'4 ( d'4 c'4) d'4 ( e'\prall f'4 d'4) \finalis
 a'4 g'4 ( a'4 g'4 e'4) f'4 ( e'4) f'4 ( g'4) g'4 ( f'4 e'4 c'4 d'\prall e'4 d'4 c'4 d'4) \divisioMaior \forceBreak

 d'4 d'4 f'4 ( f'4 e'4) g'4 ( g'4 a'4) f'4 ( e'4 d'4) c'4 ( d'4) d'4 ( e'\prall f'4 d'4) d'4 \divisioMaxima
 d'4 ( e'4) g'4 ( a'4) g'4 ( a'4) a'4 ( b'\prall c''4) d''4 ( b'4) c''4 ( a'4 g'4. \forceBreak
) a'4 ( b'\prall c''4 a'4) a'4 \divisioMinima
 a'4 ( g'4) a'4 ( g'4 f'4) f'4 ( e'4 d'4) c'4 ( d'4 e'\prall f'4 d'4) d'4 \divisioMaior
 d'4 ( e'4) g'4 ( a'4) g'4 ( a'4 g'4 a'4) a'4 \divisioMinima
 a'4 ( b'\prall c''4) d''4 ( b'4 \forceBreak
) c''4 ( a'4 g'4.) a'4 ( b'\prall c''4 a'4) a'4 \divisioMinima
 a'4 ( g'4) a'4 ( g'4 f'4) g'4 ( f'4) g'4 ( f'4 d'4) f'4 ( f'4 d'4) e'4. d'4 ( e'4 c'4) \divisioMinima
 e'4 g'4 ( g'4 a'4 g'4 f'4 \forceBreak
) g'4 ( f'4 e'4) f'4 ( f'4 d'4.) e'4 ( d'4 c'4) d'4 ( e'\prall f'4 d'4) \finalis

}

altoMusic = {
r2 c'2*7/2 ~ c'2 ~ c'2*6/2 ~ c'4 r2 c'2*7/2 ~ c'2 ~ c'2*6/2 ~ c'4 ~ \divisioMaior
c'2 ~ c'2*3/2 a2 ~ a2*3/2 bes2*3/2 c'2*3/4 ~ c'2*3/2 ~ \divisioMinima
c'4 d'2*5/2 c'2*3/2 ~ c'2*7/4 ~ c'2*3/2 a2*3/2 ~ a4 \finalis
c'4 ~ c'2*4/2 ~ c'2*4/2 ~ c'2*3/2 ~ c'2*6/2 ~ \divisioMaior
c'2 bes2*3/2 ~ bes2*3/2 a2*3/2 g2 a2*4/2 ~ a4 \divisioMaxima
r4 e'4 ~ e'2 ~ e'2 ~ e'2*5/2 d'2*7/4 e'2*5/2 ~ \divisioMinima
e'2 d'2*3/2 ~ d'2*3/2 a2*3/2 ~ a2 ~ a4 ~ \divisioMaior
a2 d'2 ~ d'2*4/2 c'4 \divisioMinima
e'2*5/2 ~ e'2*7/4 ~ e'2*4/2 d'4 \divisioMinima
e'2 ~ e'2*3/2 d'2 c'2*3/2 ~ c'2*3/2 ~ c'2*3/4 ~ c'2*3/2 ~ \divisioMinima
c'4 ~ c'2*5/2 ~ c'2*3/2 ~ c'2*7/4 ~ c'2*3/2 a2*3/2 ~ a4 \finalis
}

tenorMusic = {
a2 ~ a2*7/2 ~ a2 g2*6/2 e4 g2 ~ g2*7/2 f2 d2*6/2 e4 \divisioMaior
f2 ~ f2*3/2 ~ f2 ~ f2*3/2 ~ f2*3/2 g2*3/4 f2 e4 ~ \divisioMinima
e4 ~ e2*5/2 ~ e2*3/2 a2*7/4 g2*3/2 ~ g2*3/2 f4 ~ \finalis
f4 e2*4/2 a2*4/2 g2*3/2 f2*6/2 ~ \divisioMaior
f2 ~ f2*3/2 e2*3/2 d2*3/2 e2 g2*4/2 f4 \divisioMaxima
d'2 ~ d'2 ~ d'2 c'2*5/2 b2*7/4 d'2*4/2 c'4 ~ \divisioMinima
c'2 ~ c'2*3/2 a2*3/2 g2*3/2 ~ g2 f4 ~ \divisioMaior
f2 e2 ~ e2*4/2 ~ e4 ~ \divisioMinima
e2*5/2 a2*7/4 ~ a2*4/2 ~ a4 ~ \divisioMinima
a2 d2*3/2 e2 ~ e2*3/2 f2*3/2 g2*3/4 a2*3/2 ~ \divisioMinima
a4 e2*5/2 a2*3/2 f2*7/4 g2*3/2 ~ g2*3/2 f4 \finalis
}

bassMusic = {
r2 g2*7/2 f2 ~ f2*6/2 c4 e2 a,2*7/2 ~ a,2 c2*6/2 ~ c4 \divisioMaior
r2 e2*3/2 ~ e2 d2*3/2 ~ d2*3/2 c2*3/4 ~ c2 ~ c4 ~ \divisioMinima
c4 bes,2*5/2 a,2*3/2 ~ a,2*7/4 ~ a,2*3/2 d2*3/2 ~ d4 \finalis
a,4 ~ a,2*4/2 ~ a,2*4/2 ~ a,2*3/2 ~ a,2*6/2 ~ \divisioMaior
a,4 g,4 ~ g,2*3/2 ~ g,2*3/2 d2*3/2 ~ d2 ~ d2*4/2 ~ d4 \divisioMaxima
r2 c'2 b2 a2*5/2 ~ a2*7/4 ~ a2*4/2 ~ a4 ~ \divisioMinima
a2 f2*3/2 ~ f2*3/2 e2*3/2 d2 ~ d4 \divisioMaior
c2 b,2 a,2*4/2 ~ a,4 \divisioMinima
c2*5/2 ~ c2*7/4 f2*4/2 ~ f4 \divisioMinima
c2 bes,2*3/2 ~ bes,2 a,2*3/2 ~ a,2*3/2 ~ a,2*3/4 ~ a,2*3/2 ~ \divisioMinima
a,4 ~ a,2*5/2 ~ a,2*3/2 ~ a,2*7/4 ~ a,2*3/2 d2*3/2 ~ d4 \finalis
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
        "I."
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
