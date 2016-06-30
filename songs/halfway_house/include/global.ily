\version "2.19.24"

#(load "../../include/naptaker.scm")
\include "preamble.ily"
\include "instruments.ily"
\include "openlilylib"
\useLibrary gridly

Key    = { \key c \major }
Tempo  = { \tempo 4 = 220 }
global = { \Tempo \defaultTimeSignature \time 4/4 }

\header {
  title     = "Halfway House"
  opus      = "Naptime"
  composer  = "Sam Albers"
  %% poet      = "Preston Y. Drum"
  arranger  = "Naptaker"
  copyright = "© 2016 Naptaker"
}

\gridInit 2 #'("meta" "vox" "guitar" "bass" "drums up" "drums down")

\templateInit #'(16 16)

\gridPutMusic "meta" 1
{
  \global
  \mark 1
  s1*8 \break
  s1*8 \break
}

\gridPutMusic "meta" 2
{
  \mark 2
  \global
  s1*8 \break
  s1*8 \break
}
