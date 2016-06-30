\include "global.ily"
\include "parts/bass.ily"
\include "parts/guitar.ily"

\gridDisplay
\gridCheck

openDminorTuning = \stringTuning  <d, a, d f a d'>

\score {
  \Naptaker \openDminorTuning

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
  \unfoldRepeats \Naptaker \openDminorTuning
  \midi { }
}
