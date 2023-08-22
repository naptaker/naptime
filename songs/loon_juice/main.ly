%%% ================================================================ [ main.ly ]
%%% Description: Naptime - Main score for "Loon Juice"
%%% Copyright:   (c) 2016-2021 Eric Bailey
%%% License:     see LICENSE
%%% ==================================================================== [ EOH ]

\version "2.24.0"


%%% ======================================================== [ Naptaker Config ]

\include "oll-core/package.ily"
\loadPackage naptaker

\setOption naptaker.guitar-capo #3
\setOption naptaker.guitar-tabs ##f
\setOption naptaker.staff-size #15
\setOption naptaker.extra-layout \layout {
  \override Score.TrillSpanner.bound-details.left.text = ##f
}


%%% ================================================================= [ Header ]

Key    = { \key c \major }
Tempo  = { \tempo 4 = 183 }
global = { \Tempo \defaultTimeSignature \time 4/4 }


\header {
  title     = \markup \fontsize #8 "Loon Juice"
  opus      = "Naptime"
  composer  = "Eric Bailey"
  arranger  = "Naptaker"
  copyright = "© 2016-2021 Eric Bailey"
}


%%% ================================================================= [ Layout ]

pageNumberColor = #(if (defined? 'pageNumberColor) pageNumberColor black)


\paper {
  two-sided = ##t
  print-first-page-number = ##t

  evenHeaderMarkup = \markup {
    \column {
      \fill-line {
        \null
        \line {
          \with-color \pageNumberColor
          \if \should-print-page-number
          \fromproperty #'page:page-number-string
        }
      }
    }
  }

  oddHeaderMarkup = \markup {
    \column {
      \fill-line {
        \line {
          \with-color \pageNumberColor
          \if \should-print-page-number
          \fromproperty #'page:page-number-string
        }
        \null
      }
    }
  }
}


%%% =================================================================== [ Grid ]

\templateInit
#'("meta" "vox" "chords" "guitar" "guitar strum" "bass" "drums up" "drums down")
#'(6 6 6 4 6 (1 . 4))

\Naptaker

\gridDisplay
\gridCheck

\include "naptaker/mtf-improviso.ily"


%%% ==================================================================== [ EOF ]
