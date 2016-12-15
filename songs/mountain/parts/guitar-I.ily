\include "global.ily"

\gridPutMusic "guitar" 1 {
  \relative c {
    \repeat unfold 7 {
      \include "notes/guitar-Ia.ily"
    }
    \include "notes/guitar-Ib.ily"
  }

  \relative c {
    \repeat unfold 3 {
      \include "notes/guitar-Ia.ily"
    }
    \include "notes/guitar-Ic.ily"
  }
  \relative c {
    \repeat unfold 3 {
      \include "notes/guitar-Ia.ily"
    }
    \include "notes/guitar-Ib.ily"
  }
}

\gridCompileCell "guitar" 1
