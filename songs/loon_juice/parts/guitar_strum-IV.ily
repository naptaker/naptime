\include "global.ily"

\gridPutMusic "guitar strum" 4
\relative c {
  \repeat unfold 2 {
    \include "notes/guitar_strum-IV.ily"
  }
}

\gridCompileCell "guitar strum" 4
