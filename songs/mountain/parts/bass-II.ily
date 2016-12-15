\include "global.ily"

\gridPutMusic "bass" 2 {
  \repeat unfold 2 {
    \relative c,, {
      \include "notes/bass-IIa.ily"
      \include "notes/bass-IIb.ily"
      \include "notes/bass-IIa.ily"
      \include "notes/bass-IIc.ily"
    }
  }
}

\gridCompileCell "bass" 2
