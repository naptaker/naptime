\include "global.ily"

\gridPutMusic "bass" 8 {
  \relative c, {
    \repeat unfold 3 {
      \include "notes/bass-Ia.ily"
    }
    \include "notes/bass-Ic.ily"
  }
  \relative c, {
    \repeat unfold 3 {
      \include "notes/bass-Ia.ily"
    }
    \include "notes/bass-Ib.ily"
  }
}

\gridCompileCell "bass" 8
