%%% ================================================================ [ main.ly ]
%%% Description: Naptime - Main score for "The Rustler"
%%% Copyright:   (c) 2013-2018 Naptaker
%%% License:     see LICENSE
%%% ==================================================================== [ EOH ]

\version "2.24.0"


%%% ======================================================== [ Naptaker Config ]

\include "oll-core/package.ily"
\loadPackage naptaker

\setOption naptaker.guitar-capo #3
\setOption naptaker.guitar-tabs ##f
\setOption naptaker.staff-size #14
\setOption naptaker.extra-layout \layout {
  \omit Score.FretBoard
  \override Score.ChordName.extra-offset = #'(0 . -3)
  \override Score.TrillSpanner.bound-details.left.text = ##f
}


%%% ================================================================= [ Header ]

Key    = { \key f \minor }
Tempo  = { \tempo 4 = 170 }
global = { \Tempo \defaultTimeSignature \time 4/4 }


\header {
  title     = \markup \fontsize #6 "The Rustler"
  opus      = "Naptime"
  composer  = "Eric Bailey"
  arranger  = "Naptaker"
  copyright = "© 2013-2018 Eric Bailey"
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
#'("meta" "chords" "guitar strum" "guitar" "bass" "drums up" "drums down")
#'(4 8 2 6 6 (1 . 4))

\Naptaker

\gridDisplay
\gridCheck

\include "naptaker/mtf-improviso.ily"


%%% ==================================================================== [ EOF ]
