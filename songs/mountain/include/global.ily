\version "2.19.24"

\include "openlilylib"
\addGuilePath "../../../include"
#(load-from-path "naptaker.scm")
%% \include "fretboards.ily"
%% #(ly:set-option 'relative-includes #t)
\include "preamble.ily"
\include "instruments.ily"

\useLibrary gridly

Key    = { \key f \minor }
Tempo  = { \tempo 4 = 160 }
global = { \Tempo \defaultTimeSignature \time 4/4 }

\header {
  title    = "Mountain"
  opus     = "Naptime"
  composer = "Naptaker"
                                % poet     = "Preston Y. Drum"
  copyright = "© 2016 Naptaker"
}

\templateInit #'("meta"
                 ;; "vox"
                 ;; "chords"
                 "guitar" ; "guitar strum"
                 "bass"
                 "drums up" "drums down"
                )
              #'(16 8 16 8 8 16 16 8 8)

mainBreak = { \tag #'main { \break } }

\gridPutMusic "meta" 1 {
  \global
  \mark 1
  s1*8 \mainBreak
  s1*8 \mainBreak
}

\gridPutMusic "meta" 2 {
  \mark 2
  s1*8 \mainBreak
}

\gridPutMusic "meta" 3 {
  \mark 3
  s1*8 \mainBreak
  s1*8 \mainBreak
}

\gridPutMusic "meta" 4 {
  \mark 4
  s1*8 \mainBreak
}

\gridPutMusic "meta" 5 {
  \mark 5
  s1*8 \mainBreak
}

\gridPutMusic "meta" 6 {
  \mark 6
  s1*8 \mainBreak
  s1*8 \mainBreak
}

\gridPutMusic "meta" 7 {
  \mark 7
  s1*8 \mainBreak
  s1*8 \mainBreak
}

\gridPutMusic "meta" 8 {
  \mark 8
  s1*8 \mainBreak
}

\gridPutMusic "meta" 9 {
  \mark 9
  s1*8
  \bar "|."
}
