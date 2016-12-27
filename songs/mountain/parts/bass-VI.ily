\include "global.ily"

\gridPutMusic "bass" 6 {
  \relative c, {
    \repeat percent 3 {
      \include "notes/bass-Ia.ily"
    }
    \include "notes/bass-Ic.ily"
  }
  \relative c, {
    \repeat percent 3 {
      \include "notes/bass-Ia.ily"
    }
    \include "notes/bass-Ib.ily"
  }
}

\gridCompileCell "bass" 6
