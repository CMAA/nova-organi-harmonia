\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.277
%(volume.page)

global = {
 \key g \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Saepe expugnaverunt" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Saepe expugnaverunt"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Saepe expugnaverunt" }
    \line {}
  }
}

chantText = \lyricmode {
Sæ -- pe _ _ _ _ _ _ _ 
\set stanza = " * " ex -- pu -- gna -- vé -- runt _ me 
a ju -- _ ven -- tú -- te me -- _ _ _ _ a. _ ℣. 
Di -- _ _ _ _ cat nunc _ 
Is -- ra -- el: _ _ _ _ _ _ _ 
sæ -- pe _ ex -- pu -- gna -- _ vé -- runt me _ _ _ 
a ju -- _ ven -- tú -- te me -- _ _ _ _ _ _ _ _ a. _ ℣. 
Et -- e -- _ _ _ _ _ nim 
non po -- tu -- é -- runt mi -- hi: _ _ _ _ _ _ 
su -- pra dor -- sum _ me -- um _ _ _ 
fa -- bri -- ca -- vé -- _ runt pec -- ca -- tó -- _ _ _ _ res. _ ℣. 
Pro -- lon -- ga -- vé -- _ _ _ _ runt 
in -- i -- qui -- tá -- tem si -- bi: _ _ _ _ _ _ 
Dó -- mi -- nus ju -- stus con -- _ cí -- det _ _ _ 
cer -- ví -- _ ces 
\set stanza = " * " pec -- ca -- tó -- _ _ _ _ _ _ rum. _ _ _ _ }

chantMusic = {
\tieDown   g'4 g'4. f'4 ( f'4) ~ f'4 ( d'4) e'4 ( c'4.) ~ c'4 ( d'4) f'4 ( f'4) g'4 a'4 ( c''4 a'4) ~ a'4 ( g'4) \divisioMinima
 g'4 ( a'4) f'4  g'4 ( a'\prall bes'4) bes'4 \forceBreak
 bes'4 ( bes'4) ~ bes'4 ( a'4 g'4) g'4 \divisioMaior
 g'4 a'4 ( g'4) a'4 ( b'\prall c''4) g'4 ( a'4 f'4) f'4 ( a'4 c''4) c''4 c''4 ( b'4 c''4 a'4 g'4.)  c''4 ( c''4 a'4 g'4 \forceBreak
) a'4 ( bes'4 g'4 f'4) \divisioMinima
  a'4 c''4 ( a'4) b'4 ( g'4) g'4 a'4 ( a'4 g'4) \finalis
 d'4 f'4 ( f'4) ~ f'4 ( f'4) ~ f'4 ( d'4) f'4 ( a'4 f'4 g'4) f'4 f'4 ( g'4 a'4) ~ a'4 ( g'4) \divisioMaior \forceBreak

 g'4 ( a'4) f'4 ( g'4) g'4 ( a'4) c''4 ( b'4) c''4 ( d''4 a'4) ~ a'4 ( g'4) a'4 ( g'4) c''4 ( c''4 a'4) c''4 ( g'4) ~ g'4 ( f'4) \divisioMaxima
 f'4 ( a'4) a'4 ( g'4) a'4 ( g'4 f'4 \forceBreak
) g'4 ( a'4) g'4 ( \once \tweak #'font-size #-4 a' ) g'4 ( a'4) c''4 ( b'4 c''4) c''4 a'4 ( b'\prall c''4) c''4 ( c''4) ~ c''4 ( b'4 a'4) b'4 ( a'4 g'4) a'4 ( g'4) \divisioMaior
 g'4 a'4 ( g'4) a'4 ( b'\prall c''4 \forceBreak
) g'4 ( a'4 f'4) f'4 ( a'4 c''4) c''4 c''4 ( d''4 c''4) ~ c''4 ( g'4) \divisioMinima
 c''4. d''4 ( e''4 b'4) c''4 ( d''4 b'4) c''4 ( a'4) ~ a'4 ( g'4.)  a'4 ( bes'4 g'4 f'4) \divisioMinima \forceBreak

  a'4 c''4 ( a'4) b'4 ( g'4) g'4 a'4 ( a'4 g'4) \finalis
 g'4 a'4 ( c''4 a'4 c''4) ~ c''4 ( c''4) d''4 ( c''4 b'4 g'4) a'4 ( g'4) a'4 ( b'\prall c''4 b'4 a'4) b'4 ( c''4 a'4) a'4 ( g'4) \divisioMaior \forceBreak

 g'4 g'4 ( a'4 g'4) f'4 ( g'4) c''4 ( c''4) a'4 ( c''4 b'4) c''4 c''4 ( c''4) ~ c''4 ( d''4 a'4) ~ a'4 ( g'4) a'4 ( g'4) c''4 ( c''4 a'4) c''4 ( g'4) ~ g'4 ( f'4) \divisioMaxima \forceBreak

 g'4 g'4 a'4 ( \once \tweak #'font-size #-4 b' ) g'4 ( a'4) c''4 ( b'4 c''4) c''4 ( a'4 b'\prall c''4) c''4 ( c''4) ~ c''4 ( b'4 a'4) b'4 ( a'4 g'4) a'4 ( g'4) \divisioMaior
 g'4 g'4 g'4 \forceBreak
 a'4 ( g'4) a'4 ( b'\prall c''4) g'4 ( a'4 f'4) f'4 ( a'4 c''4) c''4 c''4 ( b'4 c''4 a'4 g'4.)  c''4 ( c''4 a'4 g'4) a'4 ( bes'4 g'4 f'4) \divisioMinima
  a'4 c''4 ( a'4) b'4 ( g'4) g'4 a'4 ( a'4 g'4) \finalis \forceBreak

 g'4 ( d'4) g'4 a'4 ( b'4 a'4) c''4 ( c''4 c''4) d''4 ( c''4 b'4 g'4) a'4 ( g'4) a'4 ( b'\prall c''4 b'4 a'4) b'4 ( c''4 a'4) a'4 ( g'4) \divisioMaior
 g'4 g'4 ( a'4 g'4 \forceBreak
) f'4 ( g'4) c''4 ( c''4) a'4 ( c''4 b'4) c''4 c''4 ( c''4) ~ c''4 ( d''4 a'4) ~ a'4 ( g'4) a'4 ( g'4) c''4 ( c''4 a'4) c''4 ( g'4) ~ g'4 ( f'4) \divisioMaxima
 f'4 f'4 a'4 \forceBreak
 c''4 b'4 ( g'4 a'4) \divisioMinima
 g'4 ( f'4 g'4) a'4 ( c''4 b'4 c''4) c''4 ( a'4 b'\prall c''4) c''4 ( c''4) ~ c''4 ( b'4 a'4) b'4 ( a'4 g'4) a'4 ( g'4) \divisioMaior
 g'4 a'4 ( g'4) a'4 ( b'\prall c''4 \forceBreak
) g'4 ( a'4 f'4)  f'4 ( a'4 c''4) c''4 c''4 ( b'4 c''4 a'4 g'4) ~ g'4 ( g'4) a'4 ( g'4) ~ g'4 ( f'4 g'4) \divisioMinima
 c''4 ( c''4 c''4) d''4 ( c''4 b'4 a'4) ~ a'4 ( g'4 \forceBreak
) g'4 ( a'4 g'4 f'4) \divisioMinima
 a'4 ( b'\prall c''4 b'4 c''4) ~ c''4 ( a'4) b'4 ( a'4) ~ a'4 ( g'4) \finalis

}

altoMusic = {
r4 e'2*3/4 ~ e'2 d'2 c'2*5/4 ~ c'2 ~ c'2*3/2 e'2 ~ e'2*3/2 ~ \divisioMinima
e'2*3/2 d'2*4/2 ~ d'2 f'2*3/2 ~ f'4 \divisioMaior
e'4 ~ e'2 ~ e'2*3/2 ~ e'2*3/2 f'4 ~ f'2 ~ f'4 g'2 ~ g'2 ~ g'2*3/4 e'2 f'2 d'2 c'2 f'2*3/2 ~ f'2 d'4 ~ d'2 ~ d'4 ~ \finalis
d'4 ~ d'2 a2 ~ a2 c'2*5/2 ~ c'2 e'2*3/2 \divisioMaior
c'2 ~ c'2 f'2 ~ f'2 ~ f'2 e'2*3/2 ~ e'2 g'2 e'2 d'2*3/2 \divisioMaxima
c'2 ~ c'2 ~ c'2*3/2 ~ c'2 b2 c'2 e'2*3/2 f'4 ~ f'2*3/2 g'2 ~ g'2*3/2 ~ g'2 ~ g'4 e'2 ~ \divisioMaior
e'4 ~ e'2 ~ e'2*3/2 ~ e'2*3/2 f'4 ~ f'2*3/2 ~ f'2 g'2*3/2 ~ \divisioMinima
g'2*3/4 ~ g'2*3/2 ~ g'2*4/2 ~ g'2 ~ g'2*3/4 f'2 ~ f'2 ~ f'4 g'2 ~ g'2 ~ g'4 d'2*3/2 \finalis
e'2*5/2 ~ e'2 ~ e'2*6/2 ~ e'2*5/2 ~ e'2*3/2 d'2 \divisioMaior
r4 e'2*3/2 d'2 e'2*6/2 ~ e'2 ~ e'2 d'2*3/2 e'2 ~ e'2 ~ e'2 d'2*3/2 \divisioMaxima
e'2 ~ e'2*4/2 ~ e'2*3/2 f'2*4/2 e'2 ~ e'2*3/2 ~ e'2*3/2 d'2 \divisioMaior
e'2*3/2 ~ e'2 ~ e'2*3/2 ~ e'2*3/2 f'4 ~ f'2 ~ f'4 g'2 ~ g'2 ~ g'2*3/4 e'2 f'2 d'2 c'2 r4 g'2 ~ g'2 ~ g'4 d'2*3/2 ~ \finalis
d'2*3/2 e'2*3/2 ~ e'2*3/2 ~ e'2*4/2 ~ e'2 f'2*5/2 g'2*3/2 e'2 \divisioMaior
d'4 e'2*3/2 f'2 e'2 f'2*3/2 ~ f'4 g'2 ~ g'2 e'2*3/2 ~ e'2 g'2 e'2 d'2*3/2 \divisioMaxima
c'2*3/2 ~ c'4 e'2*3/2 \divisioMinima
d'2*3/2 e'2*4/2 f'2*4/2 g'2 ~ g'2*3/2 ~ g'2 ~ g'4 e'2 \divisioMaior
c'4 d'2 c'2*3/2 ~ c'2*3/2 f'4 ~ f'2 ~ f'4 g'2*5/2 ~ g'4 r2*5/2 b4 \divisioMinima
e'2*3/2 g'2*3/2 e'2*3/2 c'2 d'2 \divisioMinima
f'2*4/2 g'2 e'2 d'2 ~ d'4 \finalis
}

tenorMusic = {
r2*5/4 a2 ~ a2 g2*5/4 e2 d2*3/2 r2 c'2*3/2 \divisioMinima
a2*3/2 bes2*3/2 a4 g2 f2*3/2 g4 ~ \divisioMaior
g4 ~ g2 b2*3/2 c'2*3/2 ~ c'2*3/2 d'4 ~ d'2 c'2*7/4 ~ c'2*4/2 bes2 c'2 ~ c'4 d'2 c'2*3/2 ~ c'2 b4 \finalis
r4 a2 g2 f2 ~ f2*5/2 a2 ~ a2*3/2 \divisioMaior
g2 a2 ~ a2 d'2 b2 ~ b2*3/2 c'2 g2 a2 ~ a2*3/2 \divisioMaxima
f2 e2 f2*3/2 ~ f2 d2 e2 a2*3/2 ~ a4 c'2*3/2 ~ c'2 d'2*3/2 c'2*3/2 b2 \divisioMaior
c'4 ~ c'2 b2*3/2 a2*3/2 ~ a2*3/2 d'4 c'2 ~ c'2*3/2 \divisioMinima
a2*3/4 b2*3/2 e'2*4/2 c'2*7/4 ~ c'2 d'2 ~ d'4 c'2 d'2 c'4 ~ c'2 b4 \finalis
c'4 ~ c'2*4/2 ~ c'2 b2 d'2*4/2 c'2*5/2 ~ c'2*3/2 b2 \divisioMaior
c'4 ~ c'2*5/2 ~ c'2 ~ c'2*3/2 ~ c'4 d'2 c'2 b2*3/2 c'2 a2 c'2 d'2*3/2 \divisioMaxima
c'2 ~ c'2*4/2 ~ c'2*3/2 d'2*4/2 ~ d'2 c'2*3/2 ~ c'2*3/2 b2 \divisioMaior
c'2*3/2 b2 a2*3/2 ~ a2*3/2 c'2*3/2 d'4 ~ d'2 c'2*7/4 ~ c'2 ~ c'2 bes2 c'2 ~ c'4 ~ c'2 d'2 c'4 ~ c'2 b4 \finalis
g2*3/2 ~ g2*3/2 a2*3/2 b2*4/2 c'2 ~ c'2*5/2 ~ c'2*3/2 b2 ~ \divisioMaior
b4 c'2*3/2 d'2 c'2 ~ c'2*3/2 d'4 ~ d'2 c'2 b2*3/2 c'2 g2 a2 ~ a2*3/2 \divisioMaxima
f2*3/2 a4 ~ a2*3/2 ~ \divisioMinima
a2*3/2 ~ a2*4/2 ~ a4 c'2*3/2 ~ c'2 d'2*3/2 c'2*3/2 b2 \divisioMaior
e4 ~ e2 ~ e2*3/2 f2*3/2 ~ f2*3/2 a4 g2*5/2 b2*3/2 c'2*3/2 a4 \divisioMinima
r2*3/2 g2*3/2 b2*3/2 a2 ~ a2 \divisioMinima
c'2*4/2 ~ c'2 ~ c'2 ~ c'2 b4 \finalis
}

bassMusic = {
d2*5/4 ~ d2 ~ d2 ~ d2*5/4 ~ d2 ~ d2*3/2 c2 ~ c2*3/2 ~ \divisioMinima
c2*3/2 bes,2*4/2 ~ bes,2 d2*3/2 ~ d4 ~ \divisioMaior
d4 c2 ~ c2*3/2 ~ c2*3/2 d2*3/2 ~ d4 e2 ~ e2*7/4 a2*4/2 ~ a2 ~ a2 ~ a4 d2 ~ d2*3/2 g2 ~ g4 \finalis
d4 ~ d2 ~ d2 ~ d2 a,2*5/2 ~ a,2 c2*3/2 \divisioMaior
e2 ~ e2 d2 ~ d2 ~ d2 e2*3/2 ~ e2 ~ e2 c2 d2*3/2 \divisioMaxima
a,2 ~ a,2 ~ a,2*3/2 c2 ~ c2 ~ c2 ~ c2*3/2 d4 ~ d2*3/2 e2 ~ e2*3/2 ~ e2*3/2 ~ e2*3/2 c2 ~ c2*3/2 ~ c2*3/2 d2*3/2 ~ d4 ~ d2 e2*3/2 ~ \divisioMinima
e2*3/4 ~ e2*3/2 ~ e2*4/2 ~ e2*7/4 d2 ~ d2 ~ d4 e2 ~ e2 ~ e4 g2 ~ g4 \finalis
r4 b2*4/2 a2 ~ a2 ~ a2*4/2 ~ a2*5/2 c'2*3/2 r2 \divisioMaior
r2*8/2 b2*3/2 a4 ~ a2 ~ a2 b2*3/2 r2*9/2 \divisioMaxima
r2 b2*4/2 a2*3/2 ~ a2*4/2 ~ a2 ~ a2*3/2 c'2*3/2 r2 \divisioMaior
c2*3/2 ~ c2 ~ c2*3/2 d2*3/2 ~ d2*3/2 ~ d4 e2 ~ e2*7/4 a2 ~ a2 ~ a2 ~ a2 ~ a4 e2 ~ e2 ~ e4 g2 ~ g4 \finalis
b,2*3/2 c2*3/2 ~ c2*3/2 ~ c2*4/2 ~ c2 d2*5/2 e2*3/2 ~ e2 ~ \divisioMaior
e4 c2*3/2 ~ c2 ~ c2 d2*3/2 ~ d4 e2 ~ e2 ~ e2*3/2 ~ e2 ~ e2 c2 d2*3/2 \divisioMaxima
a,2*3/2 ~ a,4 c2*3/2 \divisioMinima
d2*3/2 c2*4/2 d2*4/2 e2 ~ e2*3/2 ~ e2*3/2 ~ e2 \divisioMaior
r4 b,2 a,2*3/2 ~ a,2*3/2 d2*3/2 ~ d4 e2*5/2 ~ e2*3/2 a2*4/2 ~ \divisioMinima
a2*3/2 e2*3/2 ~ e2*3/2 ~ e2 d2 ~ \divisioMinima
d2*4/2 e2 f2 g2 ~ g4 \finalis
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
