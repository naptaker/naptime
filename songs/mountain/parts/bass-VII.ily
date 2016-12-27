\include "global.ily"

\gridPutMusic "bass" 7 {
  \relative c, {
    \repeat volta 2 {
      \repeat percent 3 {
        \include "notes/bass-Ia.ily"
      }
    }
    \alternative {
      { \include "notes/bass-Ib.ily" }
      { \include "notes/bass-Ic.ily" }
    }
  }
}

\gridCompileCell "bass" 7
