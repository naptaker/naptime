\include "global.ily"

\gridPutMusic "guitar strum" 2
\relative c {
  \repeat volta 2 {
    \include "notes/guitar_strum-II.ily"
  }
}

\gridCompileCell "guitar strum" 2
