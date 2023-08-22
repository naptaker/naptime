%%% ================================================================ [ main.ly ]
%%% Description: Naptime - Main score for "I Think You Invented It"
%%% Copyright:   (c) 2016-2017 Naptaker
%%% License:     see LICENSE
%%% ==================================================================== [ EOH ]

\version "2.24.0"


%%% ======================================================== [ Naptaker Config ]

\include "oll-core/package.ily"
\loadPackage naptaker

\setOption naptaker.guitar-tuning #guitar-open-d-tuning
\setOption naptaker.guitar-capo #2

\setOption naptaker.guitar-tabs ##t

\setOption naptaker.staff-size #20

%%% ================================================================= [ Header ]

Key    = { \key c \major }
Tempo  = { \tempo 4 = 138 }
global = { \Tempo \defaultTimeSignature \time 4/4 }

\header {
  title    = "I Think You Invented It"
  opus     = "Naptime"
  composer = "Eric Bailey"
  poet     = "Preston Y. Drum"
  arranger = "Naptaker"
  copyright = "© 2016-2017 Naptaker"
}

%%% ================================================================= [ Layout ]

\paper {
  two-sided = ##t
  print-first-page-number = ##t
}

%%% =================================================================== [ Grid ]

\templateInit
#'("meta"
   ;; TODO: "vox"
   "guitar"
   "bass"
   ;; TODO: "drums up" "drums down"
 )
#'(4 8 8 8 8 8 52 8 18)

\Naptaker

\gridDisplay
\gridCheck

\include "naptaker/mtf-improviso.ily"

%%% ==================================================================== [ EOF ]
