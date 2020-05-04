%%% ================================================================ [ main.ly ]
%%% Description: Naptime - Main score for "No Fun"
%%% Copyright:   (c) 2018 Eric Bailey
%%% License:     see LICENSE
%%% ==================================================================== [ EOH ]

\version "2.19.80"


%%% ======================================================== [ Naptaker Config ]

\include "oll-core/package.ily"
\loadPackage naptaker

% \setOption naptaker.guitar-capo #3
\setOption naptaker.guitar-tabs ##f
\setOption naptaker.staff-size #15
\setOption naptaker.extra-layout \layout {
  \omit Score.FretBoard
  \override Score.ChordName.extra-offset = #'(0 . -3)
  indent = 6\in
  % \override Score.TrillSpanner.bound-details.left.text = ##f
}


%%% ================================================================= [ Header ]

Key    = { \key c \major }
Tempo  = { \tempo 4 = 180 }
global = { \Tempo \defaultTimeSignature \time 4/4 }


\header {
  title     = \markup \fontsize #8 "No Fun"
  opus      = "Naptime"
  composer  = "Eric Bailey"
  poet      = "Preston Y. Drum"
  arranger  = "Naptaker"
  copyright = "© 2018 Eric Bailey"
}


%%% ================================================================= [ Layout ]

pageNumberColor = #(if (defined? 'pageNumberColor) pageNumberColor black)


\paper {
  two-sided = ##t
  print-first-page-number = ##t
  ragged-last = ##t

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
#'("meta" "chords" "guitar" "guitar strum" "bass" "drums up" "drums down")
#'(4 (125 . 8) 5 (53 . 8) (19 . 8 ))

\Naptaker

\gridDisplay
\gridCheck

\include "naptaker/mtf-improviso.ily"


%%% ==================================================================== [ EOF ]
