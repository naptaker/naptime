%%% ================================================================ [ main.ly ]
%%% Description: Naptime - Main score for "Disco Ball"
%%% Copyright:   (c) 2016-2017 Eric Bailey
%%% TODO: License:     see LICENSE
%%% ==================================================================== [ EOH ]

\version "2.19.24"

\include "openlilylib"

%%% ======================================================== [ Naptaker Config ]

\useLibrary Naptaker

\setOption naptaker.guitar-tabs ##f
\setOption naptaker.staff-size #12
\setOption naptaker.extra-layout \layout {
  \omit Score.FretBoard
}

%%% ================================================================= [ Header ]

Key    = { \key c \major }
Tempo  = { \tempo 4 = 192 }
global = { \Tempo \defaultTimeSignature \time 4/4 }

\header {
  title     = "Disco Ball"
  opus      = "Naptime"
  composer  = "Preston Y. Drum"
  poet      = "Preston Y. Drum"
  arranger  = "Naptaker"
  copyright = "© 2016 Naptaker"
}

%%% ================================================================== [ Hacks ]

#(begin
   (define bye
     (define-music-function
       (parser location) ()
       #{
         \stopStaff \hideNotes
         \omit Staff.Rest \omit Staff.MultiMeasureRest
         \once {
           \omit Staff.Clef \omit Staff.ClefModifier
           \omit Staff.TimeSignature
         }
       #}))
   (define hi
     (define-music-function
       (parser location) ()
       #{
         \startStaff \unHideNotes
         \undo \omit Staff.Rest \undo \omit Staff.MultiMeasureRest
       #})))

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
