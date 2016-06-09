\version "2.19.24"

%% \include "articulate.ly"
\include "instruments.ily"
\include "openlilylib"
\useLibrary gridly

Key    = { \key c \major }
Tempo  = { \tempo 4 = 128 }
global = { \Tempo \defaultTimeSignature \time 4/4 }

\header {
  title    = "Smoke All My Cigarettes"
  opus     = "Naptime"
  composer = "Eric Bailey"
  poet     = "Preston Y. Drum"
  arranger = "Naptaker"
  copyright = "© 2016 Naptaker"
}

\gridInit 2 #'("meta" "guitar" "bass" "drums up" "drums down")

\gridSetSegmentTemplate 1
\with {
  barNumber = 1
  music     = { s1*4 }
}

\gridSetSegmentTemplate 2
\with {
  barNumber = 5
  music     = { s1*8 }
}

\gridPutMusic "meta" 1
\relative c {
  \global
  \mark 1
  s1*4
  %% \break
}

\gridPutMusic "meta" 2
\relative c {
  \mark 2
  s1*8
  \break
}
