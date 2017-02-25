\include "global.ily"
\include "parts/vox.ily"
\include "parts/guitar.ily"
\include "parts/guitar_strum.ily"
\include "parts/chords.ily"
\include "parts/bass.ily"
\include "parts/drums.ily"

\paper {
  two-sided = ##t
  % NOTE: margins and offset are scaled to paper-size
  inner-margin = 0.375\in
  outer-margin = 0.375\in
  binding-offset = 0.5\in
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
  \midi { }
}
