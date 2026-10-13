\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.124
%(volume.page)

%Proofed 3/14

global = {
 \key e \dorian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
 \override Glissando #'breakable = ##t 
}

chantText = \lyricmode {
Ký -- ri -- e _ 
\set stanza = " * " _ _ _ e -- lé -- i -- son. 
Ký -- ri -- e _ _ e -- lé -- i -- son. 
Ký -- ri -- e _ _ _ _ e -- lé -- i -- son. 
Chri -- ste _ _ e -- _ lé -- i -- son. 
Chri -- ste _ _ _ e -- lé -- i -- son. 
Chri -- ste _ _ e -- _ lé -- i -- son. 
Ký -- _ ri -- e _ _ _ _ _ _ _ _ _ _ _ _ e -- lé -- i -- son. 
Ký -- ri -- e _ _ e -- lé -- i -- son. 
Ký -- _ ri -- e _ _ 
\set stanza = " * " _ _ _ _ _ 
\set stanza = " * " _ _ _ 
\set stanza = " * " _ _ _ 
\set stanza = " ** "  _ _ _ e -- lé -- i -- son. }

chantMusic = {
\tieDown    g'4 ( a'4 b'4 c''4) b'4 b'4. a'4 ( b'4 g'4 e'4) \divisioMinima
  g'4 ( a'4) b'4 ( c''4 b'4.) a'4 ( b'4 g'4 e'4) g'4 ( fis'4 e'4 e'4) d'4 e'4 e'4 \finalis
 \forceBreak
 e'4 ( d'4) e'4 ( d'4 b4) d'4 ( e'4 e'4) d'4 ( g'4.) fis'4 ( a'4 g'4 fis'4) \divisioMinima
 e'4 ( fis'4 d'4 b4) d'4 ( d'4) e'4 e'4 \finalis
  g'4 ( a'4 b'4 c''4) b'4 \forceBreak
 b'4. a'4 ( b'4 g'4 e'4) \divisioMinima
  g'4 ( a'4) b'4 ( c''4 b'4.) a'4 ( b'4 g'4 e'4) g'4 ( fis'4 e'4 e'4) d'4 e'4 e'4 \finalis
 b'4 ( cis''4 b'4) b'4 ( a'4 e''4 e''4) ~ e''4 ( b'4.) \forceBreak
 cis''4 ( d''4 b'4) cis''4 ( a'4 b'4) \divisioMinima
 a'4 ( d''4 cis''4 a'4) b'4 ( b'4 a'4 g'4 fis'4 e'4 e'4) d'4 e'4 e'4 \finalis
 e'4 ( d'4) e'4 ( d'4 b4) d'4 ( e'4 e'4) \forceBreak
 d'4 ( g'4.) fis'4 ( a'4 g'4 fis'4) \divisioMinima
 e'4 ( fis'4 d'4 b4) d'4 ( d'4) e'4 e'4 \finalis
 b'4 ( cis''4 b'4) b'4 ( a'4 e''4 e''4) ~ e''4 ( b'4.) cis''4 ( d''4 b'4) cis''4 ( a'4 b'4) \divisioMinima
 \forceBreak
 a'4 ( d''4 cis''4 a'4) b'4 ( b'4 a'4 g'4 fis'4 e'4 e'4) d'4 e'4 e'4 \finalis
  e'4 ( d'4) g'4 ( a'4 b'4 c''4) b'4 b'4. a'4 ( b'4 g'4 e'4) d'4 ( e'4 e'4) \divisioMinima
 \forceBreak
  e'4 ( d'4) g'4 ( a'4) b'4 ( c''4 b'4.) a'4 ( b'4 g'4 e'4.) b'4 ( b'4 a'4) b'4 ( b'4 g'4) a'4 ( b'4 g'4 e'4) \divisioMinima
 g'4 ( fis'4 e'4 d'4.) fis'4 ( e'4) g'4 ( a'4 g'4 fis'4) \forceBreak
 e'4 ( fis'4 d'4 b4) d'4 ( d'4) e'4 e'4 \finalis
 e'4 ( \quil fis' g'4 fis'4 e'4 e'4) d'4 ( e'4) e'4. d'4 ( g'4.) fis'4 ( a'4 g'4 fis'4) 
 \forceBreak
 e'4 ( fis'4 d'4 b4) d'4 ( d'4) e'4 e'4 \finalis
  e'4 ( d'4) g'4 ( a'4 b'4 c''4) b'4 b'4. a'4 ( b'4 g'4 e'4) d'4 ( e'4 e'4) \divisioMinima
  e'4 ( d'4) g'4 ( a'4) \forceBreak
 b'4 ( c''4 b'4.) a'4 ( b'4 g'4 e'4) d'4 ( e'4 e'4) \divisioMinima
 b'4 ( b'4 a'4) b'4 ( b'4 g'4) a'4 ( b'4 g'4 e'4) \divisioMinima
 b'4 ( b'4 a'4) b'4 ( b'4 g'4) a'4 ( b'4 g'4 e'4) \divisioMinima
 \forceBreak
 g'4 ( fis'4 e'4 d'4.) fis'4 ( e'4) g'4 ( a'4 g'4 fis'4) e'4 ( fis'4 d'4 b4) d'4 ( d'4) e'4 e'4 \finalis

}

altoMusic = {
g'2*5/2 ~ g'2*3/4 -\tweak Glissando.Y-offset #-0.8 \glissando a'4 b'4 g'4 e'4 \divisioMinima g'2 ~ g'2*7/4 e'2*4/2 ~ e'2 ~ e'4 e'4 a2 b4 \finalis
b2 ~ b2*3/2 ~ b2*3/2 d'2*5/4 ~ d'2*4/2 \divisioMinima
b2*3/2 ~ b4 a2*3/2 b4 g'2*5/2 e'2*3/4 ~ e'2*3/2 ~ e'4 g'2 fis'2*7/4 e'2*3/2 ~ e'4 c'2 ~ c'2 b2 ~ b4 \finalis
e'2*3/2 ~ e'2*4/2 ~ e'2*5/4 ~ e'2*3/2 d'2*3/2 \divisioMinima
e'2*4/2 fis'2*3/2 b2 ~ b2 a2 b4 \finalis
a2 b2*3/2 ~ b2*3/2 d'2*5/4 ~ d'2 ~ d'2 -\tweak Glissando.Y-offset #-0.8 \glissando \divisioMinima
e'4 fis'4 d'4 b4 ~ b2*3/2 ~ b4 \finalis
e'2*3/2 ~ e'2*4/2 ~ e'2*5/4 ~ e'2*3/2 d'2*3/2 ~ \divisioMinima
d'2*4/2 fis'2*3/2 e'2 ~ e'4 e'4 a2 b4 r2 g'2 ~ g'2*3/2 ~ g'2*3/4 e'2 c'2 -\tweak Glissando.Y-offset #-0.8 \glissando d'4 e'4 e'4 r2 g'2 fis'2*7/4 e'2*3/2 ~ e'4. d'2*3/2 ~ d'2*3/2 c'2 b2 ~ \divisioMinima
b2*9/4 ~ b2 d'2*4/2 b2*3/2 ~ b4 a2*3/2 b4 \finalis
c'2*6/2 b2 ~ b2*3/4 d'2*5/4 ~ d'2*4/2 -\tweak Glissando.Y-offset #-0.8 \glissando e'4 fis'4 d'4 b4 ~ 
b2*3/2 ~ b4 c'2 d'2*5/2 ~ d'2*3/4 c'2*4/2 b2*3/2 a2 b2 e'2*7/4 ~ e'2*3/2 ~ e'4 d'4 e'4 e'4 ~ \divisioMinima
e'2*3/2 d'2*3/2 b2*4/2 \divisioMinima
d'2*3/2 ~ d'2*3/2 c'2 b2 \divisioMinima
d'2*9/4 ~ d'2 ~ d'2*4/2 -\tweak Glissando.Y-offset #-0.8 \glissando e'4 fis'4 d'4 b4 ~ b2*3/2 b4 \finalis
}

tenorMusic = {
e'2*5/2 ~ e'2*3/4 ~ e'2*4/2 \divisioMinima
d'2 ~ d'2*7/4 c'2*4/2 b2*4/2 fis2 g4 \finalis
g2 ~ g2*3/2 ~ g2*3/2 ~ g2*5/4 a2*4/2 \divisioMinima
g2*4/2 fis2*3/2 g4 \finalis
d'2*5/2 ~ d'2*3/4 c'2*4/2 \divisioMinima
b2 a2*7/4 b2*4/2 a2 ~ a2 ~ a2 g4 \finalis
g2*3/2 fis2*4/2 g2*5/4 fis2*3/2 ~ fis2*3/2 \divisioMinima
a2*4/2 ~ a2*3/2 ~ a2 g2 fis2 g4 \finalis
fis2 ~ fis2*3/2 g2*3/2 ~ g2*5/4 a2 b2 ~ \divisioMinima
b2*4/2 g2*3/2 ~ g4 \finalis
g2*3/2 fis2*4/2 g2*5/4 fis2*3/2 ~ fis2*3/2 ~ \divisioMinima
fis2*4/2 b2*3/2 ~ b2*4/2 fis2 g4 \finalis
r2 b2 c'2*3/2 d'2*3/4 c'2 a2 b2*3/2 \divisioMinima
a2 g2 a2*7/4 b2*9/4 a2*3/2 g2*7/2 ~ \divisioMinima
g2*9/4 ~ g2 ~ g2*4/2 ~ g2*4/2 fis2*3/2 g4 \finalis
a2*6/2 g2 ~ g2*3/4 b2*5/4 ~ b2*4/2 ~ b2*4/2 g2*3/2 ~ g4 \finalis
g2 ~ g2*5/2 ~ g2*11/4 ~ g2*3/2 \divisioMinima fis2 \shiftRight e2 ~ e2*7/4 ~ e2*4/2 g2*3/2 \divisioMinima
fis2*3/2 g2*3/2 ~ g2*4/2 \divisioMinima
fis2*3/2 g2*3/2 ~ g2 ~ g2 \divisioMinima
a2*9/4 ~ a2 g2*4/2 ~ g2 fis2 g2*3/2 ~ g4 \finalis
}

bassMusic = {
r2*5/2 d'2*3/4 c'2*4/2 b2 g2*7/4 a2*4/2 e2*4/2 ~ e2 ~ e4 \finalis
r2 fis2*3/2 e2*3/2 b,2*5/4 ~ b,2*4/2 \divisioMinima
e2*4/2 ~ e2*3/2 ~ e4 e2*5/2 a2*3/4 ~ a2*4/2 e2 ~ e2*7/4 ~ e2*4/2 \shiftRight a2 g2 fis2 e4 \finalis
e2*3/2 ~ e2*4/2 ~ e2*5/4 b,2*3/2 ~ b,2*3/2 \divisioMinima
cis2*4/2 d2*3/2 e2 ~ e2 ~ e2 ~ e4 \finalis
b,2 ~ b,2*3/2 g,2*3/2 b,2*5/4 ~ b,2 ~ b,2 \divisioMinima
g2*4/2 fis2*3/2 e4 \finalis
e2*3/2 ~ e2*4/2 ~ e2*5/4 b,2*3/2 ~ b,2*3/2 \divisioMinima
d2*4/2 ~ d2*3/2 e2*4/2 ~ e2 ~ e4 g2 ~ g2 ~ g2*3/2 ~ g2*3/4 ~ g2 ~ g2 ~ g2*3/2 fis2 e2 ~ e2*7/4 ~ e2*9/4 fis2*3/2 \shiftRight g2*7/2 \divisioMinima
fis2*9/4 e2 b,2*4/2 e2*4/2 ~ e2*3/2 ~ e4 \finalis
g2*6/2 fis2 e2*3/4 ~ e2*5/4 \shiftRight b2*4/2 
g2*4/2 fis2*3/2 e4 a,2 b,2*5/2 e2*11/4 ~ e2*3/2 ~ e2 ~ e2 d2*7/4 c2*4/2 ~ c2*3/2 ~ \divisioMinima
c2*3/2 b,2*3/2 e2*4/2 \divisioMinima
d2*3/2 \shiftRight g2*3/2 e2 ~ e2 \divisioMinima
d2*9/4 b,2 ~ b,2*4/2 d2 ~ d2 fis2*3/2 e4 \finalis
}

voiceLines = {
\voiceLineStyle


s2*241/4
\allowVoiceLineBreak
\voiceLine "down" "down" g2*4/2 g2*1/2


s2*41/2
\allowVoiceLineBreak
\voiceLine "down" "up" c'2*2/2 c'2*1/2


s2*89/4
\allowVoiceLineBreak
\voiceLine "down" "down" g2*6/2 g2*1/2


s2*1/2
\allowVoiceLineBreak
\voiceLine "up" "down" b4. b2*1/2


s2*11/4
\allowVoiceLineBreak
\voiceLine "down" "down" g2*4/2 g2*1/2


s2*131/4
\allowVoiceLineBreak
\offsetVoiceLineY
\voiceLine "down" "down" fis2*2/2 fis2*1/2


}

\score{
  <<
    \new Lyrics
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
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
    \context Lyrics {
      \lyricsto chant {
      \chantText
    }
    }
  >>
  \layout{
  }
  
}
