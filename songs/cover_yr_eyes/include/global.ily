\version "2.19.24"

\include "openlilylib"
\addGuilePath "../../../include"
#(load-from-path "naptaker.scm")
%% TODO: %% #(ly:set-option 'relative-includes #t)
\include "preamble.ily"
\include "instruments.ily"

\useLibrary gridly

Key    = { \key d \major }
Tempo  = { \tempo 4 = 182 }
global = { \Tempo \defaultTimeSignature \time 4/4 }

\header {
  title     = "Cover Yr Eyes"
  opus      = "Naptime"
  composer  = "Preston Y. Drum"
  poet      = "Preston Y. Drum"
  arranger  = "Arr. Naptaker"
  copyright = "© 2016-2017 Naptaker"
}

\templateInit #'("meta"
                 "vox"
                 "chords"
                 "guitar" "guitar strum"
                 "bass"
                 "drums up" "drums down")
              #'(8 12 8 8 (1 . 4))

\gridPutMusic "meta" 1 {
  \global
  %% \mark \markup Intro
  s1*4 \break
  s1*4
  \bar "||"
  \pageBreak
}

\gridPutMusic "meta" 2 {
  %% \mark Verse
  \mark \markup { \musicglyph #"scripts.segno" }
  \set Score.repeatCommands = #'(start-repeat)
  s1*6
  \break
  \set Score.repeatCommands = #'((volta "1.") end-repeat)
  s1*2
  \set Score.repeatCommands = #'((volta "2, 3") end-repeat)
  s1*2
  \set Score.repeatCommands = #'((volta "4.") end-repeat)
  s1*2
  \set Score.repeatCommands = #'((volta #f))
  \bar ".|:-||" %% NOTE: write this shit down somewhere... wtf
  \pageBreak
}

\gridPutMusic "meta" 3 {
  %% \mark Chorus
  s1*8
  \break
}

\gridPutMusic "meta" 4 {
  %% \mark "Bridge / Outro"
  s1*8
  \bar "||"
}

\gridPutMusic "meta" 5 {
  s4
  \bar "|."
}
