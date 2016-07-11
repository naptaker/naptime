\include "global.ily"

\gridPutMusic "guitar strum" 3
\relative c {
  \repeat unfold 3 {
    \include "notes/guitar-strum-III.ily"
  }
}

\gridCompileCell "guitar strum" 3
