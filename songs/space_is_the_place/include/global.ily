\version "2.19.24"

#(load "../../include/naptaker.scm")
\include "preamble.ily"
\include "instruments.ily"
\include "openlilylib"
\useLibrary gridly

Key    = { \key c \major }
Tempo  = { \tempo 4 = 150 }
global = { \Tempo \defaultTimeSignature \time 4/4 }

\header {
  title    = "Space is the Place"
  opus     = "Naptime"
  composer = "Eric Bailey"
  poet     = "Preston Y. Drum"
  arranger = "Naptaker"
  copyright = "© 2016 Naptaker"
}

\gridInit 9 #'("meta" "vox" "guitar" "bass" "drums up" "drums down")

\templateInit #'(8 8 16 8 8 8 16 1 24)

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
  s1*4 \break
  s1*4 \pageBreak
  s1*4 \break
  s1*4 \break
}

\gridPutMusic "meta" 4
{
  \mark 4
  s1*4 \break
  s1*4 \break
  \break
}

\gridPutMusic "meta" 5
{
  \mark 5
  s1*8
  \break
}

\gridPutMusic "meta" 6
{
  \mark 6
  s1*8
  \break
}

\gridPutMusic "meta" 7
{
  \mark 7
  s1*16
}

\gridPutMusic "meta" 8
{
  \mark 8
  s1
  \break
}

\gridPutMusic "meta" 9
{
  \mark 9
  s1*24
  \bar "|."
}
