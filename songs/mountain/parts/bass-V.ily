\include "global.ily"

\gridPutMusic "bass" 5 {
  \relative c, {
    \set countPercentRepeats = ##t
    \repeat percent 4 {
      \include "notes/bass-IIIa.ily"
      \include "notes/bass-IIIb.ily"
    }
    \relative c, {
      \repeat percent 7 {
        \include "notes/bass-Ia.ily"
      }
      \include "notes/bass-Ib.ily"
    }
  }
}

\gridCompileCell "bass" 5
