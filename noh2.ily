\version  "2.18.0"


divisioMinima = {
  \once \override BreathingSign  #'stencil = #ly:breathing-sign::divisio-minima

  % Workaround: add padding.  Correct fix would be spacing engine handle this.
  \once \override BreathingSign.minimum-X-extent = #'(-1.0 . 0.0)
  \once \override BreathingSign.minimum-Y-extent = #'(-2.5 . 2.5)
  %\once \override \barAlways = ##t

  \breathe \bar ""
}
divisioMaior = {
  \once \override BreathingSign  #'stencil = #ly:breathing-sign::divisio-maior
  \once \override BreathingSign  #'Y-offset = #0

  % Workaround: add padding.  Correct fix would be spacing engine handle this.
  \once \override BreathingSign.minimum-X-extent = #'(-1.0 . 0.0)
  \once \override BreathingSign.minimum-Y-extent = #'(-2.5 . 2.5)
  %\once \override \barAlways = ##t

  \breathe \bar ""
}
divisioMaxima = {
  \once \override BreathingSign  #'stencil = #ly:breathing-sign::divisio-maxima
  \once \override BreathingSign  #'Y-offset = #0
%
%  % Workaround: add padding.  Correct fix would be spacing engine handle this.
  \once \override BreathingSign.minimum-X-extent = #'(-1.0 . 0.0)
  \once \override BreathingSign.minimum-Y-extent = #'(-2.5 . 2.5)
%  %\once \override \barAlways = ##t
%
%  \breathe \bar ""
%  \breathe \bar "|"
\bar "|"
}

finalis = {
  \once \override BreathingSign  #'stencil = #ly:breathing-sign::finalis
  \once \override BreathingSign  #'Y-offset = #0
%
%  % Workaround: add padding.  Correct fix would be spacing engine handle this.
  \once \override BreathingSign.minimum-X-extent = #'(-1.0 . 0.0)
  \once \override BreathingSign.minimum-Y-extent = #'(-2.5 . 2.5)
%  \once \override BreathingSign  #'extra-spacing-height = #'(-0.5 . 0.5)
%
%  \breathe
  \bar "||"
}

%
% Voice leading lines are drawn as dotted glissandi
%
voiceLineStyle = {
  \override Glissando #'style = #'dotted-line
  \override Glissando #'thickness = #2.0
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

allowVoiceLineBreak = {
  \once \override Glissando.breakable = ##t
  \once \override Glissando.after-line-breaking = ##t
}

offsetVoiceLineY = { \once \overrideProperty Glissando.Y-offset #0.2 }



quarterBar = { \divisioMinima }
halfBar = { \divisioMaior }
singleBar = { \divisioMaxima }
doubleBar = { \finalis }
forceBreak  = { \bar "" \break }
shiftRight  = { \once \override NoteColumn #'force-hshift = #0.9 }
shiftRightB = { \once \override NoteColumn #'force-hshift = #1.6 }




%
% Default layout
%
\layout {
  indent = 1.7\cm
  ragged-last = ##f
  \context {
    \Staff
%    \with { \staffSize = #-3 }
    %\override \StaffSize = #17
    %fontSize = #-2
    %\override StaffSymbol.staff-space = #(magstep -2)
    %\override StaffSymbol.thickness = #(magstep -2)
    \remove "Time_signature_engraver"
    \omit Flag
    \omit Stem
    \accidentalStyle forget
    \override Rest #'transparent = ##t
  }
  \context {
    \Lyrics
    \with { alignAboveContext = "up" }
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing #'minimum-distance = #0
    %\override LyricText #'font-size = #-2
    \override LyricSpace.minimum-distance = #2.0
    \override SpacingSpanner #'shortest-duration-space = #0
  }
}

%
% Default paper
%
\paper {
  #(set-paper-size "letter")
  line-width = 6.5\in
}
