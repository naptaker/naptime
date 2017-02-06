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
  opus      = "Naptime"
  composer  = "Naptaker"
  copyright = "© 2016 Naptaker"
}

\templateInit #'("meta"
                 "vox"
                 "chords"
                 "guitar" "guitar strum"
                 "bass"
                 "drums up" "drums down")
              #'(6 8 6 8 8 (1 . 4))

\gridPutMusic "meta" 1 {
 \global
  \mark 1
  s1*6
  \break
}

\gridPutMusic "meta" 2 {
  \mark \markup { \musicglyph #"scripts.segno" }
  s1*8
  \break
}

\gridPutMusic "meta" 3 {
  \mark 3
  s1*6
  \pageBreak
}

\gridPutMusic "meta" 4 {
  \mark 4
  \tempo 4 = 82
  s1*8
  \bar "||"
  \break
}

\gridPutMusic "meta" 5 {
  \mark 5
  \tempo 4 = 192
  s1*8
}

\gridPutMusic "meta" 6 {
  s4
  \bar "|."
}
