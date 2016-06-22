\include "global.ily"

\gridPutMusic "guitar" 4
\relative c {
  \repeat unfold 2 {
    \include "notes/guitar-IV.ily"
  }
}

\gridCompileCell "guitar" 4
