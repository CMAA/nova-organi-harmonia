\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page I.6
%(volume.page)

global = {
 \key a \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Ad te Domine" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Ad te Domine"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Ad te Domine" }
    \line {}
  }
}

chantText = \lyricmode {
Ad te _ _ _ Dó -- mi -- _ ne 
\set stanza = " * " 
le -- _ vá -- vi á -- _ _ ni -- mam me -- am: 
De -- us me -- us, in te con -- fí -- do, 
non e -- ru -- bé -- scam: 
ne -- que ir -- rí -- de -- ant me in -- i -- mí -- ci me -- _ i: 
ét -- e -- nim u -- ni -- ver -- si qui te ex -- spé -- ctant, 
non con -- fun -- _ _ dén -- _ tur. }

chantMusic = {
\tieDown   e'4 g'4 ( a'4.) g'4 ( a'4 g'4 a'4) c''4 ( c''4) ~ c''4 ( b'4) a'4 a'4 ( b'4) c''4 ( b'4 a'4 b'4) b'4 ( a'4) \divisioMaior
 a'4 ( g'4) a'4 ( b'\prall c''4) c''4 b'4 ( a'4) c''4 ( c''4 \forceBreak
) ~ c''4 ( a'4 g'4) a'4 c''4 ( c''4 c''4) a'4 a'4 ( b'4 g'4 a'4) a'4 ( b'4 a'4) a'4 \divisioMaxima
 c''4 c''4 c''4 ( d''4 c''4 c''4) b'4 ( a'4) \divisioMinima
 a'4 ( \once \tweak #'font-size #-4 g' ) a'4 a'4 ( \once \tweak #'font-size #-4 g'  \forceBreak
) a'4 ( c''4 b'4 g'4) a'4 ( g'4) \divisioMaior
 c''4 ( c''4 d''4) c''4 c''4 ( d''4 b'4 c''4) c''4 ( d''4 c''4) c''4 \divisioMaxima
 c''4 ( c''4) c''4 ( b'4) c''4 ( c''4 c''4) a'4 g'4 ( b'\prall c''4 b'4 a'4 \forceBreak
) a'4 ( b'4 a'4) a'4 \divisioMinima
 g'4 b'4 d''4 ( c''4) c''4 c''4 ( a'4) b'4 ( a'4 g'4 a'4) a'4 ( g'4) \divisioMaxima
 a'4 ( g'4) a'4 ( b'4 a'4) a'4 ( e'4) \divisioMinima
 g'4 ( a'4 g'4) a'4 \forceBreak
 a'4 ( d''4 \once \tweak #'font-size #-4 c'' ) c''4 ( d''4) c''4 ( b'4) a'4 g'4 g'4 ( a'4 g'4) e'4 ( d'4 e'4) \divisioMaior
 g'4 ( a'4) g'4 ( a'4) a'4 ( b'\prall c''4) d''4 ( b'4) c''4 ( b'4) a'4 ( b'4) c''4 ( b'4 a'4 b'4) b'4 ( a'4) \finalis

}

altoMusic = {
e'2*7/4 ~ e'2*4/2 ~ e'2 g'2 e'4 ~ e'2 d'2*4/2 e'2 ~ \divisioMaior
e'2 ~ e'2*3/2 ~ e'4 f'2 g'2 ~ g'2*4/2 ~ g'2*4/2 e'2*4/2 ~ e'2*3/2 ~ e'4 \divisioMaxima
f'2 g'2*4/2 e'2 \divisioMinima
d'2*3/2 e'2 f'2*4/2 e'2 \divisioMaior
g'2*4/2 e'2 ~ e'2 d'2*3/2 e'4 ~ \divisioMaxima
e'2 f'2 g'2*4/2 ~ g'2*5/2 e'2*3/2 ~ e'4 \divisioMinima
g'2 ~ g'2*3/2 f'2 e'2*4/2 ~ e'2 ~ \divisioMaxima
e'2 d'2*3/2 e'2 \divisioMinima
d'2*4/2 e'2*3/2 ~ e'2 f'2 ~ f'2 e'2*3/2 c'2*3/2 \divisioMaior
e'2 ~ e'2 ~ e'2*3/2 ~ e'2 ~ e'2 f'2 ~ f'2*4/2 e'2 \finalis
}

tenorMusic = {
r4 c'2*5/4 ~ c'2*4/2 ~ c'2 d'2 ~ d'4 c'2 b2*4/2 c'2 ~ \divisioMaior
c'2 b2*3/2 a4 ~ a2 g2 c'2*4/2 e'2*4/2 ~ e'2*4/2 d'2*3/2 c'4 ~ \divisioMaxima
c'2 ~ c'2*4/2 ~ c'2 \divisioMinima
b2*3/2 c'2 ~ c'2*4/2 b2 \divisioMaior
e'2*4/2 ~ e'2 d'2 b2*3/2 a4 ~ \divisioMaxima
a2 ~ a2 g2*3/2 c'4 d'2*5/2 ~ d'2*3/2 c'4 \divisioMinima
d'2 e'2*3/2 d'2 c'2*4/2 b2 \divisioMaxima
c'2 b2*3/2 a2 \divisioMinima
e2*4/2 ~ e2*3/2 a2 ~ a2 c'2 b2*3/2 g2*3/2 \divisioMaior
b2 ~ b2 a2*3/2 b2 a2 ~ a2 d'2*4/2 ~ d'4 c'4 \finalis
}

bassMusic = {
r2*7/4 b2*4/2 a2 g2 a4 ~ a2 ~ a2*4/2 ~ a2 \divisioMaior
c2 ~ c2*3/2 ~ c4 d2 e2 ~ e2*4/2 ~ e2*4/2 a2*4/2 ~ a2*3/2 ~ a4 \divisioMaxima
d2 e2*4/2 a2 ~ \divisioMinima
a2*3/2 ~ a2 d2*4/2 e2 ~ \divisioMaior
e2*4/2 a2 ~ a2 ~ a2*3/2 ~ a4 \divisioMaxima
c2 d2 e2*3/2 ~ e4 ~ e2*5/2 a2*3/2 ~ a4 \divisioMinima
b2 a2*3/2 ~ a2 ~ a2*4/2 e2 \divisioMaxima
c2 ~ c2*3/2 ~ c2 \divisioMinima
b,2*4/2 c2*3/2 ~ c2 d2 ~ d2 e2*3/2 ~ e2*3/2 ~ \divisioMaior
e2 d2 c2*3/2 ~ c2 ~ c2 d2 ~ d2*4/2 a2 \finalis
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
