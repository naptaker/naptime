\include "global.ily"

\gridPutMusic "bass" 2
\relative c, {
  \repeat unfold 2 {
    \include "notes/bass-II.ily"
  }
}

\gridCompileCell "bass" 2
