\include "global.ily"

\gridPutMusic "bass" 1 {
  \relative c, {
    \repeat unfold 7 {
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
  \relative c, {
    \repeat unfold 3 {
      \include "notes/bass-Ia.ily"
    }
    \include "notes/bass-Ib.ily"
  }
}

\gridCompileCell "bass" 1
