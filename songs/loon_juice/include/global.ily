\version "2.19.24"

\include "openlilylib"
\addGuilePath "../../../include"
#(load-from-path "naptaker.scm")
\include "fretboards.ily"
%% #(ly:set-option 'relative-includes #t)
\include "preamble.ily"
\include "instruments.ily"

\useLibrary gridly

Key    = { \key c \major }
Tempo  = { \tempo 4 = 183 }
global = { \Tempo \defaultTimeSignature \time 4/4 }

\header {
  title     = "Loon Juice"
  %% subtitle  = \markup {
  %%   \fill-line {
  %%     \center-column {
  %%       \null
  %%       \epsfile #X #100 #"../../mountain/resources/at_the_mountains_of_madness.eps"
  %%       \teeny {
  %%         \line { \italic "At the Mountains of Madness" "by Jonathan Kriz" }
  %%         "https://flic.kr/p/9xRUX4"
  %%       }
  %%     }
  %%   }
  %% }
  composer  = "Naptaker"
  opus      = "Naptime"
  copyright = "© 2016 Naptaker"
}

\templateInit #'("meta"
                 "vox"
                 "chords"
                 "guitar" "guitar strum"
                 "bass"
                 "drums up" "drums down")
              #'(6 6 6 4 6 (1 . 4))

\gridPutMusic "meta" 1 {
 \global
  \mark 1
  s1*6
  \break
}

\gridPutMusic "meta" 2 {
  \mark \markup { \musicglyph #"scripts.segno" }
  s1*6
  \break
}

\gridPutMusic "meta" 3 {
  \mark 3
  \set Score.repeatCommands = #'(start-repeat)
  s1*2
  \set Score.repeatCommands = #'((volta "1, 3") end-repeat)
  s1*2
  \set Score.repeatCommands = #'((volta #f) (volta "2, 4") end-repeat)
  s1
  s2.
  \once \override Score.RehearsalMark.X-offset = #-6
  \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \mark "D.S. al Fine"
  s4
  \set Score.repeatCommands = #'((volta #f))
  \bar ":|.:"
  \pageBreak
}

\gridPutMusic "meta" 4 {
  \mark 4
  \tempo 4 = 82
  s1*4
  \bar ":|."
  \break
}

\gridPutMusic "meta" 5 {
  \mark 5
  \tempo 4 = 192
  s1*6
}

\gridPutMusic "meta" 6 {
  s4
  \bar "|."
}
