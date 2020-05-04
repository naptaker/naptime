%%% ================================================================ [ main.ly ]
%%% Description: Naptime - Main score for "Disco Ball"
%%% Copyright:   (c) 2016-2018 Naptaker
%%% License:     see LICENSE
%%% ==================================================================== [ EOH ]

\version "2.19.24"


%%% ======================================================== [ Naptaker Config ]

\include "oll-core/package.ily"
\loadPackage naptaker

\setOption naptaker.guitar-tabs ##f
\setOption naptaker.staff-size #13
\setOption naptaker.extra-layout \layout {
  \omit Score.FretBoard
  \override Score.ChordName.extra-offset = #'(0 . -3)
}


%%% ================================================================= [ Header ]

Key    = { \key c \major }
Tempo  = { \tempo 4 = 192 }
global = { \Tempo \defaultTimeSignature \time 4/4 }


\header {
  title     = \markup \fontsize #8 "Disco Ball"
  opus      = "Naptime"
  composer  = "Preston Y. Drum"
  poet      = "Preston Y. Drum"
  arranger  = "Naptaker"
  copyright = "© 2016-2018 Eric Bailey"
}

%%% ================================================================== [ Hacks ]

todoOn = {
  \temporary \override NoteHead.color = #red
  \temporary \override Stem.color = #red
}


todoOff = {
  \revert NoteHead.color
  \revert Stem.color
}


%%% =================================================================== [ Grid ]

\templateInit
#'("meta" "vox" "guitar" "guitar strum" "chords" "bass" "drums up" "drums down")
#'(8 8 8 16 14 2)

\include "parts/melody.ily"
\include "parts/lyrics.ily"

\Naptaker

\gridDisplay
\gridCheck

\include "naptaker/mtf-improviso.ily"


%%% ==================================================================== [ EOF ]
