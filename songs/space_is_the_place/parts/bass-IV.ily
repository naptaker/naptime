\include "global.ily"

\gridPutMusic "bass" 4
\relative c {
  \repeat unfold 2 {
    \include "notes/common-IV.ily"
  }
}

\gridCompileCell "bass" 4
