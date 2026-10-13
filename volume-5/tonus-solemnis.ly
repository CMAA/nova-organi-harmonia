\version "2.22.0"
\include "gregorian.ly"
\include "noh2.ily"

global = {
  \cadenzaOn
  \override Glissando #'thickness = #2.0
  \set tieWaitForNote = ##t
}

%\header {
%  title = \markup \center-column {"Agnus Dei I." \vspace #1 }
%  tagline = ""
%  composer = ""
%}

%\paper {
%  #(include-special-characters)
%  oddHeaderMarkup = \markup \fill-line {
%    \line {}
%    \center-column {
%      \on-the-fly #first-page     " "
%      \on-the-fly #not-first-page ""
%    }
%    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
%  }
%  evenHeaderMarkup = \markup \fill-line {
%    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
%    \center-column { "" }
%    \line {}
%  }
%}

chantText = \lyricmode {
  \set stanza = "Ꝟ." Per ó -- mni -- a sǽ -- cu  -- la sæ -- cu -- lo -- rum.
  \set stanza = "℟." A -- men.
  \once \override LyricText.self-alignment-X = #LEFT
  \set stanza = "Ꝟ." "Dóminus vobíscum." 
  \once \override LyricText.self-alignment-X = #CENTER
  \set stanza = "℟." Et cum spí -- ri -- tu tu -- o.
  \once \override LyricText.self-alignment-X = #LEFT
  \set stanza = "Ꝟ." "Sursum corda." 
  \once \override LyricText.self-alignment-X = #CENTER
  \set stanza = "℟." Ha -- bé -- mus ad Dó -- mi -- num.
  \once \override LyricText.self-alignment-X = #LEFT
  \set stanza = "Ꝟ." "Grátias agámus Dómino Deo nostro." 
  \once \override LyricText.self-alignment-X = #CENTER
  \set stanza = "℟." Di -- gnum et ju -- stum est.
}

chantMusic = {
  \tieDown
  \key e \minor
  
  b4 d' e' e' fis' e' e' d' e' e'( d') d' \finalis
  d'4 d'( e') \finalis \bar "" \break
  \once \override NoteHead.transparent = ##t d'2 \finalis
  d'4 e' fis' d' e' fis'( e') e' \finalis \bar "" \break
  \once \override NoteHead.transparent = ##t d'2 \finalis
  fis'4 e'( \quil fis' g') fis' fis' e'( fis') e' e'( d') \finalis \bar "" \break
  \once \override NoteHead.transparent = ##t d'2 \finalis
  e'4( \quil fis' g') fis' fis' e'( fis') e' e'( d') \finalis \bar "" \break
}

altoMusic = {
  s2*6 b4~ b2
  s2 d'2~ d'2*3/2 b2~ b4
  s2 d'4 b2*3/2 d'2 b2*3/2~ b2
  s2 b2*3/2 d'2 c'2*3/2 a2
}

tenorMusic = {
  \key e \minor
  
  s2*6 \finalis fis4 g2 \finalis
  s2 \finalis fis2 a2*3/2~ a2 g4 \finalis
  s2 \finalis b4 g2*3/2 a2 g2*3/2 fis2 \finalis
  s2 \finalis g2*3/2 a2 g2*3/2~ g4 fis \finalis
}

bassMusic = {
  s2*6 b,4 e2
  s2 b,2~ b,2*3/2 e2~ e4
  s2 b,4 e2*3/2 d2 e2*3/2 b,2
  s2 e2*3/2 d2 a,2*3/2 d2
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
        \bold {1}
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
