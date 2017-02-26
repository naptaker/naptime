\include "global.ily"
\include "parts/chords.ily"
\include "parts/guitar.ily"
\include "parts/guitar_strum.ily"
\include "parts/bass.ily"
\include "parts/drums.ily"

\gridDisplay
\gridCheck

\score {
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

\score {
  \unfoldRepeats \Naptaker #guitar-open-d-tuning ##f
  \midi { }
}
