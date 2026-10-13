\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.11
%(volume.page)

% Proofed 2/13

global = {
 \key e \phrygian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
Ký -- ri -- e, _ _ 
\set stanza = " * " _ _ e -- lé -- i -- son. 
Ký -- ri -- e, _ _ _ _ e -- lé -- i -- son. 
Ký -- ri -- e, _ _ _ _ e -- lé -- i -- son. 
Chri -- ste, _ _ _ _ _ _ _ _ _ e -- lé -- i -- son. 
Chri -- ste, _ _ _ _ _ _ _ _ _ e -- lé -- i -- son. 
Chri -- ste, _ _ _ _ _ _ _ _ _ e -- lé -- i -- son. 
Ký -- ri -- e, _ _ _ _ e -- lé -- i -- son. 
Ký -- ri -- e, _ _ _ _ e -- lé -- i -- son. 
Ký -- ri -- e _ 
\set stanza = " * " _ _ _ 
\set stanza = " ** "  _ _ e -- lé -- i -- son. }

chantMusic = {
\tieDown   g'4 a'4 ( b'4) b'4. a'4 ( c''4 b'4 a'4 g'4.) a'4 ( a'4 g'4 f'4 e'4 d'4) \divisioMinima
 d'4 ( a'4) ~ a'4 ( g'4) a'4 ( c''4 b'4 a'4 g'4) f'4 g'4 ( a'4 g'4) g'4 e'4 \finalis
 \forceBreak
 g'4 a'4 ( b'4) b'4. a'4 ( c''4 b'4 a'4 g'4.) a'4 ( a'4 g'4 f'4 e'4 d'4) \divisioMinima
 d'4 ( a'4) ~ a'4 ( g'4) a'4 ( c''4 b'4 a'4 g'4) f'4 g'4 ( a'4 g'4) g'4 e'4 \finalis
 \forceBreak
 g'4 a'4 ( b'4) b'4. a'4 ( c''4 b'4 a'4 g'4.) a'4 ( a'4 g'4 f'4 e'4 d'4) \divisioMinima
 d'4 ( a'4) ~ a'4 ( g'4) a'4 ( c''4 b'4 a'4 g'4) f'4 g'4 ( a'4 g'4) g'4 e'4 \finalis
 \forceBreak
 e'4 ( d'4) g'4 ( a'4) c''4. c''4 ( c''4 b'4 a'4 g'4) a'4 ( b'4 b'4) \divisioMinima
 e'4 ( g'4 a'4) c''4. c''4 ( c''4 b'4 a'4 g'4.) a'4 ( a'4 g'4 f'4 e'4 d'4) \divisioMinima
 \forceBreak
 d'4 ( a'4) ~ a'4 ( g'4) a'4 ( c''4 b'4 a'4 g'4) f'4 g'4 ( a'4 g'4) g'4 e'4 \finalis
 e'4 ( d'4) g'4 ( a'4) c''4. c''4 ( c''4 b'4 a'4 g'4) a'4 ( b'4 b'4) \divisioMinima
 \forceBreak
 e'4 ( g'4 a'4) c''4. c''4 ( c''4 b'4 a'4 g'4.) a'4 ( a'4 g'4 f'4 e'4 d'4) \divisioMinima
 d'4 ( a'4) ~ a'4 ( g'4) a'4 ( c''4 b'4 a'4 g'4) f'4 g'4 ( a'4 g'4) g'4 e'4 \finalis
 \forceBreak
 e'4 ( d'4) g'4 ( a'4) c''4. c''4 ( c''4 b'4 a'4 g'4) a'4 ( b'4 b'4) \divisioMinima
 e'4 ( g'4 a'4) c''4. c''4 ( c''4 b'4 a'4 g'4.) a'4 ( a'4 g'4 f'4 e'4 d'4) \divisioMinima
 \forceBreak
 d'4 ( a'4) ~ a'4 ( g'4) a'4 ( c''4 b'4 a'4 g'4) f'4 g'4 ( a'4 g'4) g'4 e'4 \finalis
 c''4 ( b'4) c''4 ( d''4) d''4.
 b'4 ( d''4 c''4 b'4 a'4 g'4.) a'4 ( a'4 g'4 f'4 e'4 d'4) \divisioMinima \forceBreak
 d'4 ( a'4) ~ a'4 ( g'4) a'4 ( c''4 b'4 a'4 g'4) f'4 g'4 ( a'4 g'4) g'4 e'4 \finalis
 c''4 ( b'4) c''4 ( d''4) d''4. b'4 ( d''4 c''4 b'4 a'4 g'4.) a'4 ( a'4 g'4 f'4 e'4 d'4) \divisioMinima \forceBreak
 d'4 ( a'4) ~ a'4 ( g'4) a'4 ( c''4 b'4 a'4 g'4) f'4 g'4 ( a'4 g'4) g'4 e'4 \finalis
 c''4 ( b'4) c''4 ( d''4) d''4. b'4 ( d''4 c''4 b'4 a'4 g'4) \divisioMinima \forceBreak
 b'4 ( c''4 d''4.) b'4 ( d''4 c''4 b'4 a'4 g'4.)
 a'4 ( a'4 g'4 f'4 e'4 d'4) \divisioMinima
 d'4 ( a'4) ~ a'4 ( g'4) a'4 ( c''4 b'4 a'4 g'4) f'4 g'4 ( a'4 g'4) g'4 e'4 \finalis

}

altoMusic = {
g'4 ~ g'2 ~ g'2*3/4 e'2*4/2 ~ e'2*3/4 ~ e'2*3/2 c'2 -\tweak Glissando.Y-offset #-0.8 \glissando d'4 ~ \divisioMinima
d'4 ~ d'2*3/2 e'2*4/2 d'2 ~ d'2*4/2 b4 \finalis
r4 e'2 ~ e'2*3/4 ~ e'2*4/2 d'2*3/4 c'2*3/2 ~ c'2 a4 \glissando \divisioMinima
d'4 f'2*3/2 e'2*4/2 d'2 ~ d'2*4/2 b4 \finalis
g'4 ~ g'2 ~ g'2*3/4 e'2*4/2 ~ e'2*3/4 ~ e'2*3/2 c'2 -\tweak Glissando.Y-offset #-0.8 \glissando d'4 ~ \divisioMinima
d'4 ~ d'2*3/2 e'2*4/2 d'2 ~ d'2*4/2 b4 \finalis
r4 d'4 ~ d'2 c'2*3/4 e'2 ~ e'2*3/2 ~ e'2*3/2 ~ \divisioMinima
e'4 d'2 c'2*3/4 e'2 ~ e'2 ~ e'2*3/4 c'2*3/2 ~ c'2 \allowVoiceLineBreak a4
-\tweak Glissando.Y-offset #-0.8 \glissando
\divisioMinima
d'4 ~ d'2*3/2 c'2*4/2 ~ c'2 ~ c'2 b2 c'4 \finalis
r4 d'4 ~ d'2 e'2*3/4 g'2*5/2 ~ g'2*3/2 \divisioMinima
e'4 ~ e'2 ~ e'2*3/4 g'2 d'2 ~ d'2*3/4 e'2*3/2 c'2 -\tweak Glissando.Y-offset #-0.8 \glissando d'4 ~ \divisioMinima
d'4 e'2*3/2 ~ e'2*4/2 d'2 ~ d'2*4/2 c'4 \finalis
r4 d'4 ~ d'2 c'2*3/4 e'2 ~ e'2*3/2 ~ e'2*3/2 ~ \divisioMinima
e'4 d'2 c'2*3/4 e'2 ~ e'2 ~ e'2*3/4 c'2*3/2 ~ c'2 \allowVoiceLineBreak a4
-\tweak Glissando.Y-offset #-0.8 \glissando
\divisioMinima
d'4 ~ d'2*3/2 c'2*4/2 ~ c'2 ~ c'2 b2 c'4 \finalis
g'2*4/2 ~ g'2*3/4 e'2*3/2 ~ e'2 ~ e'2*3/4 c'2*3/2 c'2 -\tweak Glissando.Y-offset #-0.8 \glissando d'4 \divisioMinima
r4 f'2*3/2 e'2 ~ e'2 d'2 ~ d'2 ~ d'2 c'4 \finalis
g'2*4/2 d'2*3/4 e'2*3/2 ~ e'2 ~ e'2*3/4 c'2*3/2 ~ c'2 \allowVoiceLineBreak a4
-\tweak Glissando.Y-offset #-0.8 \glissando
\divisioMinima
d'4 ~ d'2*3/2 c'2*4/2 ~ c'2 ~ c'2 b2 c'4 \finalis
e'2*4/2 g'2*3/4 ~ g'2*3/2 ~ g'2 ~ g'4 ~ \divisioMinima
g'2 ~ g'2*3/4 e'2*3/2 ~ e'2 ~ e'2*3/4 c'2*3/2 ~ c'2 -\tweak Glissando.Y-offset #-0.8 \glissando d'4 \divisioMinima
d'4 ~ d'2*3/2 e'2 ~ e'2 d'2 ~ d'2 ~ d'2 b4 \finalis
}

tenorMusic = {
r4 e'2 ~ e'2*3/4 c'2*4/2 ~ c'2*3/4 ~ <c' a>2*3/2 ~ a2 ~ a4 ~ \divisioMinima
a4 f2*3/2 e2*4/2 a2 g2*4/2 ~ g4 \finalis
r4 g2 ~ g2*3/4 e2*4/2 ~ e2*3/4 f2*3/2 g2 f4 ~ \divisioMinima
f4 a2*3/2 ~ a2*4/2 ~ a2 g2*4/2 ~ g4 \finalis
r4 e'2 ~ e'2*3/4 c'2*4/2 ~ c'2*3/4 ~ <c' a>2*3/2 ~ a2 ~ a4 ~ \divisioMinima
a4 f2*3/2 e2*4/2 a2 g2*4/2 ~ g4 \finalis
g2 e2 ~ e2*3/4 a2 ~ a2*3/2 g2*3/2 ~ \divisioMinima
g4 e2 ~ e2*3/4 a2 g2 b2*3/4 a2*3/2 g2 f4 ~ \divisioMinima
f4 e2*3/2 ~ e2*4/2 f2 d2 ~ d2 a4 \finalis
c'2 e'2 c'2*3/4 ~ c'2*5/2 d'2*3/2 \divisioMinima
c'4 ~ c'2 ~ c'2*3/4 ~ c'2 ~ c'2 b2*3/4 \shiftRight c'2*3/2 a2 ~ a4 \divisioMinima
d'4 ~ d'2*3/2 c'2*4/2 ~ c'2 b2*4/2 c'4 \finalis
g2 e2 ~ e2*3/4 a2 ~ a2*3/2 g2*3/2 ~ \divisioMinima
g4 e2 ~ e2*3/4 a2 g2 b2*3/4 a2*3/2 g2 f4 ~ \divisioMinima
f4 e2*3/2 ~ e2*4/2 f2 d2 ~ d2 a4 \finalis
c'2*4/2 b2*3/4 d'2*3/2 c'2 b2*3/4 a2*3/2 g2 a4 ~ \divisioMinima
a4 ~ a2*3/2 ~ a2 ~ a2 ~ a2 g2 ~ g2 ~ g4 \finalis
g2*4/2 ~ g2*3/4 ~ g2*3/2 c'2 b2*3/4 a2*3/2 g2 f4 ~ \divisioMinima
f4 e2*3/2 ~ e2*4/2 d2 ~ d2 g2 ~ g4 \finalis
c'2*4/2 b2*3/4 d'2*3/2 c'2 b4 \divisioMinima
e'2 d'2*3/4 ~ d'2*3/2 c'2 b2*3/4 a2*3/2 g2 a4 ~ \divisioMinima
a4 f2*3/2 e2 ~ e2 a2 g2 ~ g2 ~ g4 \finalis
}

bassMusic = {
r2*3/2 d'2*11/4 b2*3/4 a2*3/2 g2 f4 ~ \divisioMinima
f4 d2*3/2 c2*4/2 ~ c2 b,2*4/2 e4 \finalis
e4 ~ e2 d2*3/4 c2*4/2 b,2*3/4 a,2*3/2 ~ a,2 d4 ~ \divisioMinima
d4 ~ d2*3/2 c2*4/2 ~ c2 b,2*4/2 e4 \finalis
r2*3/2 d'2*3/4 r2*4/2 b2*3/4 a2*3/2 g2 f4 ~ \divisioMinima
f4 d2*3/2 c2*4/2 ~ c2 b,2*4/2 e4 \finalis
c2 b,2 a,2*3/4 ~ a,2 c2*3/2 e2*3/2 \divisioMinima
c4 b,2 a,2*3/4 ~ a,2 e2 ~ e2*3/4 f2*3/2 c2 d4 ~ \divisioMinima
d4 a,2*3/2 ~ a,2*4/2 ~ a,2 ~ a,2 ~ a,2 ~ a,4 \finalis
r2 b2 a2*3/4 e2*5/2 g2*3/2 \divisioMinima
r4 b2 a2*3/4 e2 g2 ~ g2*3/4 c'2*3/2 r2 f4 ~ \divisioMinima
f4 a2*3/2 ~ a2*4/2 ~ a2 ~ a2*4/2 ~ a4 \finalis
c2 b,2 a,2*3/4 ~ a,2 c2*3/2 e2*3/2 \divisioMinima
c4 b,2 a,2*3/4 ~ a,2 e2 ~ e2*3/4 f2*3/2 c2 d4 ~ \divisioMinima
d4 a,2*3/2 ~ a,2*4/2 ~ a,2 ~ a,2 ~ a,2 ~ a,4 \finalis
e2*4/2 g2*3/4 a2*3/2 ~ a2 e2*3/4 f2*3/2 ~ f2 ~ f4 ~ \divisioMinima
f4 d2*3/2 ~ d2 c2 ~ c2 ~ c2 b,2 c4 \finalis
e2*4/2 b,2*3/4 c2*3/2 ~ c2 e2*3/4 f2*3/2 c2 d4 ~ \divisioMinima
d4 a,2*3/2 ~ a,2*4/2 ~ a,2 g,2 ~ g,2 c4 \finalis
a2*4/2 g2*3/4 ~ g2*3/2 ~ g2 ~ g4 ~ \divisioMinima
g2 b2*3/4 a2*3/2 ~ a2 e2*3/4 f2*3/2 ~ f2 ~ f4 ~ \divisioMinima
f4 d2*3/2 ~ d2 c2 ~ c2 ~ c2 b,2 e4 \finalis
}

voiceLines = {
\voiceLineStyle


s2*3/2
\allowVoiceLineBreak
\voiceLine "down" "up" e'4*3/2 e'2*1/2


s2*9/4
\allowVoiceLineBreak
\voiceLine "down" "up" c'2*3/2 c'2*1/2


s2*2/2
\allowVoiceLineBreak
\offsetVoiceLineY
\voiceLine "down" "down" f2*1/2 f2*1/2


s2*47/2
\allowVoiceLineBreak
\voiceLine "down" "up" e'4*3/2 e'2*1/2


s2*9/4
\allowVoiceLineBreak
\voiceLine "down" "up" c'2*3/2 c'2*1/2


s2*2/2
\allowVoiceLineBreak
\offsetVoiceLineY
\voiceLine "down" "down" f2*1/2 f2*1/2


s2*240/2
\allowVoiceLineBreak
\offsetVoiceLineY
\voiceLine "down" "down" f2*1/2 f2*1/2


}

\score{
  <<
    \new Lyrics
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "III."
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
