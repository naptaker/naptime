\include "global.ily"

\gridPutMusic "guitar" 5
\relative c' {
  \repeat unfold 2 {
    \include "notes/guitar-V.ily"
  }
}

\gridCompileCell "guitar" 5
