\include "global.ily"

\gridPutMusic "guitar" 3
\relative d' {
  \repeat unfold 3 {
    \include "notes/guitar-III.ily"
  }
}

\gridCompileCell "guitar" 3
