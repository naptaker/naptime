\version "2.19.24"
%% \language "english"
\include "openlilylib"
\addGuilePath "../../../include"
#(load-from-path "naptaker.scm")
\include "preamble.ily"
\include "instruments.ily"

\useLibrary gridly

Key    = { \key es \minor }
Tempo  = { \tempo 4 = 152 }
global = { \Tempo \defaultTimeSignature \time 4/4 }

\header {
  %% dedication = "Welcome to"
  title      = \markup \fontsize #4 "Funeral Town"
  %% subtitle   = \markup \teeny "(Eat a Dead Man)"
  composer   = "E. Bailey, P. Drum and S. Albers"
  arranger   = "Naptaker"
  opus       = "Naptime"
  copyright  = "© 2016-2017 Naptaker"
  %% tagline   = \markup \teeny "(Eat a Dead Man)"
  %% tagline    = ##f
}

\templateInit #'("meta"
                 "chords"
                 "guitar strum"
                 "guitar"
                 "bass"
                 "drums up"
                 "drums down")
              #'(8 8 6 8 2 4 6 2)

\include "parts/meta.ily"