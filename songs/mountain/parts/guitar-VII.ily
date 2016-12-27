\include "global.ily"

\gridPutMusic "guitar" 7 {
  \relative c {
    \repeat volta 2 {
      \repeat percent 3 {
        \include "notes/guitar-Ia.ily"
      }
    }
    \alternative {
      { \include "notes/guitar-Ib.ily" }
      { \include "notes/guitar-VII.ily" }
    }
  }
}

\gridCompileCell "guitar" 7
