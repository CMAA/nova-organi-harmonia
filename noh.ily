%
% Styles shared by all Nova Organi Harmonia scores
%
\version  "2.18.0"

% Breathing marks borrowed from gregorian.ly
quarterBar = {
  \once \override BreathingSign.stencil = #ly:breathing-sign::divisio-minima
  \once \override BreathingSign.minimum-X-extent = #'(-1.0 . 0.0)
  \once \override BreathingSign.minimum-Y-extent = #'(-2.5 . 2.5)

  \breathe
}

halfBar = {
  \once \override BreathingSign.stencil = #ly:breathing-sign::divisio-maior
  \once \override BreathingSign.Y-offset = #0
  \once \override BreathingSign.minimum-X-extent = #'(-1.0 . 0.0)
  \once \override BreathingSign.minimum-Y-extent = #'(-2.5 . 2.5)

  \breathe
}

% Voice leading lines are drawn as dashed glissandi
voiceLineStyle = {
  \override Glissando #'style = #'dashed-line
  \override NoteColumn #'force-hshift = #0
  \override NoteHead #'transparent = ##t
}

voiceLine =
#(define-music-function
  (parser location staffA staffB noteA noteB)
  (string? string? ly:music? ly:music?)
  #{
    \change Staff = #staffA <>\glissando #noteA
    \change Staff = #staffB #noteB
  #})

% Additional macros
doubleBar   = { \bar "||" }
forceBreak  = { \bar "" \break }
shiftRight  = { \once \override NoteColumn #'force-hshift = #0.9 }
shiftRightB = { \once \override NoteColumn #'force-hshift = #1.6 }

% Default layout
\layout {
  indent = 1.7\cm
  ragged-last = ##f
  \context {
    \Staff
    \remove "Time_signature_engraver"
    \omit Flag
    \omit Stem
  }
  \context {
    \Lyrics
    \with { alignAboveContext = "up" }
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing #'minimum-distance = #4
    \override LyricText #'font-size = #-1
  }
}

% Default paper
\paper {
  #(set-paper-size "letter")
  line-width    = 6.5\in
  top-margin    = 0.4\in
  bottom-margin = 0.4\in
  markup-system-spacing #'padding = #2
  top-system-spacing    #'padding = #4
}
