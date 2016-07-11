\include "global.ily"

\gridPutMusic "guitar" 6
\relative c' {
  \set minimumFret = #3
  \include "notes/guitar-I.ily"
  \include "notes/guitar-IV.ily"
}

\gridCompileCell "guitar" 6
