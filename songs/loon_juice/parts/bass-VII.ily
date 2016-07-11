\include "global.ily"

\gridPutMusic "bass" 7
\relative c, {
  \repeat unfold 2 {
    \include "notes/bass-VII.ily"
  }
}

\gridCompileCell "bass" 7
