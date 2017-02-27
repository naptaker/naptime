\version "2.19.24"

\include "openlilylib"
\addGuilePath "../../../include"
#(load-from-path "naptaker.scm")
%% TODO: %% #(ly:set-option 'relative-includes #t)
\include "preamble.ily"
\include "instruments.ily"

\useLibrary gridly

Key    = { \key d \minor }
Tempo  = { \tempo 4 = 182 }
global = { \Tempo \defaultTimeSignature \time 4/4 }

\header {
  title     = "Cover Yr Eyes"
  opus      = "Naptime"
  composer  = "Preston Y. Drum"
  poet      = "Preston Y. Drum"
  arranger  = "Naptaker"
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
  s1*8
  \bar ".|:-||"
  \pageBreak
}

\gridPutMusic "meta" 2 {
  \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
  #'((Y-offset . 10))
  %% \mark \markup \box \smallCaps Verse
  \mark \markup \musicglyph #"scripts.segno"
  \set Score.repeatCommands = #'(start-repeat)
  s1*6^\markup \small \italic "ad lib minimal blues guitar"
  \break

  \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
  #'((Y-offset . 75))
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
  %% \mark \markup \box \smallCaps Chorus
  \repeat volta 2 {
    s1*8
  }
  \break
}

\gridPutMusic "meta" 4 {
  %% \mark "Bridge / Outro"
  s1*7
  s2.
  \once \override Score.RehearsalMark.X-offset = #-7.5
  \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \mark "D.S. al Fine"
  s4
  \bar "||"
}

\gridPutMusic "meta" 5 {
  s4
  \bar "|."
}
