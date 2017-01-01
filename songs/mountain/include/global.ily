\version "2.19.24"

\include "openlilylib"
\addGuilePath "../../../include"
#(load-from-path "naptaker.scm")
\include "preamble.ily"
\include "instruments.ily"

\useLibrary gridly

Key    = { \key f \minor }
Tempo  = { \tempo 4 = 160 }
global = { \Tempo \defaultTimeSignature \time 4/4 }

\header {
  dedication = "(To the Top of the)"
  title      = "Mountain"
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
  %% opus       = "Naptime"
  composer   = "E. Bailey, P. Drum and S. Albers"
  arranger   = "är Naptaker"
  copyright  = "© 2016 Naptaker"
}

\templateInit #'("meta"
                 "guitar"
                 "bass"
                 "drums up"
                 "drums down")
#'(13 3 2 4 16 8 5)

mainBreak     = { \tag #'main { \break } }
mainPageBreak = { \tag #'main { \pageBreak } }

\gridPutMusic "meta" 1 {
  \global
  \mark 1
  s1*8 \bar "||" \mainBreak
  s1*4 s1 \mainBreak
}

%% http://stackoverflow.com/a/18795802/1793234
dcAlFineMarkup = \markup { \translate #'(0 . 3) "D.C. al Fine" }
dcAlFine = {
  \once \override Staff.BarLine #'stencil =
  #(lambda (grob)
     (ly:stencil-combine-at-edge
       (ly:bar-line::print grob)
       X LEFT
       (grob-interpret-markup grob dcAlFineMarkup)
       10.0))
}

\gridPutMusic "meta" 2 {
  \mark 2
  \set Score.repeatCommands = #'(start-repeat)
  s1 s2
  \bar "!"
  \set Score.repeatCommands = #'((volta "1, 3"))
  s2
  \set Score.repeatCommands = #'((volta #f) (volta "2") end-repeat)
  s2
  \set Score.repeatCommands = #'((volta #f) (volta "4") end-repeat)
  s4 s4^"D.C. al Fine"
  \set Score.repeatCommands = #'((volta #f))
  % \dcAlFine
  \bar "||"
  \mainBreak
}

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

\gridPutMusic "meta" 3 {
  \mark 3
  \bar ".|:"
  \repeat volta 4 {
    s1 s2 s4. s8
  }
  %% FIXME: this gets hidden in the main score when hiding the guitar staff...
  \fourX
}

\gridPutMusic "meta" 4 {
  \mark 4
  s1*4 \fourX \mainBreak
}

\gridPutMusic "meta" 5 {
  \mark 5
  s1*8 % \mainBreak
  s1*8 \mainBreak
}

\gridPutMusic "meta" 6 {
  \mark 6
  s1*8 \mainBreak
}

\gridPutMusic "meta" 7 {
  \mark 7
  s1*5 \bar "|."
}
