\include "global.ily"

\gridPutMusic "bass" 6
\relative c, {
  \repeat unfold 8 {
    \include "notes/bass-Va.ily"
    \include "notes/bass-VI.ily"
  }
}

\gridCompileCell "bass" 6
