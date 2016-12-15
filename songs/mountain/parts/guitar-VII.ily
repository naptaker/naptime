\include "global.ily"

\gridPutMusic "guitar" 7
\relative c' {
  \repeat unfold 2 {
    \include "notes/guitar-VII.ily"
  }
}

\gridCompileCell "guitar" 7
