%%% ================================================================ [ main.ly ]
%%% Description: Naptime - Main score for "Mountain"
%%% Copyright:   (c) 2016-2018 Eric Bailey
%%% License:     see LICENSE
%%% ==================================================================== [ EOH ]

\version "2.19.80"


%%% ======================================================== [ Naptaker Config ]

\include "oll-core/package.ily"
\loadPackage naptaker

\setOption naptaker.staff-size #12
\setOption naptaker.guitar-tabs ##t


%%% ================================================================= [ Header ]

Key    = { \key f \minor }
Tempo  = { \tempo 4 = 160 }
global = { \Tempo \defaultTimeSignature \time 4/4 }

\header {
  title     = \markup \fontsize #2 { "Mountain" }
  composer  = "Naptaker"
  opus      = "Naptime"
  copyright = "© 2016-2020 Eric Bailey"
}


%%% ================================================================= [ Layout ]

pageNumberColor = #(if (defined? 'pageNumberColor) pageNumberColor black)

\paper {
  two-sided = ##t
  print-first-page-number = ##t

  %% NOTE: margins and offset are scaled to paper-size
  inner-margin = 0.375\in
  outer-margin = 0.375\in
  binding-offset = 0.5\in

  evenHeaderMarkup = \markup {
    \column {
      \fill-line {
        \null
        \line {
          \with-color \pageNumberColor
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
          \with-color \pageNumberColor
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
#'("meta" "guitar" "bass" "drums up" "drums down")
#'(13 3 2 4 16 8 5)

\Naptaker

\gridDisplay
\gridCheck

\include "naptaker/mtf-improviso.ily"


%%% ==================================================================== [ EOF ]
