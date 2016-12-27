\include "global.ily"

\gridPutMusic "guitar" 1 {
  \relative c {
    \repeat unfold 7 {
      \include "notes/guitar-Ia.ily"
    }
    \include "notes/guitar-Ib.ily"
  }

  \relative c {
    \repeat volta 2 {
      \set countPercentRepeats = ##t
      \override PercentRepeatCounter.staff-padding = #1
      \repeat percent 3 {
        \include "notes/guitar-Ia.ily"
      }
    }
    \alternative {
      { \include "notes/guitar-Ic.ily" }
      { \include "notes/guitar-Ib.ily" }
    }
  }
}

\gridCompileCell "guitar" 1
