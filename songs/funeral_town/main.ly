\include "include/global.ily"
\include "parts/guitar.ily"
\include "parts/guitar_strum.ily"
\include "parts/chords.ily"
\include "parts/bass.ily"
\include "parts/drums.ily"

\gridDisplay
                                % \gridCheck

#(set-global-staff-size 13)

\include "mtf-improviso.ily"

\paper {
  two-sided = ##t
  %% NOTE: margins and offset are scaled to paper-size
                                % inner-margin = 0.375\in
                                % outer-margin = 0.595\in
  print-first-page-number = ##t
}

\paper {
  evenHeaderMarkup = \markup {
    \column {
      \fill-line {
        \null
        \line {
          \on-the-fly #print-page-number-check-first
          \fromproperty #'page:page-number-string
        }
      }
    }
  }

  oddHeaderMarkup = \markup {
    \column {
      \fill-line {
        \line {
          \on-the-fly #print-page-number-check-first
          \fromproperty #'page:page-number-string
        }
        \null
      }
    }
  }
}

\score {
  \Naptaker #guitar-open-d-tuning ##f
  \layout {
    \omit Staff.InstrumentName
    \omit Score.FretBoard
    indent = 0\in

    \override Score.BarNumber.font-size = #2
    \override Score.BarNumber.padding   = #3
    \override Score.BarNumber.stencil   =
    #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
    \override Score.TrillSpanner.bound-details.left.text = ##f
  }
}
