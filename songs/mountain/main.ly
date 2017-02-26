\include "global.ily"
\include "parts/guitar.ily"
\include "parts/bass.ily"
\include "parts/drums.ily"

#(if #t ; <- toggle arch a / letter
  (begin
    (set-default-paper-size "arch a" 'landscape)
    (set-global-staff-size 18))
  (begin
   (set-default-paper-size "letter" 'landscape)
   (set-global-staff-size 16)))

\gridDisplay
\gridCheck

\score {
  %% FIXME: support tags in naptaker.scm (pass them down)
  %% \keepWithTag #'main { \Naptaker #guitar-open-d-tuning ##t }
  \Naptaker #guitar-open-d-tuning ##t

  \layout {
    %% Increase the size of bar numbers by 2
    \override Score.BarNumber.font-size = #2

    %% Draw a box around bar numbers
    \override Score.BarNumber.stencil =
    #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)

    \override Score.BarNumber.padding = #3
  }
}
