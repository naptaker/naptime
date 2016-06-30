\include "global.ily"
\include "notation-snippets/guitar-string-bending/definitions.ily"

\gridPutMusic "guitar" 1
\relative c {
  \repeat unfold 4 {
    \include "notes/guitar-I.ily"
  }
}

\gridCompileCell "guitar" 1
