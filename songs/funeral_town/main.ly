%%% ================================================================ [ main.ly ]
%%% Description: Naptime - Main score for "Funeral Town"
%%% Copyright:   (c) 2016-2017 Naptaker
%%% License:     see LICENSE
%%% ==================================================================== [ EOH ]

\version "2.19.24"


%%% ======================================================== [ Naptaker Config ]

\include "oll-core/package.ily"
\loadPackage naptaker

\setOption naptaker.staff-size #13
\setOption naptaker.extra-layout \layout {
  \omit Staff.InstrumentName
  \omit Score.FretBoard
  indent = 0\in
  \override Score.TrillSpanner.bound-details.left.text = ##f
}

%%% ================================================================= [ Header ]

Key    = { \key es \minor }
Tempo  = { \tempo 4 = 152 }
global = { \Tempo \defaultTimeSignature \time 4/4 }

\header {
  %% dedication = "Welcome to"
  title      = \markup \fontsize #4 "Funeral Town"
  %% subtitle   = \markup \teeny "(Eat a Dead Man)"
  composer   = "E. Bailey, P. Drum and S. Albers"
  arranger   = "Naptaker"
  opus       = "Naptime"
  copyright  = "© 2016-2017 Naptaker"
  %% tagline   = \markup \teeny "(Eat a Dead Man)"
  %% tagline    = ##f
}

%%% ================================================================= [ Layout ]

\paper {
  two-sided = ##t
  print-first-page-number = ##t

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

%%% =================================================================== [ Grid ]

\templateInit
#'("meta" "chords" "guitar strum" "guitar" "bass" "drums up" "drums down")
#'(8 8 6 8 2 4 6 2)

\Naptaker

\gridDisplay
\gridCheck

\include "naptaker/mtf-improviso.ily"

%%% ==================================================================== [ EOF ]
