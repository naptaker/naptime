%%% ================================================================ [ main.ly ]
%%% Description: Naptime - Main score for "Halfway Haus"
%%% Copyright:   (c) 2016-2017 Naptaker
%%% License:     see LICENSE
%%% ==================================================================== [ EOH ]

\version "2.19.24"


%%% ======================================================== [ Naptaker Config ]

\include "oll-core/package.ily"
\loadPackage naptaker

\setOption naptaker.guitar-tuning \stringTuning <d, a, d f a d'>
\setOption naptaker.guitar-tabs ##t
\setOption naptaker.staff-size #13


%% FIXME: \include "notation-snippets/guitar-string-bending/definitions.ily"

#(define (slur::draw-shifted-bend-arrow grob)
   (let* ((staff-symbol (ly:grob-object grob 'staff-symbol))
          (line-count (ly:grob-property staff-symbol 'line-count))
          (staff-space (ly:grob-property staff-symbol 'staff-space))
          (left-bound (ly:spanner-bound grob LEFT))
          (right-bound (ly:spanner-bound grob RIGHT))
          (left-tab-note-head (ly:grob-property left-bound 'cause))
          (right-tab-note-head (ly:grob-property right-bound 'cause))
          (control-points (ly:grob-property grob 'control-points))
          (left-point (car control-points))
          (right-point (cadddr control-points))
          (left-pitch  (ly:event-property (event-cause left-bound) 'pitch))
          (right-pitch (ly:event-property (event-cause right-bound) 'pitch))
          (quarterdiff (- (ly:pitch-quartertones right-pitch)
                         (ly:pitch-quartertones left-pitch)))
          (begin-x (car left-point))
          (begin-y (+ (* (/ (ly:grob-property left-tab-note-head 'staff-position) 2)
                        staff-space)
                     y-distance-from-tabstaff-to-arrow-tip))
          ;; cdr left-point doesn't work, because invisible stems are included
          (end-x (car right-point))
          (end-y (+ (* (/ (- line-count 1) 2) staff-space) y-distance-from-tabstaff-to-arrow-tip consecutive-bends-arrow-height))
          (arrow-lx (- end-x (/ bend-arrowhead-width 2)))
          (arrow-rx (+ end-x (/ bend-arrowhead-width 2)))
          (arrow-y (- end-y bend-arrowhead-height))
          (middle-x (+ begin-x (* bend-arrow-curvature-factor (- end-x begin-x))))
          (bend-amount (quarterdiff->string quarterdiff)))
     (if (< quarterdiff 0)
         ;; bend down
         (let* ((y-offset (cdr (ly:grob-extent left-tab-note-head left-tab-note-head Y)))
                (temp begin-y))

           (set! begin-y end-y) ;; swap begin-y/end-y
           (set! end-y (+ temp y-offset))
           (set! arrow-y (+ end-y bend-arrowhead-height))
           (set! bend-amount "")
           (ly:grob-set-property! right-tab-note-head 'stencil
             (lambda (grob) (parenthesize-tab-note-head grob))))
         ;; bend up
         (ly:grob-set-property! right-tab-note-head 'transparent #t))
     ;; draw resulting bend arrow
     (grob-interpret-markup grob
       (make-drawBendArrow-markup
        bend-line-thickness
        begin-x middle-x end-x begin-y end-y
        arrow-lx arrow-rx arrow-y
        bend-amount))))

shiftBend = {
  \once \override TabVoice.Slur #'stencil = #slur::draw-shifted-bend-arrow
}


%%% ================================================================= [ Header ]

Key    = { \key c \major }
Tempo  = { \tempo 4 = 220 }
global = { \Tempo \defaultTimeSignature \time 4/4 }

\header {
  title     = "Halfway Haus"
  opus      = "Naptime"
  composer  = "Sam Albers"
  %% poet      = "Preston Y. Drum"
  arranger  = "Naptaker"
  copyright = "© 2016-2017 Naptaker"
}

%%% ================================================================= [ Layout ]

\paper {
  two-sided = ##t
  print-first-page-number = ##t
}

%%% =================================================================== [ Grid ]

\templateInit
#'("meta"
   ;; TODO: "vox"
   "guitar"
   "bass"
   ;; TODO: "drums up" "drums down"
 )
#'(16 16)

\Naptaker

\gridDisplay
\gridCheck

\include "naptaker/mtf-improviso.ily"

%%% ==================================================================== [ EOF ]
