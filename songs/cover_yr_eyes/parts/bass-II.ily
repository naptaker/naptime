\include "global.ily"

\gridPutMusic "bass" 2
\relative c, {
  \repeat volta 4 {
    \repeat percent 6 {
      \include "notes/bass-Ia.ily"
      \include "notes/bass-Ib.ily"
    }
  }
  \alternative {
    { \include "notes/bass-II.ily" }
    { #(make-music 'DoublePercentEvent 'length (ly:make-moment 2/1)) }
    { \relative c, { \include "notes/bass-V.ily" } }
  }
}

\gridCompileCell "bass" 2
