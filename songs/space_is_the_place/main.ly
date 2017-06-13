%%% ================================================================ [ main.ly ]
%%% Description: Naptime - Main score for "I Think You Invented It"
%%% Copyright:   (c) 2016-2017 Naptaker
%%% License:     see LICENSE
%%% ==================================================================== [ EOH ]

\version "2.19.24"

\include "openlilylib"

%%% ======================================================== [ Naptaker Config ]

\useLibrary Naptaker

%% \setOption naptaker.guitar-capo #2
\setOption naptaker.guitar-tabs ##t
\setOption naptaker.staff-size #12

%%% ================================================================= [ Header ]

Key    = { \key c \major }
Tempo  = { \tempo 4 = 150 }
global = { \Tempo \defaultTimeSignature \time 4/4 }


\header {
  title     = "Space is the Place"
  opus      = "Naptime"
  composer  = "Eric Bailey"
  poet      = "Preston Y. Drum"
  arranger  = "Naptaker"
  copyright = "© 2016-2017 Naptaker"
}

%%% =================================================================== [ Grid ]

\templateInit
#'("meta" "vox" "chords" "guitar" "guitar strum" "bass" "drums up" "drums down")
#'(4 4 5 4 8 8 7 1 16)

\Naptaker

\gridDisplay
\gridCheck

\include "naptaker/mtf-improviso.ily"

%%% ==================================================================== [ EOF ]
