\include "global.ily"

\gridPutMusic "guitar" 4
\relative c {
  \ottava #-1
  \include "notes/guitar-IV.ily"
  \ottava #0
  \relative c' {
    \include "notes/guitar-I.ily"
  }
}

\gridCompileCell "guitar" 4
