\version "2.19.24"

#(load "../../include/naptaker.scm")
\include "preamble.ily"
\include "instruments.ily"
\include "openlilylib"
\useLibrary gridly

Key    = { \key c \major }
Tempo  = { \tempo 4 = 192 }
global = { \Tempo \defaultTimeSignature \time 4/4 }

\header {
  title     = "Disco Ball"
  opus      = "Naptime"
  composer  = "Preston Y. Drum"
  poet      = "Preston Y. Drum"
  arranger  = "Naptaker"
  copyright = "© 2016 Naptaker"
}

\gridInit 4 #'("meta" "vox" "guitar" "bass" "drums up" "drums down")

\templateInit #'(8 8 24 16)

\gridPutMusic "meta" 1
{
  \global
  \mark 1
  s1*8
  \break
}

\gridPutMusic "meta" 2
{
  \mark 2
  \global
  s1*8
  \break
}

\gridPutMusic "meta" 3
{
  \mark 3
  s1*24
  \break
}

\gridPutMusic "meta" 4
{
  \mark 4
  s1*16
  \break
}
