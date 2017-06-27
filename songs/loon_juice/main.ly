%%% ================================================================ [ main.ly ]
%%% Description: Naptime - Main score for "Loon Juice"
%%% Copyright:   (c) 2016-2017 Naptaker
%%% License:     see LICENSE
%%% ==================================================================== [ EOH ]

\version "2.19.24"

\include "openlilylib"

%%% ======================================================== [ Naptaker Config ]

\useLibrary Naptaker

\setOption naptaker.guitar-capo #3
\setOption naptaker.guitar-tabs ##f
\setOption naptaker.staff-size #15
\setOption naptaker.extra-layout \layout {
  \override Score.TrillSpanner.bound-details.left.text = ##f
}

%%% ================================================================= [ Header ]

Key    = { \key c \major }
Tempo  = { \tempo 4 = 183 }
global = { \Tempo \defaultTimeSignature \time 4/4 }

\header {
  title     = \markup \fontsize #8 "Loon Juice"
  opus      = "Naptime"
  composer  = "Eric Bailey"
  arranger  = "Naptaker"
  copyright = "© 2016-2017 Eric Bailey"
}

%%% ================================================================= [ Layout ]

pageNumberColor = #(if (defined? 'pageNumberColor) pageNumberColor black)

\paper {
  two-sided = ##t
  print-first-page-number = ##t

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
#'("meta" "vox" "chords" "guitar" "guitar strum" "bass" "drums up" "drums down")
#'(6 6 6 4 6 (1 . 4))

\Naptaker

\gridDisplay
\gridCheck

\include "naptaker/mtf-improviso.ily"

%%% ==================================================================== [ EOF ]
