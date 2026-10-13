\version "2.22.0"
\include "gregorian.ly"
\include "noh2.ily"

%Proofed 3/15

global = {
  \cadenzaOn
  \override Glissando #'thickness = #2.0
  \set tieWaitForNote = ##t
}

chantText = \lyricmode {
  E -- go som. Be -- ne -- dí -- ctus Dó -- mi -- nus
  De -- us Is -- ra -- ël: \set stanza = "*"
  qui -- a vi -- si -- tá -- vit et fe -- cit re -- dem -- pti -- ó -- nem ple -- bis su -- ae.
  Et e -- ré -- xit cor -- nu sa -- lú -- tis no -- bis, \set stanza = "*"
  in do -- mo Da -- vid pú -- e -- ri su -- i.
}

chantMusic = \relative a' {
  \tieDown
  \key a \major
  a4 gis( a) fis \finalis
  e fis a a a a a a a a a b \divisioMaxima \bar "" \break
  a a a a a a a a a a a a a a a gis e fis \finalis \bar "" \break
  e fis a a a a a a a b a \divisioMaior
  a a a a a a a gis e fis \finalis
}

altoMusic = \relative cis' {
  cis2*3/2 cis4 cis2 e2*5/2~ e2*2 d4
  cis2*7/2 d2*5/2~ d2 e cis4~ cis
  cis2~ cis2~ cis2*5/2~ cis2
  e2*5/2~ e2*3/2 cis2
}

tenorMusic = \relative a {
  \key a \major
  s4 a2*3/2 \finalis a2~ a2*5/2 fis2*2~ fis4 \divisioMaxima
  fis2*7/2~ fis2*5/2 b2~ b2~ b4 a \finalis
  a2~ a2~ a2*5/2~ a2 \divisioMaior
  a2*5/2 b2*3/2~ b4 a4 \finalis
}

bassMusic = \relative fis {
  fis4~ fis2*3/2
  s2 cis2*5/2~ cis2*2 b4
  fis2*7/2 b2*5/2~ b2 cis fis4~ fis
  s2*2 gis2*5/2 fis2 cis2*5/2~ cis2*3/2 fis2
}

voiceLines = {
  \voiceLineStyle

  % Manually add line break
  %s2
  %\allowVoiceLineBreak
  %\voiceLine "down" "down" a2*3/2 a2*1/2
}

\score{
  <<
    \new Lyrics
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "II."
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
}
