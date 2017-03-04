#(ly:set-option 'relative-includes #t)

\include "include/global.ily"
\include "parts/guitar.ily"
\include "parts/bass.ily"
\include "parts/drums.ily"

\gridDisplay
\gridCheck

\score {
  \Naptaker #guitar-open-d-tuning ##t
  \layout {
    \override Score.BarNumber.font-size = #2
    \override Score.BarNumber.padding   = #3
    \override Score.BarNumber.stencil   =
      #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
  }
}
