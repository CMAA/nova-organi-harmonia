\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.159
%(volume.page)

global = {
 \key d \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"In te Domine" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "In te Domine"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "In te Domine" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- ia, 
\set stanza = " * " al -- le -- lú -- ia. _ _ _ _ _ _ _ 
_ _ _ ℣. 
In te Dó -- mi -- ne _ spe -- rá -- _ _ _ vi, 
non con -- fún -- _ dar in æ -- tér -- _ _ _ _ num: 
in tu -- a ju -- stí -- _ ti -- a lí -- be -- ra me, 
et é -- ri -- pe _ me: 
in -- clí -- _ na ad me _ au -- rem tu -- _ _ am, 
ac -- cé -- _ le -- _ ra 
\set stanza = " * " ut e -- rí -- pi -- as me. _ _ _ _ _ _ 
_ _ _ _ }

chantMusic = {
\tieDown   ees'4 ees'4 ( f'4 g'4) f'4 ( g'4 a'4 g'4 f'4 bes'4) bes'4 \divisioMinima
 ees'4 ees'4 ( f'4 g'4) f'4 ( g'4 a'4 g'4 f'4 bes'4) bes'4 \divisioMinima \forceBreak

 bes'4 ( bes'4) f'4 ( g'4 f'4 ees'4.) bes'4 ( g'4) a'4 ( f'4.) g'4 ( f'4) g'4 ( ees'4) ~ ees'4 ( d'4) \divisioMaior
 d'4 ( ees'4 f'4) g'4 ( f'4 g'4 ees'4 d'4) ees'4 ( f'4 ees'4) ees'4 d'4 \finalis
 f'4 f'4 \forceBreak
 f'4 ( g'4 bes'4) bes'4 ( a'4 bes'4 g'4) bes'4 ( g'4) ~ g'4 ( f'4) \divisioMinima
 g'4 ( a'4 g'4) bes'4. ~ bes'4 ( bes'4) ~ bes'4 ( a'4 g'4) bes'4 ( f'4 g'4) f'4 ( d'4) \divisioMaior
 d'4 ( ees'\prall f'4 g'4) f'4 \forceBreak
 f'4 ( g'4) bes'4 ( g'4 f'4 ees'4 f'\prall g'4 a'4) g'4 ( f'4) \divisioMinima
 f'4 g'4 ( a'4 g'4) a'4 ( g'4 f'4) g'4 ( ees'4) ~ ees'4 ( d'4.) f'4 ( g'4 f'4 ees'4) f'4 ( ees'4 d'4) d'4 \divisioMaxima
 d'4 ( \once \tweak #'font-size #-4 c' ) f'4 ( g'4 f'4 \forceBreak
) g'4 ( a'4) g'4 ( f'4) g'4 bes'4 ( bes'4) f'4 ( g'4) f'4 ( ees'4) f'4 ees'4 f'4 d'4 \divisioMaior
 d'4 d'4 d'4 ( ees'4 f'4) f'4 ( g'4) bes'4 ( g'4 f'4 ees'4 f'\prall g'4 a'4 \forceBreak
) g'4 ( f'4) \divisioMaxima
 f'4 f'4 ( g'4) bes'4 ( a'4) bes'4 ( a'4 bes'4 g'4) g'4 bes'4 ( g'4) ~ g'4 ( f'4) \divisioMinima
 g'4 ( a'4 \once \tweak #'font-size #-4 g' ) bes'4. bes'4 ( bes'4) ~ bes'4 ( a'4 g'4) bes'4 ( f'4 g'4) f'4 ( d'4) \divisioMaxima \forceBreak

 d'4 d'4 ( ees'4 f'4) g'4 ( a'4 g'4 f'4) f'4 ( g'4 a'\prall bes'4 a'4 g'4) a'4 ( bes'4) a'4 \divisioMinima
 d'4 d'4 ( ees'4 f'4) g'4 ( a'4 g'4 f'4) g'4 ( bes'4) bes'4 \forceBreak
 bes'4 ( bes'4) f'4 ( g'4 f'4 ees'4) \divisioMinima
 bes'4 ( g'4) a'4 ( f'4.) g'4 ( f'4) g'4 ( ees'4) ~ ees'4 ( d'4) \divisioMaior
 d'4 ( ees'4 f'4) g'4 ( f'4 g'4 ees'4 d'4) ees'4 ( f'4 ees'4) ~ ees'4 ( d'4) \finalis

}

altoMusic = {
r2*4/2 f'2*4/2 ~ f'2 g'4 \divisioMinima
c'4 ~ c'2*3/2 ~ c'2*4/2 ~ c'2 bes4 ~ \divisioMinima
bes2 c'2*9/4 d'2 ~ d'2*5/4 c'2*3/2 bes2*3/2 ~ \divisioMaior
bes2*3/2 ~ bes2 ~ bes2*3/2 ~ bes2 ~ bes2*3/2 \finalis
d'2 ~ d'2*3/2 ~ d'2*5/2 c'2*3/2 \divisioMinima
d'2*3/2 ~ d'2*3/4 ~ d'2 c'2*3/2 bes2*3/2 a2 \divisioMaior
d'2*3/2 ~ d'2 ~ d'2 ~ d'2*3/2 c'2 ~ c'2 ~ c'2 ~ \divisioMinima
c'4 d'2*3/2 c'2*4/2 bes2*7/4 ~ bes2 ~ bes2 a2*3/2 bes4 \divisioMaxima
d'4 \tiny c' \normalsize4 c'2*3/2 ~ c'2 bes2*3/2 ~ bes2*4/2 ~ bes2 ~ bes2*3/2 ~ bes4 ~ \divisioMaior
bes2 d'2*3/2 ~ d'2 ~ d'2*3/2 ees'2 ~ ees'2 c'2 \divisioMaxima
r4 d'2 ~ d'2 ~ d'2*4/2 ees'2 c'2*3/2 \divisioMinima
d'2*3/2 f'2*3/4 g'2 ees'2*3/2 ~ ees'2*3/2 d'2 \divisioMaxima
r4 d'2*3/2 ~ d'2*4/2 c'2*3/2 d'2*3/2 ~ d'2 ~ d'4 \divisioMinima
c'4 bes2*3/2 d'2*4/2 bes2*3/2 ~ bes2 c'2*4/2 \divisioMinima
bes2*9/4 ~ bes2*3/2 ~ bes2*3/2 ~ \divisioMaior
bes2*3/2 ~ bes2 ~ bes2*3/2 a2 bes2*3/2 \finalis
}

tenorMusic = {
c'4 ~ c'2*3/2 ~ c'2*4/2 d'2 ~ d'4 \divisioMinima
g4 ~ g2*3/2 c2*4/2 d2 ~ d4 \divisioMinima
f2 g2*9/4 ~ g2 d2*5/4 ~ d2*3/2 g2*3/2 \divisioMaior
f2*3/2 ees2 ~ ees2*3/2 ~ ees2 f2*3/2 \finalis
bes2 ~ bes2*3/2 ~ bes2*5/2 c'2*3/2 \divisioMinima
bes2*3/2 g2*3/4 ~ g2 ~ g2*3/2 f2*3/2 ~ f2 ~ \divisioMaior
f2*3/2 bes2 a2 g2*3/2 ~ g2 ees2 f2*3/2 ~ f2*3/2 ~ f2*4/2 ~ f2*7/4 ees2 d2 c2*3/2 g4 ~ \divisioMaxima
g2 d2*3/2 ~ d2 ~ d2 ees4 d2*4/2 ees2 g2*3/2 f4 ~ \divisioMaior
f4 g4 bes2*3/2 a2 g2*3/2 ~ g2 bes2 ~ bes4 a4 \divisioMaxima
r4 bes2 ~ bes2 ~ bes2*4/2 ~ bes2 c'2*3/2 \divisioMinima
bes2*3/2 ~ bes2*3/4 ~ bes2 ~ bes2*3/2 ~ bes2*3/2 a2 \divisioMaxima
bes4 ~ bes2*3/2 ~ bes2*4/2 a2*3/2 g2*3/2 ~ g2 f4 ~ \divisioMinima
f4 g2*3/2 ~ g2*4/2 ~ g2*3/2 f2 g2*4/2 \divisioMinima
f2*9/4 ees2*3/2 f2*3/2 ~ \divisioMaior
f2*3/2 ~ f2 ees2*3/2 c2 g2*3/2 \finalis
}

bassMusic = {
r4 bes2*3/2 a2*4/2 ~ a2 g4 \divisioMinima
c4 bes,2*3/2 a,2*4/2 ~ a,2 g,4 \divisioMinima
d2 c2*9/4 bes,2 ~ bes,2*5/4 a,2*3/2 g,2*3/2 ~ \divisioMaior
g,2*3/2 ~ g,2 ees,2*3/2 g,2 bes,2*3/2 \finalis
r2 a2*3/2 g2*5/2 a2*3/2 \divisioMinima
r2*3/2 r2*3/4 f2 ees2*3/2 d2*3/2 ~ d2 \divisioMaior
bes,2*3/2 ~ bes,2 ~ bes,2 ~ bes,2*3/2 c2 ~ c2 a,2 ~ \divisioMinima
a,4 bes,2*3/2 a,2*4/2 g,2*7/4 ~ g,2 ~ g,2 ~ g,2*3/2 ~ g,4 \divisioMaxima
bes,2 a,2*3/2 g,2 ~ g,2*3/2 ~ g,2*4/2 ~ g,2 ~ g,2*3/2 bes,4 ~ \divisioMaior
bes,2 ~ bes,2*3/2 ~ bes,2 ~ bes,2*3/2 c2 ~ c2 f2 \divisioMaxima
r2*3/2 a2 g2*4/2 ~ g2 a2*3/2 \divisioMinima
g2*3/2 d2*3/4 ees2 c2*3/2 bes,2*3/2 d2 \divisioMaxima
r4 a2*3/2 g2*4/2 ~ g2*3/2 ~ g2*3/2 d2 ~ d4 ~ \divisioMinima
d4 g,2*3/2 bes,2*4/2 ees2*3/2 d2 c2*4/2 \divisioMinima
d2*9/4 ees2*3/2 bes,2*3/2 \divisioMaior
a,2*3/2 g,2 ~ g,2*3/2 ~ g,2 ~ g,2*3/2 \finalis
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
        "III"
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
