\include "global.ily"

\gridPutMusic "guitar" 9 {
  \relative c {
    \repeat unfold 3 {
      \include "notes/guitar-Ia.ily"
    }
    \include "notes/guitar-Ib.ily"
  }
  \relative c {
    \repeat unfold 3 {
      \include "notes/guitar-Ia.ily"
    }
    \include "notes/guitar-IX.ily"
  }
}

\gridCompileCell "guitar" 9
