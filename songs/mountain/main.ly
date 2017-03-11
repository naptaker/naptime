%%% ================================================================ [ main.ly ]
%%% Description: Naptime - Main score for "Mountain"
%%% Copyright:   (c) 2016-2017 Eric Bailey
%%% TODO: License:     see LICENSE
%%% ==================================================================== [ EOH ]

\version "2.19.24"

\include "openlilylib"

%%% ======================================================== [ Naptaker Config ]

\useLibrary Naptaker

\setOption naptaker.staff-size #16
\setOption naptaker.guitar-tabs ##t

%%% ================================================================= [ Header ]

Key    = { \key f \minor }
Tempo  = { \tempo 4 = 160 }
global = { \Tempo \defaultTimeSignature \time 4/4 }

\header {
  title      = "(Together, We Are A) Mountain (Range)"
  subtitle   = \markup {
    \fill-line {
      \center-column {
        \null
        \epsfile #X #100 #"resources/at_the_mountains_of_madness.eps"
        \teeny {
          \line { \italic "At the Mountains of Madness" "by Jonathan Kriz" }
          "https://flic.kr/p/9xRUX4"
        }
      }
    }
  }
  composer   = "E. Bailey, P. Drum and S. Albers"
  arranger   = "Naptaker"
  opus       = "Naptime"
  copyright  = "© 2016-2017 Naptaker"
}

%%% ================================================================= [ Layout ]

\include "titling-init.ly"

#(define (not-last-page layout props arg)
  (if (book-last-page? layout props)
      empty-stencil
      (interpret-markup layout props arg)))


\paper {
  two-sided = ##t
  print-first-page-number = ##t
  %% NOTE: ly/titling-init.ly
  oddFooterMarkup = \markup {
    \on-the-fly #not-last-page
    \teeny \fill-line {
      \concat {
        \on-the-fly #not-part-first-page
        \concat {
          \fromproperty #'header:opus ": " \fromproperty #'header:title ", "
        }
        \fromproperty #'header:copyright
      }
    }
    \on-the-fly #last-page
    \column {
      \fill-line { \fontsize #5 \fromproperty #'header:title }
      \fill-line { \fontsize #3 "by Naptaker" }
      \fill-line { \line { "from" \fromproperty #'header:opus } }
      \tiny \fill-line {
        %% Tagline header field only on last page in the book.
        \fromproperty #'header:tagline
      }
    }
  }
}

%%% ================================================================== [ Hacks ]

%% FIXME
%% http://stackoverflow.com/a/18795802/1793234
fourXMarkup = \markup { \translate #'(0 . 3) \italic 4x }
fourX = {
  \once \override Staff.BarLine #'stencil =
  #(lambda (grob)
     (ly:stencil-combine-at-edge
       (ly:bar-line::print grob)
       X LEFT
       (grob-interpret-markup grob fourXMarkup)
       -1.0))
}

%%% =================================================================== [ Grid ]

\templateInit
#'("meta" "guitar" "bass" "drums up" "drums down")
#'(13 3 2 4 16 8 5)

\Naptaker

\gridDisplay
\gridCheck

\include "naptaker/mtf-improviso.ily"

%%% ==================================================================== [ EOF ]
