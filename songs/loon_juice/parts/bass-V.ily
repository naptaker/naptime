\include "global.ily"

\gridPutMusic "bass" 5
\relative c, {
  \repeat unfold 2 {
    \include "notes/bass-III.ily"
  }
}

\gridCompileCell "bass" 5
