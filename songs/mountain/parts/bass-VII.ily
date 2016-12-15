\include "global.ily"

\gridPutMusic "bass" 7 {
  \relative c, {
    \repeat unfold 4 {
      \include "notes/bass-Va.ily"
      \include "notes/bass-Vb.ily"
    }
    \relative c, {
      \repeat unfold 7 {
        \include "notes/bass-Ia.ily"
      }
      \include "notes/bass-Ib.ily"
    }
  }
}

\gridCompileCell "bass" 7
