\include "global.ily"

\gridPutMusic "guitar" 2
\relative c {
  \repeat unfold 2 {
    \include "notes/guitar-I.ily"
  }
}

\gridCompileCell "guitar" 2
