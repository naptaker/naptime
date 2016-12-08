\include "guitar.ily"
\include "chords.ily"
\include "guitar_strum.ily"

#(set-default-paper-size "letter" 'portrait)

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

%% \score {
%%   \unfoldRepeats \Naptaker #guitar-open-d-tuning
%%   \midi { }
%% }