\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.236
%(volume.page)

global = {
 \key g \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Si ambulavero" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Si ambulavero"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Si ambulavero" }
    \line {}
  }
}

chantText = \lyricmode {
Si am -- bu -- lá -- _ _ _ ve -- _ ro 
\set stanza = " * " 
in mé -- _ di -- o tri -- bu -- la -- _ ti -- ó -- nis, 
vi -- vi -- fi -- cá -- _ _ _ _ _ _ _ bis me, _ _ _ _ Dó -- mi -- ne: 
et su -- per i -- _ ram, in -- i -- mi -- có -- _ rum me -- ó -- _ _ _ rum 
ex -- tén -- _ _ _ _ _ _ des 
ma -- _ _ _ num tu -- am, _ 
et sal -- vum me fe -- _ cit 
déx -- te -- ra _ _ tu -- _ _ _ _ _ _ _ _ a. }

chantMusic = {
\tieDown   f'4 ( g'4 f'4) f'4 g'4 g'4 ( c''4) a'4 ( b'4.) a'4 ( c''4) ~ c''4 ( c''4) d''4 ( c''4) ~ c''4 ( b'4 a'4 g'4) a'4 ( a'4 g'4) \divisioMaior
 g'4 \forceBreak
 a'4 ( g'4 a'4) c''4 ( c''4 d''4) a'4 ( g'4) g'4 \divisioMinima
 g'4 ( a'\prall b'4 a'4) a'4 ( g'4) g'4 ( f'4) ~ f'4 ( e'4 d'4) g'4 g'4 ( a'\prall b'4 a'4 b'4) a'4 ( g'4) \divisioMaxima \forceBreak

 g'4 ( a'4 g'4) f'4 g'4 g'4 ( c''4) a'4 ( b'4.) a'4 c''4 ( c''4) ~ c''4 ( c''4) ~ c''4 ( a'4) ~ a'4 ( g'4) ~ g'4 ( f'4) \divisioMinima
 a'4 ( b'\prall c''4 c''4) d''4 ( \once \tweak #'font-size #-4 c'' ) c''4. b'4 ( c''4 a'4) b'4 ( a'4 g'4. \forceBreak
) c''4 ( c''4) ~ c''4 ( b'4 a'4 b'\prall c''4 b'4 a'4) \divisioMinima
 a'4 ( g'4) g'4 ( a'\prall b'4 a'4 b'4) a'4 ( g'4) \divisioMaior
 g'4 ( a'4 g'4 \once \tweak #'font-size #-4 a' ) f'4 g'4 g'4 ( c''4) ~ c''4 ( b'4 c''\prall d''4 c''4 \forceBreak
) c''4 ( d''4) \divisioMinima
 c''4 c''4 ( d''4 c''4 a'4) c''4 ( b'4) c''4. b'4 ( c''4 a'4 b'4) a'4 ( a'4 g'4) \divisioMinima
 g'4 g'4 ( a'4 g'4 f'4) g'4 ( f'4) ~ f'4 ( e'4 d'4) g'4 ( a'4) g'4 \divisioMaior \forceBreak

 a'4 g'4 ( c''4 b'4 g'4) a'4 ( a'4) f'4 ( a'4) c''4 ( g'4 f'4) ~ f'4 ( d'4) e'4 ( f'4) g'4 ( a'4 g'4) g'4 \divisioMaior
 b'4 ( g'4) a'4 c''4 ( c''4) d''4 ( e''4 d''4 c''4) ~ c''4 ( b'4 g'4 \forceBreak
) c''4 ( c''4) a'4 ( b'\prall c''4 b'4 a'4 g'4 a'4) g'4 ( a'4) b'4 ( a'4) \divisioMaior
 g'4 a'4 ( \once \tweak #'font-size #-4 b' ) b'4 b'4 b'4 ( c''4 d''4 c''4 a'4) c''4 ( b'4) b'4 \divisioMaior \forceBreak

 b'4 ( c''4 d''4) c''4 d''4 ( c''4) ~ c''4 ( c''4) ~ c''4 ( a'4) c''4 ( c''4) ~ c''4 ( c''4) ~ c''4 ( a'4) c''4 ( c''4 a'4) c''4 ( b'4 g'4 a'4) \divisioMinima
 f'4 ( a'4) c''4 ( b'4 g'4.) b'4 ( a'4 g'4) a'4 ( g'4) g'4 \finalis

}

altoMusic = {
e'2*3/2 f'4 g'4 ~ g'2 ~ g'2*5/4 e'2 ~ e'2*3/2 g'2 ~ g'2 ~ g'4 d'2 ~ d'4 ~ \divisioMaior
d'4 f'2*3/2 ~ f'2*3/2 e'2*3/2 \divisioMinima
d'2 ~ d'2 e'2*3/2 a2*5/2 c'2 ~ c'2*3/2 b2 \divisioMaxima
c'2*3/2 ~ c'2 ~ c'2 e'2*7/4 c'2 e'2*3/2 ~ e'2 d'2*3/2 \divisioMinima
f'2*4/2 a'2 g'2*9/4 d'2 ~ d'2*3/4 g'2 f'2 e'2 ~ e'2*3/2 ~ \divisioMinima
e'2 ~ e'2 ~ e'2*3/2 ~ e'2 \divisioMaior
c'2*4/2 ~ c'2*3/2 ~ c'2 d'2 ~ d'2 g'2 ~ \divisioMinima
g'4 e'2*4/2 f'2 g'2*3/4 e'2 ~ e'2 ~ e'2*3/2 ~ \divisioMinima
e'4 c'2*5/2 d'2 ~ d'2 ~ d'2 ~ d'4 ~ \divisioMaior
d'4 c'2*4/2 ~ c'2 ~ c'2 ~ c'2 ~ c'2*3/2 ~ c'2 ~ c'2*3/2 b4 \divisioMaior
d'2*3/2 g'2 f'2*3/2 e'2*4/2 ~ e'2 ~ e'2 d'2*5/2 ~ d'2 c'2*3/2 d'2*4/2 e'2 ~ e'2*3/2 ~ e'2*3/2 \divisioMaior
d'2*4/2 g'2 ~ g'2 f'2 e'a2 a'2 g'2 f'2*3/2 e'2 ~ e'2 \divisioMinima
c'2 ~ c'2 b2*3/4 c'2*3/2 ~ c'2 b4 \finalis
}

tenorMusic = {
c'2*3/2 ~ c'2 ~ c'2 d'2*5/4 ~ d'2 c'2*3/2 d'2 c'2*3/2 ~ c'2 b4 ~ \divisioMaior
b4 c'2*3/2 ~ c'2*3/2 b2*3/2 ~ \divisioMinima
b2 g2 e2*3/2 f2*5/2 ~ f2 e2*3/2 d2 \divisioMaxima
e2*3/2 d2 e2 c2*7/4 e2 a2*3/2 ~ a2 ~ a2*3/2 \divisioMinima
c'2*4/2 ~ c'2 ~ c'2*9/4 ~ c'2 b2*3/4 r2 d'2 ~ d'2 c'2*3/2 \divisioMinima
b2 ~ b2 c'2*3/2 b2 \divisioMaior
a2*4/2 ~ a2*3/2 g2 ~ g2 a2 ~ a4 b4 ~ \divisioMinima
b4 c'2*4/2 d'2 e'2*3/4 d'2 c'2 b2*3/2 ~ \divisioMinima
b4 a2*5/2 ~ a2 ~ a2 g2 ~ g4 ~ \divisioMaior
g4 ~ g2*4/2 f2 ~ f2 e2 d2*3/2 c2 d2*3/2 ~ d4 \divisioMaior
g2*3/2 a2 ~ a2*3/2 g2*4/2 a2 f2 ~ f2*5/2 e2 ~ e2*3/2 g2*4/2 ~ g2 a2*3/2 g2*3/2 \divisioMaior
r2*4/2 b2 c'2 ~ c'2 g2 a2 ~ a2 ~ a2*3/2 ~ a2 e2 \divisioMinima
f2 g2 ~ g2*3/4 e2*3/2 d2 ~ d4 \finalis
}

bassMusic = {
c2*3/2 d2 e2 ~ e2*5/4 a2 ~ a2*3/2 g2 ~ g2*3/2 ~ g2 ~ g4 ~ \divisioMaior
g4 f2*3/2 a2*3/2 e2*3/2 ~ \divisioMinima
e2 ~ e2 c2*3/2 d2*5/2 c2 ~ c2*3/2 g,2 \divisioMaxima
c2*3/2 ~ c2 b,2 ~ b,2*7/4 a,2 ~ a,2*3/2 c2 d2*3/2 ~ \divisioMinima
d2*4/2 f2 e2*9/4 g2 ~ g2*3/4 d'2 a2 ~ a2 ~ a2*3/2 \divisioMinima
e2 d2 c2*3/2 e2 ~ \divisioMaior
e2*4/2 d2*3/2 e2 g2 ~ g2 ~ g2 ~ \divisioMinima
g4 a2*4/2 ~ a2 e2*3/4 ~ e2 ~ e2 ~ e2*3/2 ~ \divisioMinima
e4 ~ e2*5/2 d2 c2 ~ c2 b,4 ~ \divisioMaior
b,4 e2*4/2 ~ e2 d2 a,2 ~ a,2*3/2 ~ a,2 g,2*3/2 ~ g,4 \divisioMaior
r2*3/2 e2 d2*3/2 e2*4/2 a,2 ~ a,2 ~ a,2*5/2 ~ a,2 ~ a,2*3/2 g,2*4/2 c2 ~ c2*3/2 e2*3/2 \divisioMaior
g2*4/2 ~ g2 e2 a2*4/2 f2 e2 d2*3/2 c2 ~ c2 \divisioMinima
d2 e2 ~ e2*3/4 c2*3/2 g,2 ~ g,4 \finalis
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
        "VIII"
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
