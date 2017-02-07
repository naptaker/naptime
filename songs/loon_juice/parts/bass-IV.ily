\include "global.ily"

\gridPutMusic "bass" 4
\relative c, {
  \repeat volta 2 {
    \include "notes/bass-IV.ily"
  }
}

\gridCompileCell "bass" 4
