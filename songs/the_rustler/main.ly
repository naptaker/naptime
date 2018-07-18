%%% ================================================================ [ main.ly ]
%%% Description: Naptime - Main score for "The Rustler"
%%% Copyright:   (c) 2013-2018 Naptaker
%%% License:     see LICENSE
%%% ==================================================================== [ EOH ]

\version "2.19.80"

\include "openlilylib"


%%% ======================================================== [ Naptaker Config ]

\useLibrary Naptaker

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


%%% =================================================================== [ Grid ]

\templateInit
#'("meta" "chords" "guitar strum" "guitar" "bass" "drums up" "drums down")
#'(4 8 2 6 6 (1 . 4))

\Naptaker

\gridDisplay
\gridCheck

\include "naptaker/mtf-improviso.ily"


%%% ==================================================================== [ EOF ]
