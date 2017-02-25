\include "global.ily"

\gridPutMusic "bass" 1
\relative c, {
  \repeat percent 2 {
    \include "notes/bass-Ia.ily"
    \include "notes/bass-Ib.ily"
    \include "notes/bass-Ia.ily"
    \include "notes/bass-Ic.ily"
  }

  \once \omit Staff.TimeSignature
  \repeat percent 4 {
    \include "notes/bass-Ia.ily"
    \include "notes/bass-Ib.ily"
  }
}

\gridCompileCell "bass" 1
