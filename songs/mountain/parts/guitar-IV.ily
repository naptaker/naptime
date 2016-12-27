\include "global.ily"

\gridPutMusic "guitar" 4
\relative c {
  \repeat volta 2 {
    \include "notes/guitar-IVa.ily"
    \include "notes/guitar-IVb.ily"
  }
}

\gridCompileCell "guitar" 4
