\include "global.ily"

\gridPutMusic "bass" 1
\relative c, {
  \repeat unfold 2 {
    \include "notes/bass-I.ily"
  }
}

\gridCompileCell "bass" 1
