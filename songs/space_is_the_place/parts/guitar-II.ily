\include "global.ily"

\gridPutMusic "guitar" 2
\relative c {
  \repeat unfold 2 {
    \include "notes/guitar-II.ily"
  }
}

\gridCompileCell "guitar" 2
