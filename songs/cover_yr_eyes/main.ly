%%% ================================================================ [ main.ly ]
%%% Description: Naptime - Main score for "Cover Yr Eyes"
%%% Copyright:   (c) 2016-2018 Eric Bailey
%%% License:     see LICENSE
%%% ==================================================================== [ EOH ]

\version "2.19.80"


%%% ======================================================== [ Naptaker Config ]

\include "oll-core/package.ily"
\loadPackage naptaker

\setOption naptaker.staff-size #13

\setOption naptaker.extra-layout \layout {
  \omit Score.FretBoard
}


%%% ================================================================= [ Header ]

Key    = { \key d \minor }
Tempo  = { \tempo 4 = 182 }
global = { \Tempo \defaultTimeSignature \time 4/4 }

\header {
  title     = \markup \fontsize #6 { "Cover Yr Eyes" }
  opus      = "Naptime"
  composer  = "Preston Y. Drum"
  poet      = "Preston Y. Drum"
  arranger  = "Naptaker"
  copyright = "© 2016-2018 Eric Bailey"
}


%%% ================================================================= [ Layout ]

pageNumberColor = #(if (defined? 'pageNumberColor) pageNumberColor black)

\paper {
  two-sided = ##t
  print-first-page-number = ##t

  %% NOTE: margins and offset are scaled to paper-size
  %% inner-margin = 0.375\in
  %% outer-margin = 0.375\in
  %% binding-offset = 0.5\in

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
#'("meta" "vox" "chords" "guitar" "guitar strum" "bass" "drums up" "drums down")
#'(8 12 8 8 (1 . 4))

\include "parts/lyrics.ily"

\Naptaker

\gridDisplay
\gridCheck

\include "naptaker/mtf-improviso.ily"


%%% ==================================================================== [ EOF ]
