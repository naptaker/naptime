%%% ================================================================ [ main.ly ]
%%% Description: Naptime - Main score for "Cover Yr Eyes"
%%% Copyright:   (c) 2016-2017 Eric Bailey
%%% TODO: License:     see LICENSE
%%% ==================================================================== [ EOH ]

\version "2.19.24"

\include "openlilylib"

%%% ======================================================== [ Naptaker Config ]

\useLibrary Naptaker

\setOption naptaker.staff-size #18

%%% ================================================================= [ Header ]

Key    = { \key d \minor }
Tempo  = { \tempo 4 = 182 }
global = { \Tempo \defaultTimeSignature \time 4/4 }

\header {
  title     = "Cover Yr Eyes"
  opus      = "Naptime"
  composer  = "Preston Y. Drum"
  poet      = "Preston Y. Drum"
  arranger  = "Naptaker"
  copyright = "© 2016-2017 Naptaker"
}

%%% ================================================================= [ Layout ]

\paper {
  two-sided = ##t
  print-first-page-number = ##t

  %% NOTE: margins and offset are scaled to paper-size
  %% inner-margin = 0.375\in
  %% outer-margin = 0.375\in
  %% binding-offset = 0.5\in
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
