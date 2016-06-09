\include "include/global.ily"

\gridPutMusic "guitar" 4
\relative c {
  \repeat unfold 2 {
    \include "notes/common-IV.ily"
  }
}

\gridCompileCell "guitar" 4
