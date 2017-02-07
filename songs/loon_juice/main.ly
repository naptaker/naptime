\include "global.ily"
\include "parts/guitar.ily"
\include "parts/guitar_strum.ily"
\include "parts/chords.ily"
\include "parts/bass.ily"
\include "parts/drums.ily"

#(if #t ; <- toggle arch a / letter
  (begin
    (set-default-paper-size "arch a" 'landscape)
    (set-global-staff-size 14))
  (begin
   (set-default-paper-size "letter" 'landscape)
   (set-global-staff-size 16)))

\paper {
  two-sided = ##t
  ragged-bottom = ##t
  ragged-last-bottom = ##t
  print-first-page-number = ##t
}

\gridDisplay
\gridCheck

\score {
  \Naptaker #guitar-open-d-tuning

  \layout {
    %% Increase the size of bar numbers by 2
    \override Score.BarNumber.font-size = #2

    %% Draw a box around bar numbers
    \override Score.BarNumber.stencil =
    #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)

    \override Score.BarNumber.padding = #3
  }
}
