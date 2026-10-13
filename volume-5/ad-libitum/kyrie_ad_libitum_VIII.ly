\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.134
%(volume.page)

%Proofed 3/14

global = {
 \key ees \major
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
Ký -- ri -- e _ _ 
\set stanza = " * " e -- lé -- i -- son. 
Ký -- ri -- e _ _ e -- lé -- i -- son. 
Ký -- ri -- e _ _ e -- lé -- i -- son. 
Chri -- ste _ _ _ e -- lé -- i -- son. 
Chri -- ste _ _ _ e -- lé -- i -- son. 
Chri -- ste _ _ _ e -- lé -- i -- son. 
Ký -- ri -- e _ _ _ _ e -- lé -- i -- son. 
Ký -- ri -- e _ _ _ _ e -- lé -- i -- son. 
Ký -- ri -- e _ _ _ 
\set stanza = " * " _ _ _ e -- lé -- i -- son. }

chantMusic = {
\tieDown   ees'4 c'4 ( ees'4)  ees'4. f'4 ( g'4) aes'4 ( g'4 f'4 ees'4)  ees'4 c'4 d'4 ees'4 \finalis
  ees'4 c'4 ( ees'4) \forceBreak
  ees'4. f'4 ( g'4) aes'4 ( g'4 f'4 ees'4)  ees'4 c'4 d'4 ees'4 \finalis
  ees'4 c'4 ( ees'4)  ees'4. f'4 ( g'4) aes'4 ( g'4 f'4 ees'4) ees'4 c'4 d'4 ees'4 \finalis
 \forceBreak
 ees'4 ( bes'4)  bes'4 ( aes'4 g'4) aes'4 ( bes'4) c''4 ( bes'4) ~ bes'4 ( g'4) aes'4 ( g'4 f'4 ees'4) ees'4 c'4 d'4 ees'4 \finalis
 ees'4 ( bes'4)  bes'4 ( aes'4 g'4) aes'4 ( bes'4) c''4 ( bes'4) ~ bes'4 ( g'4) \forceBreak
 aes'4 ( g'4 f'4 ees'4) ees'4 c'4 d'4 ees'4 \finalis
 ees'4 ( bes'4)  bes'4 ( aes'4 g'4) aes'4 ( bes'4) c''4 ( bes'4) ~ bes'4 ( g'4) aes'4 ( g'4 f'4 ees'4) ees'4 c'4 d'4 ees'4 \finalis
 \forceBreak
 ees'4 ( bes'4) bes'4 c''4 ( bes'4.) ees''4 ( d''4 c''4 bes'4)  aes'4 ( bes'4) c''4 ( bes'4) ~ bes'4 ( g'4) aes'4 ( g'4 f'4 ees'4) ees'4 c'4 d'4 ees'4 \finalis
 \forceBreak
 ees'4 ( bes'4) bes'4 c''4 ( bes'4.) ees''4 ( d''4 c''4 bes'4)  aes'4 ( bes'4) c''4 ( bes'4) ~ bes'4 ( g'4) aes'4 ( g'4 f'4 ees'4) ees'4 c'4 d'4 ees'4 \finalis
 ees'4 ( bes'4) bes'4 \forceBreak
 c''4 ( bes'4.) ees''4 ( d''4 c''4 bes'4)  aes'4 ( bes'4) c''4 ( bes'4) ~ bes'4 ( g'4) \divisioMinima
  bes'4 ( aes'4) bes'4 ( c''4 bes'4) ~ bes'4 ( g'4) aes'4 ( g'4 f'4 ees'4) ees'4 c'4 d'4 ees'4 \finalis

}

altoMusic = {
bes4 c'2 ~ c'2*3/4 ees'2 ~ ees'2 -\tweak Glissando.Y-offset #-0.8 \glissando f'4 r2 c'2*3/2 aes4 g2 bes2*3/4 ~ bes2 ~ bes2*5/2 aes2 g4 \finalis r4 c'2 ~ c'2*7/4 ~ c'2*5/2 aes2 bes4 \finalis
ees'2 ~ ees'2*3/2 ~ ees'2*3/2 ~ ees'2*3/2 ~ ees'2 ~ ees'2*3/2 c'2 bes4 \finalis
ees'2 ~ ees'2*3/2 ~ ees'2*3/2 f'2*3/2 ees'2 ~ ees'2*3/2 c'2*3/2 \finalis
ees'2 ~ ees'2*3/2 ~ ees'2*3/2 ~ ees'2*3/2 ~ ees'2*3/2 ~ ees'4 r4 aes2 bes4 \finalis
ees'2*3/2 d'2*5/4 ees'2*4/2 ~ ees'2*3/2 ~ ees'2*3/2 ~ ees'2 ~ ees'2*3/2 c'2 bes4 \finalis
ees'2*3/2 g'2*5/4 ~ g'2 ~ g'2 aes'2*3/2 g'2 ~ g'4 ees'2 ~ ees'2*3/2 c'2*3/2 \finalis
ees'2*3/2 g'2*5/4 ~ g'2*4/2 ees'2*3/2 f'2 -\tweak Glissando.Y-offset #-0.8 \glissando g'4 ees'2 ~ ees'2 f'2*3/2 ees'2 ~ ees'2*3/2 aes2 bes4 \finalis
}

tenorMusic = {
g2*3/2 ~ g2*3/4 aes2 bes2 aes2*3/2 g2*3/2 \finalis
ees2*3/2 ~ ees2*3/4 ~ ees2 ~ ees2*5/2 bes,2 ~ bes,4 \finalis
r4 aes2 ~ aes2*7/4 ~ aes2*5/2 f2 g4 \finalis
g2 ~ g2*3/2 ~ g2*3/2 c'2*3/2 bes2 aes2*3/2 g2 ~ g4 \finalis
r2 bes2*3/2 c'2*3/2 d'2*3/2 c'2 aes2*3/2 g2*3/2 \finalis
ees2 ~ ees2*3/2 aes2*3/2 g2*3/2 bes2*5/2 f2 g4 \finalis
g2*3/2 ~ g2*5/4 ~ g2*4/2 aes2*3/2 g2*3/2 bes2 aes2*3/2 g2 ~ g4 \finalis
ees'2*3/2 d'2*5/4 ~ d'2 ees'2 ~ ees'2*3/2 d'2*3/2 ees'2 aes2*3/2 g2*3/2 \finalis
r2*3/2 d'2*5/4 \shiftRight c'2*4/2 r2*3/2 d'2 ees'4 \divisioMinima
c'2 ~ c'2 d'2*3/2 ees'2 aes2*3/2 f2 g4 \finalis
}

bassMusic = {
ees2*3/2 c2*3/4 ~ c2 ~ c2 ~ c2*3/2 ~ c2*3/2 c2*3/2 g,2*3/4 f,2 ees,2*5/2 ~ ees,2 ~ ees,4 \finalis r4 r2 g2*7/4 f2*5/2 ees2 ~ ees4 \finalis
r2 ees2*3/2 c2*3/2 ~ c2*3/2 ees2 ~ ees2*3/2 ~ ees2 ~ ees4 \finalis
g2 ~ g2*3/2 ~ g2*3/2 ~ g2*3/2 c2 ~ c2*3/2 ~ c2*3/2 \finalis
r2 c2*3/2 ~ c2*3/2 ees2*3/2 ~ ees2*5/2 ~ ees2 ~ ees4 \finalis
ees2*3/2 \shiftRight g2*5/4 c2*4/2 ~ c2*3/2 ees2*3/2 ~ ees2 ~ ees2*3/2 ~ ees2 ~ ees4 \finalis
g2*3/2 ~ g2*5/4 ees2 ~ ees2 f2*3/2 g2*3/2 c2 ~ c2*3/2 ~ c2*3/2 \finalis
g2*3/2 ~ g2*5/4 c'2*4/2 ~ c'2*3/2 ~ c'2 ~ c'4 f2 g2 ~ g2*3/2 c2 ~ c2*3/2 ees2 ~ ees4 \finalis
}

voiceLines = {
\voiceLineStyle


s2*71/4
\allowVoiceLineBreak
\voiceLine "down" "up" aes2*5/2 aes2*1/2


s2*241/4
\allowVoiceLineBreak
\voiceLine "down" "up" ees'2*1/2 ees'2*1/2


s2*8/2
\allowVoiceLineBreak
\voiceLine "down" "up" aes2*3/2 aes2*1/2


}

voiceLinesTwo = {
\voiceLineStyle


s2*71/4
\allowVoiceLineBreak
\offsetVoiceLineY
\voiceLine "down" "down" f2*5/2 f2*1/2


s2*241/4
\allowVoiceLineBreak
\voiceLine "down" "down" c'2*1/2 c'2*1/2

}


\score{
  <<
    \new Lyrics
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "VI."
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
	\new Voice {
        \voiceThree \global \voiceLinesTwo
        }
      >>
    >>
    \context Lyrics {
      \lyricsto chant {
      \chantText
    }
    }
  >>
  \layout{
  }
  
}
