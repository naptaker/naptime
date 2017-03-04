\include "global.ily"

\gridPutMusic "guitar" 9
\relative c {
  \ottava #-1
  \include "notes/guitar-II.ily"
  \ottava #0
  \relative c' {
    \include "notes/guitar-I.ily"
  }
  \relative c' {
    \include "notes/guitar-III.ily"
  }
  \relative c {
    \include "notes/guitar-IX.ily"
  }
}

\gridCompileCell "guitar" 9
