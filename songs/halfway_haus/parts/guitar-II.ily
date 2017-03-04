\include "global.ily"

\gridPutMusic "guitar" 2
\relative fis, {
  \repeat unfold 3 {
    \include "notes/guitar-IIa.ily"
    \include "notes/guitar-IIb.ily"
  }
  \relative fis, {
    \include "notes/guitar-IIa.ily"
    \include "notes/guitar-IIc.ily"
  }
}

\gridCompileCell "guitar" 2
