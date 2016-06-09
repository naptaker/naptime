\version "2.19.24"

%% \include "articulate.ly"
\include "instruments.ily"
\include "openlilylib"
\useLibrary gridly

\header {
  title    = "Space is the Place"
  opus     = "Naptime"
  composer = "Eric Bailey"
  poet     = "Preston Y. Drum"
  arranger = "Naptaker"
  copyright = "© 2016 Naptaker"
}

\gridInit 9 #'("meta" "guitar" "bass" "drums up" "drums down")

\gridSetSegmentTemplate 1
\with {
  barNumber = 1
  music     = { s1*8  }
}

\gridSetSegmentTemplate 2
\with {
  barNumber = 9
  music     = { s1*8 }
}

\gridSetSegmentTemplate 3
\with {
  barNumber = 17
  music     = { s1*16 }
}

\gridSetSegmentTemplate 4
\with {
  barNumber = 33
  music     = { s1*8 }
}

\gridSetSegmentTemplate 5
\with {
  barNumber = 41
  music     = { s1*8 }
}

\gridSetSegmentTemplate 6
\with {
  barNumber = 49
  music     = { s1*8 }
}

\gridSetSegmentTemplate 7
\with {
  barNumber = 57
  music     = { s1*16 }
}

\gridSetSegmentTemplate 8
\with {
  barNumber = 73
  music     = { s1 }
}

\gridSetSegmentTemplate 9
\with {
  barNumber = 74
  music     = { s1*24 }
}

\gridPutMusic "meta" 1
\relative c {
  \tempo 4=150
  \mark 1
  s1*8
  \break
}

\gridPutMusic "meta" 2
\relative c {
  \mark 2
  s1*8
  \break
}

\gridPutMusic "meta" 3
\relative c {
  \mark 3
  s1*4 \break
  s1*4 \pageBreak
  s1*4 \break
  s1*4 \break
}

\gridPutMusic "meta" 4
\relative c {
  \mark 4
  s1*4 \break
  s1*4 \break
  \break
}

\gridPutMusic "meta" 5
\relative c {
  \mark 5
  s1*8
  \break
}

\gridPutMusic "meta" 6
\relative c {
  \mark 6
  s1*8
  \break
}

\gridPutMusic "meta" 7
\relative c {
  \mark 7
  s1*16
}

\gridPutMusic "meta" 8
\relative c {
  \mark 8
  s1
  \break
}

\gridPutMusic "meta" 9
\relative c {
  \mark 9
  s1*24
  \bar "|."
}
