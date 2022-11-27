\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.41
%(volume.page)

global = {
 \key g \mixolydian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

\header {
  title = \markup \center-column {"Kyrie VII." \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page ""
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "" }
    \line {}
  }
}

chantText = \lyricmode {
Ký -- ri -- e _ 
\set stanza = " * " _ 
e -- _ _ lé -- i -- son. 
Ký -- ri -- e _ _ 
e -- _ _ lé -- i -- son. 
Ký -- ri -- e _ _ 
e -- _ _ lé -- i -- son. 
Chri -- ste _ _ _ _ 
e -- _ _ lé -- i -- son. 
Chri -- ste _ _ _ _ 
e -- _ _ lé -- i -- son. 
Chri -- ste _ _ _ _ 
e -- _ _ lé -- i -- son. 
Ký -- ri -- e _ _ _ _ 
e -- _ _ lé -- i -- son. 
Ký -- ri -- e _ _ _ _ 
e -- _ _ lé -- i -- son. 
Ký -- ri -- e _ _ _ _ 
\set stanza = " * " 
e -- _ _ lé -- i -- son. }

chantMusic = {
\tieDown   a'4 g'4 ( f'4) g'4 ( a'4) ~ a'4 ( d'4) \divisioMinima
 d'4 ( e'4) f'4 ( g'\prall a'4 )( g'4 f'4 e'4 d'4) \divisioMaior
 d'4 ( e'4) f'4 ( g'\prall a'4) ~ a'4 ( g'4) a'4 ( f'4) \forceBreak
 a'4 a'4 g'4 \finalis
 a'4 g'4 ( f'4) g'4 ( a'4) ~ a'4 ( d'4) \divisioMinima
 d'4 ( e'4) f'4 ( g'\prall a'4 )(g'4 f'4 e'4 d'4) \divisioMaior
 d'4 ( e'4) f'4 ( g'\prall a'4) ~ a'4 ( g'4) a'4 ( f'4) \forceBreak
 a'4 a'4 g'4 \finalis
 a'4 g'4 ( f'4) g'4 ( a'4) ~ a'4 ( d'4) \divisioMinima
 d'4 ( e'4) f'4 ( g'\prall a'4 )(g'4 f'4 e'4 d'4) \divisioMaior
 d'4 ( e'4) f'4 ( g'\prall a'4) ~ a'4 ( g'4) a'4 ( f'4) \forceBreak
 a'4 a'4 g'4 \finalis
 c''4 b'4 ( a'4 g'4) ~ g'4 ( f'4 a'4) \divisioMinima
 c''4 ( b'4 g'4) a'4 ( g'4) ~ g'4 ( f'4 a'4) ~ a'4 ( d'4) \divisioMinima
 d'4 ( e'4) f'4 ( g'\prall \forceBreak
 a'4 )(g'4 f'4 e'4 d'4) \divisioMaior
 d'4 ( e'4) f'4 ( g'\prall a'4) ~ a'4 ( g'4) a'4 ( f'4) a'4 a'4 g'4 \finalis
 c''4 b'4 ( a'4 g'4) ~ g'4 ( f'4 a'4) \divisioMinima
 c''4 ( b'4 g'4) \forceBreak
 a'4 ( g'4) ~ g'4 ( f'4 a'4) ~ a'4 ( d'4) \divisioMinima
 d'4 ( e'4) f'4 ( g'\prall a'4 )( g'4 f'4 e'4 d'4) \divisioMaior
 d'4 ( e'4) f'4 ( g'\prall a'4) ~ a'4 ( g'4) a'4 ( f'4) a'4 a'4 g'4 \finalis
 \forceBreak
 c''4 b'4 ( a'4 g'4) ~ g'4 ( f'4 a'4) \divisioMinima
 c''4 ( b'4 g'4) a'4 ( g'4) ~ g'4 ( f'4 a'4) ~ a'4 ( d'4) \divisioMinima
 d'4 ( e'4) f'4 ( g'\prall a'4 )(g'4 f'4 e'4 d'4) \divisioMaior
 \forceBreak
 d'4 ( e'4) f'4 ( g'\prall a'4) ~ a'4 ( g'4) a'4 ( f'4) a'4 a'4 g'4 \finalis
 g'4 ( c''4) c''4 ( b'4) c''4 ( d''4 c''4 b'4 a'4 g'4) ~ g'4 ( f'4 a'4) \divisioMinima
 \forceBreak
 c''4 ( b'4 g'4) a'4 ( g'4) ~ g'4 ( f'4 a'4) ~ a'4 ( d'4) \divisioMinima
 d'4 ( e'4) f'4 ( g'\prall a'4 )(g'4 f'4 e'4 d'4) \divisioMaior
 d'4 ( e'4) f'4 ( g'\prall a'4) ~ a'4 ( g'4) a'4 ( f'4) a'4 a'4 g'4 \finalis
 \forceBreak
 g'4 ( c''4) c''4 ( b'4) c''4 ( d''4 c''4 b'4 a'4 g'4) ~ g'4 ( f'4 a'4) \divisioMinima
 c''4 ( b'4 g'4) a'4 ( g'4) ~ g'4 ( f'4 a'4) ~ a'4 ( d'4) \divisioMinima
 d'4 ( e'4) f'4 ( g'\prall a'4 )(g'4 f'4 e'4 d'4) \divisioMaior
 \forceBreak
 d'4 ( e'4) f'4 ( g'\prall a'4) ~ a'4 ( g'4) a'4 ( f'4) a'4 a'4 g'4 \finalis
 g'4 ( c''4) c''4 ( b'4) c''4 ( d''4 c''4 b'4 a'4 g'4) ~ g'4 ( f'4 a'4) \divisioMinima
 \forceBreak
 c''4 ( b'4 g'4) a'4 ( g'4) ~ g'4 ( f'4 a'4) ~ a'4 ( d'4) \divisioMinima
 d'4 ( e'4) f'4 ( g'\prall a'4 )(g'4 f'4 e'4 d'4) \divisioMaior
 d'4 ( e'4) f'4 ( g'\prall a'4) ~ a'4 ( g'4) a'4 ( f'4) a'4 a'4 g'4 \finalis

}

altoMusic = {
d'4 ~ d'2*3/2 ~ d'2*3/2 ~ \divisioMinima
d'2 ~ d'2 ~ d'2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando e'4 d'4 ~ \divisioMaior
d'2 ~ d'2*5/2 ~ d'2 ~ d'2 ~ d'4 \finalis
d'4 ~ d'2*3/2 ~ d'2 ~ d'4 ~ \divisioMinima
d'2 c'2 ~ c'2*3/2 a2 ~ \divisioMaior
a2 c'2 ~ c'2*3/2 ~ c'2 ~ c'2 b4 \finalis
d'2*4/2 ~ d'2 ~ d'4 ~ \divisioMinima
d'2 ~ d'2 ~ d'2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando e'4 d'4 ~ \divisioMaior
d'2 ~ d'2 c'2*3/2 ~ c'2 d'2 ~ d'4 \finalis
c'2*3/2 ~ c'2*4/2 ~ \divisioMinima
c'2*4/2 ~ c'2*3/2 d'2*3/2 ~ \divisioMinima
d'2 ~ d'2 ~ d'2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando e'4 d'4 ~ \divisioMaior
d'2 ~ d'2 ~ d'2*3/2 ~ d'2 ~ d'2 ~ d'4 \finalis
c'2*3/2 d'2*4/2 \divisioMinima
e'2*4/2 d'2*3/2 ~ d'2 ~ d'4 ~ \divisioMinima
d'2 ~ d'2 ~ d'2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando e'4 d'4 ~ \divisioMaior
d'2 ~ d'2 ~ d'2*3/2 ~ d'2 ~ d'2 ~ d'4 \finalis
c'2*3/2 ~ c'2*4/2 ~ \divisioMinima
c'2*4/2 ~ c'2*3/2 a2*3/2 \divisioMinima
d'2 ~ d'2 ~ d'2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando e'4 d'4 ~ \divisioMaior
d'2 ~ d'2 ~ d'2*3/2 ~ d'2 ~ d'2 ~ d'4 \finalis
e'2 f'2 g'2*3/2 e'2 d'2*4/2 \divisioMinima
c'2*4/2 ~ c'2*3/2 d'2 ~ d'4 ~ \divisioMinima
d'2 ~ d'2 ~ d'2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando e'4 d'4 ~ \divisioMaior
d'2 ~ d'2 ~ d'2*3/2 ~ d'2 ~ d'2 b4 \finalis
e'2 f'2 g'2*5/2 -\tweak Glissando.Y-offset #-0.8 \glissando g'4 g'4 f'4 ~ f'4 \divisioMinima
g'2*4/2 d'2*3/2 ~ d'2 ~ d'4 ~ \divisioMinima
d'2 ~ d'2 ~ d'2*3/2 a2 ~ \divisioMaior
a2 c'2 ~ c'2*3/2 ~ c'2 d'2 ~ d'4 \finalis
e'2 ~ e'2 ~ e'2*5/2 d'2*4/2 \divisioMinima
c'2*4/2 ~ c'2*3/2 d'2 ~ d'4 ~ \divisioMinima
d'2 ~ d'2 ~ d'2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando e'4 d'4 ~ \divisioMaior
d'2 ~ d'2 ~ d'2*3/2 c'2 ~ c'2 b4 \finalis
}

tenorMusic = {
r4 e2*3/2 f2*3/2 \divisioMinima
a2 ~ a2 ~ a2*3/2 ~ a2 ~ \divisioMaior
a2 ~ a2*5/2 ~ a2 c'2 b4 \finalis
f4 e2*3/2 f2*3/2 \divisioMinima
a2 ~ a2 g2*3/2 ~ g2 \divisioMaior
f2 d2 e2*3/2 f2 ~ f2 d4 \finalis
r2*4/2 f2*3/2 \divisioMinima
a2 ~ a2 ~ a2*3/2 ~ a2 ~ \divisioMaior
a2 ~ a2*5/2 c'2 ~ c'2 b4 \finalis
e2*3/2 f2*4/2 \divisioMinima
g2*4/2 a2*3/2 ~ a2*3/2 ~ \divisioMinima
a2 ~ a2 ~ a2*3/2 ~ a2 ~ \divisioMaior
a2 g2 f2*3/2 c'2 ~ c'2 b4 \finalis
g2*3/2 a2*4/2 ~ \divisioMinima
a2*4/2 ~ a2*3/2 ~ a2*3/2 ~ \divisioMinima
a2 ~ a2 ~ a2*3/2 ~ a2 ~ \divisioMaior
a2 ~ a2 ~ a2*3/2 ~ a2 c'2 b4 \finalis
e2*3/2 d2*4/2 \divisioMinima
e2*4/2 f2*3/2 ~ f2*3/2 \divisioMinima
g2 a2 ~ a2*3/2 ~ a2 ~ \divisioMaior
a2 g2 f2*3/2 c'2 ~ c'2 b4 \finalis
r2*7/2 g2 a2*4/2 \divisioMinima
g2*4/2 a2*3/2 ~ a2*3/2 ~ \divisioMinima
a2 ~ a2 ~ a2*3/2 ~ a2 ~ \divisioMaior
a2 g2 f2*3/2 e2 d2 ~ d4 \finalis
c'2 ~ c'2 ~ c'2*5/2 ~ c'2*4/2 ~ \divisioMinima
c'2*4/2 ~ c'2*3/2 a2*3/2 ~ \divisioMinima
a2 f2 ~ f2*3/2 g2 \divisioMaior
f2 d2 e2*3/2 \shiftRight f2 c'2 b4 \finalis
c'2 ~ c'2 a2*5/2 ~ a2*4/2 \divisioMinima
g2*4/2 a2*3/2 ~ a2*3/2 ~ \divisioMinima
a2 ~ a2 ~ a2*3/2 ~ a2 ~ \divisioMaior
a2 g2 f2*3/2 d2 ~ d2 ~ d4 \finalis
}

bassMusic = {
d4 ~ d2*3/2 ~ d2*3/2 \divisioMinima
f2 d2 e2*3/2 f2 \divisioMaior
g2 f2 e2*3/2 f2 ~ f2 g4 \finalis
d4 ~ d2*3/2 ~ d2*3/2 ~ \divisioMinima
d2 a,2 ~ a,2*3/2 d2 ~ \divisioMaior
d2 c2 ~ c2*3/2 a,2 f,2 g,4 \finalis
r2*4/2 d2*3/2 \divisioMinima
f2 d2 e2*3/2 f2 \divisioMaior
g2 f2 ~ f2*3/2 ~ f2 ~ f2 g4 \finalis
a,2*3/2 ~ a,2*4/2 ~ \divisioMinima
a,2*4/2 ~ a,2*3/2 d2*3/2 \divisioMinima
f2 d2 e2*3/2 f2 \divisioMaior
d2 ~ d2 ~ d2*3/2 ~ d2 g2 ~ g4 \finalis
e2*3/2 d2*4/2 \divisioMinima
c2*4/2 d2*3/2 f2*3/2 \divisioMinima
g2 f2 e2*3/2 f2 \divisioMaior
g2 f2 e2*3/2 d2 ~ d2 g4 \finalis
c2*3/2 ~ c2*4/2 ~ \divisioMinima
c2*4/2 a,2*3/2 d2*3/2 ~ \divisioMinima
d2 ~ d2 e2*3/2 f2 \divisioMaior
d2 ~ d2 ~ d2*3/2 ~ d2 g2 ~ g4 \finalis
c2 d2 e2*3/2 ~ e2 f2*4/2 \divisioMinima
e2*4/2 f2*3/2 ~ f2*3/2 \divisioMinima
g2 f2 e2*3/2 f2 \divisioMaior
d2 ~ d2 ~ d2*3/2 ~ d2 ~ \shiftRight d2 g,4 \finalis
c2 d2 e2*5/2 f2*4/2 \divisioMinima
e2*4/2 d2*3/2 ~ d2*3/2 \divisioMinima
f2 e2 d2*3/2 ~ d2 ~ \divisioMaior
d2 c2 ~ c2*3/2 f2 ~ f2 g4 \finalis
r2 a2 g2*5/2 f2*4/2 \divisioMinima
e2*4/2 f2*3/2 ~ f2*3/2 \divisioMinima
g2 f2 e2*3/2 f2 \divisioMaior
d2 ~ d2 ~ d2*3/2 a,2 f,2 g,4 \finalis
}

voiceLines = {
\voiceLineStyle


s2*44/2
\allowVoiceLineBreak
\voiceLine "down" "down" d2*2/2 d2*1/2


s2*13/2
\allowVoiceLineBreak
\voiceLine "down" "down" f2*3/2 f2*1/2


s2*201/2
\allowVoiceLineBreak
\voiceLine "down" "down" f2*2/2 f2*1/2

s2*6/2
\allowVoiceLineBreak
\voiceLine "down" "down" d2*2/2 d2*1/2


s2*11/2
\allowVoiceLineBreak
\voiceLine "down" "down" a2*2/2 a2*1/2


s2*31/2
\allowVoiceLineBreak
\voiceLine "down" "down" d2*3/2 d2*1/2


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
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
