\include "global.ily"

\gridPutMusic "guitar" 6
\relative c {
  \repeat unfold 4 {
    \include "notes/guitar-VI.ily"
  }
}

\gridCompileCell "guitar" 6