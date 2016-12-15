\include "global.ily"

\gridPutMusic "guitar" 8
\relative c {
  \repeat unfold 2 {
    \include "notes/guitar-VI.ily"
  }
}

\gridCompileCell "guitar" 8
