\include "global.ily"

\gridPutMusic "guitar strum" 1
\relative c {
  \repeat percent 2 {
    \repeat percent 2 {
      \include "notes/guitar_strum-Ia.ily"
      \include "notes/guitar_strum-Ib.ily"
    }
  }
  \stopStaff
  \once \omit Staff.TimeSignature
  s1*4
}

\gridCompileCell "guitar strum" 1
