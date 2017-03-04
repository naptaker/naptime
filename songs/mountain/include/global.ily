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

\templateInit #'("meta"
                 "guitar"
                 "bass"
                 "drums up"
                 "drums down")
              #'(13 3 2 4 16 8 5)

\gridPutMusic "meta" 1 {
  \global
  s1*8 \bar "||" \break
  s1*4 s1 \break
}

\gridPutMusic "meta" 2 {
  \set Score.repeatCommands = #'(start-repeat)
  s1 s2
  \bar "!"
  \set Score.repeatCommands = #'((volta "1, 3"))
  s2
  \set Score.repeatCommands = #'((volta #f) (volta "2") end-repeat)
  s2
  \set Score.repeatCommands = #'((volta #f) (volta "4") end-repeat)
  s4
  \once \override Score.RehearsalMark.X-offset = #-3.5
  \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \mark "D.C. al Fine"
  s4
  \set Score.repeatCommands = #'((volta #f))
  \bar "||"
  \break
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
  \bar ".|:"
  \repeat volta 4 {
    s1 s2 s4. s8
  }
  \fourX
}

\gridPutMusic "meta" 4 {
  s1*4 \fourX \break
}

\gridPutMusic "meta" 5 {
  s1*8
  s1*8 \break
}

\gridPutMusic "meta" 6 {
  s1*8 \break
}

\gridPutMusic "meta" 7 {
  s1*5 \bar "|."
}
