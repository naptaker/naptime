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

\templateInit #'("meta"
                 "vox"
                 "guitar" "guitar strum"
                 "bass"
                 "drums up" "drums down")
              #'(8 8 24 14 2)

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
  s1*8
  \break
}

\gridPutMusic "meta" 3
{
  \mark 3
  s1*8 \break
  s1*8 \break
  s1*8 \break
}

\gridPutMusic "meta" 4
{
  \mark 4
  s1*8 \break
  s1*6 \break
  \break
}

\gridPutMusic "meta" 5
{
  \mark 5
  s1*2
}
