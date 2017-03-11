%%% ================================================================ [ main.ly ]
%%% Description: Naptime - Main score for "Funeral Town"
%%% Copyright:   (c) 2016-2017 Eric Bailey
%%% TODO: License:     see LICENSE
%%% ==================================================================== [ EOH ]

\version "2.19.24"

\include "openlilylib"

%%% ======================================================== [ Naptaker Config ]

\useLibrary Naptaker

%% \setOption naptaker.guitar-tabs ##f
%% \setOption naptaker.staff-size #18

\setOption naptaker.guitar-tabs ##t
\setOption naptaker.staff-size #17

%%% ================================================================= [ Header ]


Key    = { \key c \major }
Tempo  = { \tempo 4 = 183 }
global = { \Tempo \defaultTimeSignature \time 4/4 }

\header {
  title     = "Loon Juice"
  composer  = "Naptaker"
  opus      = "Naptime"
  copyright = "© 2016-2017 Naptaker"
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
#'("meta" "vox" "chords" "guitar" "guitar strum" "bass" "drums up" "drums down")
#'(6 6 6 4 6 (1 . 4))

\Naptaker

\gridDisplay
\gridCheck

\include "naptaker/mtf-improviso.ily"

%%% ==================================================================== [ EOF ]
