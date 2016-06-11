\include "global.ily"

\gridPutMusic "bass" 9
\relative c {
  \repeat unfold 2 {
    \include "notes/bass-II.ily"
  }
  \relative c {
    \repeat unfold 2 {
      \include "notes/bass-III.ily"
    }
    \include "notes/bass-IX.ily"
  }
}

\gridCompileCell "bass" 9
