\include "global.ily"

\gridPutMusic "bass" 5
\relative c, {
  \repeat unfold 4 {
    \include "notes/bass-Va.ily"
    \include "notes/bass-Vb.ily"
  }
}

\gridCompileCell "bass" 5
