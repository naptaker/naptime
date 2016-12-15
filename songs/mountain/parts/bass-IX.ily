\include "global.ily"

\gridPutMusic "bass" 9 {
  \relative c, {
    \repeat unfold 3 {
      \include "notes/bass-Ia.ily"
    }
    \include "notes/bass-Ib.ily"
  }
  \relative c, {
    \repeat unfold 3 {
      \include "notes/bass-Ia.ily"
    }
    \include "notes/bass-Ic.ily"
  }
}

\gridCompileCell "bass" 9
