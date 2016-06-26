\include "global.ily"

\gridPutMusic "bass" 7
\relative c, {
  R1*4
  \repeat percent 24 {
    \include "notes/bass-VII.ily"
  }
}

\gridCompileCell "bass" 7
