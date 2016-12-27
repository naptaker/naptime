\include "global.ily"

\gridPutMusic "bass" 3
\relative c, {
  \repeat volta 4 {
    \include "notes/bass-IIIa.ily"
    \include "notes/bass-IIIb.ily"
  }
}

\gridCompileCell "bass" 3
