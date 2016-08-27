\include "global.ily"

\gridPutMusic "guitar strum" 7
\relative c {
  \repeat unfold 2 {
    \include "notes/guitar_strum-VII.ily"
  }
}

\gridCompileCell "guitar strum" 7
