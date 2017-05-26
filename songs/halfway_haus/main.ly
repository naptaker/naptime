%%% ================================================================ [ main.ly ]
%%% Description: Naptime - Main score for "Halfway Haus"
%%% Copyright:   (c) 2016-2017 Eric Bailey
%%% TODO: License:     see LICENSE
%%% ==================================================================== [ EOH ]

\version "2.19.24"

\include "openlilylib"

\include "notation-snippets/guitar-string-bending/definitions.ily"

%%% ======================================================== [ Naptaker Config ]

\useLibrary Naptaker

\setOption naptaker.guitar-tuning \stringTuning <d, a, d f a d'>
\setOption naptaker.guitar-tabs ##t
\setOption naptaker.staff-size #13

%%% ================================================================= [ Header ]

Key    = { \key c \major }
Tempo  = { \tempo 4 = 220 }
global = { \Tempo \defaultTimeSignature \time 4/4 }

\header {
  title     = "Halfway Haus"
  opus      = "Naptime"
  composer  = "Sam Albers"
  %% poet      = "Preston Y. Drum"
  arranger  = "Naptaker"
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
#'(16 16)

\Naptaker

\gridDisplay
\gridCheck

\include "naptaker/mtf-improviso.ily"

%%% ==================================================================== [ EOF ]
