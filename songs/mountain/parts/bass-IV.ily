\include "global.ily"

\gridPutMusic "bass" 4
\relative c, {
  \repeat volta 2 {
    \set countPercentRepeats = ##f
    \repeat percent 2 {
      \include "notes/bass-IIIa.ily"
      \include "notes/bass-IV.ily"
    }
  }
}

\gridCompileCell "bass" 4
