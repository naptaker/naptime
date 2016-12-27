\include "global.ily"

\gridPutMusic "bass" 1 {
  \relative c, {
    \repeat unfold 7 {
      \include "notes/bass-Ia.ily"
    }
    \include "notes/bass-Ib.ily"
  }

  \relative c, {
    \repeat volta 2 {
      \set countPercentRepeats = ##t
      \repeat percent 3 {
        \include "notes/bass-Ia.ily"
      }
    }
    \alternative {
      { \include "notes/bass-Ic.ily" }
      { \include "notes/bass-Ib.ily" }
    }
  }
}

\gridCompileCell "bass" 1
