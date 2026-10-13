\version "2.22.0"

divisioMinima = {
  \once \override BreathingSign.stencil = #ly:breathing-sign::divisio-minima

  % Workaround: add padding.  Correct fix would be spacing engine handle this.
  \once \override BreathingSign.minimum-X-extent = #'(-1.0 . 0.0)
  \once \override BreathingSign.minimum-Y-extent = #'(-0.5 . 0.5)

  \breathe
}
divisioMaior = {
  \once \override BreathingSign.stencil = #ly:breathing-sign::divisio-maior
  \once \override BreathingSign.Y-offset = #0

  % Workaround: add padding.  Correct fix would be spacing engine handle this.
  \once \override BreathingSign.minimum-X-extent = #'(-1.0 . 0.0)
  \once \override BreathingSign.minimum-Y-extent = #'(-2.5 . 2.5)

  \breathe
}
divisioMaxima = {
  \once \override BreathingSign.stencil = #ly:breathing-sign::divisio-maxima
  \once \override BreathingSign.Y-offset = #0

  % Workaround: add padding.  Correct fix would be spacing engine handle this.
  \once \override BreathingSign.minimum-X-extent = #'(-1.0 . 0.0)
  \once \override BreathingSign.minimum-Y-extent = #'(-2.5 . 2.5)

  \breathe
}
finalis = {
  \once \override BreathingSign.stencil = #ly:breathing-sign::finalis
  \once \override BreathingSign.Y-offset = #0

  % Workaround: add padding.  Correct fix would be spacing engine handle this.
  \once \override BreathingSign.minimum-X-extent = #'(-1.0 . 0.0)
  \once \override BreathingSign.minimum-Y-extent = #'(-2.5 . 2.5)

  \breathe
}

%
% Voice leading lines are drawn as dotted glissandi
%
voiceLineStyle = {
  \override Glissando.style = #'dotted-line
  \override Glissando.thickness = #2.0
  \override NoteColumn.force-hshift = #0
  \override NoteHead.transparent = ##t
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
shiftRight  = { \once \override NoteColumn.force-hshift = #0.9 }
shiftRightB = { \once \override NoteColumn.force-hshift = #1.6 }
glisDown = { \once \override Glissando.Y-offset = #-0.8 }

#(ly:set-option 'compile-scheme-code)
#(debug-enable 'backtrace)
% Engraver built to automatically space slurred note groups:
% still very work in progress.
%
% TODO: Refine spacing logic
%
% Logic: Spaces note columns 0.8 units inside of slurs, 5 units immediately after slurs,
% and 3 units for syllables of only one note
%
% Relies on the "\consists" inside of the layout block and manually setting \new Voice = "chant" for the voice controlling slurs
#(define lyrics-space '())
%#(define (Slur_spacing_engraver context)
%   (let ((slur-on #f)
%         (slur #f)
%         (tie #f)
%         (columns '()))
%     (make-engraver
%       (listeners
%         ((slur-event engraver event)
%            (if slur-on (set! slur #t))
%            (if (not slur-on) (set! slur-on #t) (set! slur-on #f)))
%         ((tie-event engraver event)
%            (set! tie event)))
%       (acknowledgers
%         ((note-head-interface engraver grob source-engraver)
%            (set! columns (cons grob columns)))
%         ((lyric-syllable-interface engraver grob source-engraver)
%            (set! lyrics-space (cons (cdr (ly:grob-property grob 'X-extent)) lyrics-space))
%            (ly:grob-set-property! grob 'X-extent '(0 . 1.35)))
%         ((lyric-hyphen-interface engraver grob source-engraver)
%            (ly:grob-set-property! grob 'minimum-distance (if (> (car lyrics-space) 2) (+ 2 (car lyrics-space)) 0))))
%       ((process-acknowledged engraver)
%        (if columns (for-each
%	  (lambda (column)
%              (let ((text-space (if (null? lyrics-space) 2 (+ 1 (car lyrics-space)))))
%              (define space (* (if (null? (ly:grob-object column 'dot)) 1 1.5) (+ (if slur-on 1 text-space) (if slur (if tie -1 1) 0))))
%              (if (equal? (ly:context-id context) "chant")
%                        (ly:grob-set-property! (ly:grob-parent column 1) 'X-extent
%                        (cons space space))
%              )
%              (if (and (not slur-on) (null? lyrics-space)) (set! lyrics-space (cdr lyrics-space)))
%              )
%            )
%           columns
%          )
%        )
%       )
%       ((stop-translation-timestep engraver)
%          (set! slur #f)
%          (set! tie #f)
%          (set! columns '())))))
#(set-object-property! 'space-subtracted 'backend-type? boolean?)
#(set-object-property! 'already-spaced 'backend-type? boolean?)
#(define (Slur_spacing_engraver context)
   (let ((slur-on #f)
         (slur #f)
         (in-word #f)
         (tie #f)
         (columns '()))
     (make-engraver
       (listeners
         ((slur-event engraver event)
            (if slur-on (set! slur #t))
            (if (not slur-on) (set! slur-on #t) (set! slur-on #f)))
         ((tie-event engraver event)
            (set! tie event)))
       (acknowledgers
         ((note-head-interface engraver grob source-engraver)
            (if (equal? (ly:context-id context) "chant") (set! columns (cons grob columns))))
         ((lyric-syllable-interface engraver grob source-engraver)
            (set! lyrics-space (cons (cdr (ly:grob-property grob 'X-extent)) lyrics-space))
            (ly:grob-set-property! grob 'X-extent '(0 . 1)))
         ((lyric-hyphen-interface engraver grob source-engraver)
            (ly:grob-set-property! grob 'extra-offset (cons (- (/ (car lyrics-space) 2) .4) 0))
            ))
       ((process-acknowledged engraver)
        (if columns (for-each
            (lambda (column)
              (let ((text-space (if (pair? lyrics-space) (+ 1 (car lyrics-space)) 2)))
              (define space (* (if (null? (ly:grob-object column 'dot)) 1 1.5) (+ (if slur-on 1.5 (max 2.5 text-space)) (if slur (if tie -1 1) 0))))
              (define minimum-space (if (and slur tie) (+ space 2) (if slur-on space (+ space 5))))
              (if (and (equal? (ly:context-id context) "chant") (null? (ly:grob-property (ly:grob-parent column 1) 'space-subtracted)))
                  (set! lyrics-space (if (pair? lyrics-space) (cons (- (car lyrics-space) space) (if (pair? lyrics-space) (cdr lyrics-space) '())))))
              (if (and (equal? (ly:context-id context) "chant") (null? (ly:grob-property (ly:grob-parent column 1) 'space-subtracted)))
                  (ly:grob-set-property! (ly:grob-parent column 1) 'space-subtracted '#t))
              (if (and (equal? (ly:context-id context) "chant") (null? (ly:grob-property (ly:grob-parent column 1) 'already-spaced)))
                        (ly:grob-set-property! (ly:grob-parent column 1) 'X-extent
                        (cons space minimum-space)))
              (if (and (equal? (ly:context-id context) "chant") (null? (ly:grob-property (ly:grob-parent column 1) 'already-spaced)))
                        (ly:grob-set-property! (ly:grob-parent column 1) 'already-spaced '#t))
              (if (and (not slur-on) (not (null? lyrics-space))) (set! lyrics-space (if (pair? lyrics-space) (cdr lyrics-space) '())))
              )
            )
           columns
          )
        )
       )
       ((stop-translation-timestep engraver)
          (set! slur #f)
          (set! tie #f)
          (set! columns '())))))

%(text-space (+ (if (null? lyrics-left) 2 (if (> (string-length (ly:grob-property (car lyrics-left) 'text)) 2) 3.5 2))
%                                   (if (member (string-ref (ly:grob-property (car lyrics-left) 'text) (- (string-length (ly:grob-property (car lyrics-left) 'text)) 1)) '("," "." ";" ":" "!" "?")) 1 0)))
%
%(if slur-on (ly:grob-set-property! (ly:grob-parent column 1) 'X-extent '(0.8 . 0.8) )
%                   (if slur
%                       (if tie (ly:grob-set-property! (ly:grob-parent column 1) 'X-extent '(2 . 2) )
%                           (ly:grob-set-property! (ly:grob-parent column 1) 'X-extent '(5 . 5) )
%                           )
%                               (ly:grob-set-property! (ly:grob-parent column 1) 'X-extent '(3 . 3) )
%                   )
%                )

% Manual spacing directives. These don't seem to work when the above engraver is enabled
sa = {\once\override NoteColumn.X-extent = #'(1 . 1)}
sb = {\once\override NoteColumn.X-extent = #'(2 . 2)}
sc = {\once\override NoteColumn.X-extent = #'(3 . 3)}
sd = {\once\override NoteColumn.X-extent = #'(4 . 4)}
se = {\once\override NoteColumn.X-extent = #'(5 . 5)}
quil  = {\once\override NoteHead.stencil = #ly:text-interface::print \once\override NoteHead.text = \markup{\fontsize #1 \musicglyph "scripts.prall"}}

% Layout similar to all scores
\layout {
  % Set basic staff size
  #(layout-set-staff-size 18)
  ragged-right = ##t
    indent = #10
  \context {
    \Staff
    \remove "Time_signature_engraver"
    \override Slur.direction = #UP
    \hide Stem
    \accidentalStyle forget
    \override PaperColumn.allow-loose-spacing = ##f
  }
  \context {
    \GrandStaff
    \override StaffGrouper.staff-staff-spacing =
    #'((basic-distance . 16)
       (minimum-distance . 12)
       (padding . 1)
       (stretchability . 1))
  }
  \context {
    \Voice
    
    % This is what makes the custom engraver work
    \consists #Slur_spacing_engraver
    
    \override Stem.length = #0
    %\override NoteColumn.X-extent = #'(0.8 . 0.8)
    \override Rest.transparent = ##t

    \remove Forbid_line_break_engraver
  }
  \context {
    \Score
    % Set horizontal spacing inside staff
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/8)
    
    \override VerticalAxisGroup.staff-staff-spacing = #'((basic-distance . 8)
            (minimum-distance . 8)
            (padding . 0))
  }
  \context {
    \Lyrics
    \consists #Slur_spacing_engraver
    %\with { alignAboveContext = "up" }
    \override LyricText.font-size = #-1
    \override LyricSpace.minimum-distance = #1
    %\override LyricText.X-extent = #'(0 . 0)
    \override LyricText.layer = #5
    \override LyricText.whiteout = ##t
    \override LyricHyphen.padding = #0.5
    %\override LyricText.X-align-on-main-noteheads = ##f
    \override LyricText.parent-alignment-X = #-1
    \override LyricText.self-alignment-X = #-1
  }
}

#(set-default-paper-size "letter")

\paper {
    tagline = ##f
    print-page-number = ##f
    top-margin = 0.5\in
    bottom-margin = 0.5\in
    left-margin = 0.5\in
    right-margin = 0.5\in
    system-system-spacing =
      #'((basic-distance . 14)
         (minimum-distance . 14)
         (padding . 1)
         (stretchability . 1))
  }
