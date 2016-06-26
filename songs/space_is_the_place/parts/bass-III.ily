\include "global.ily"

\gridPutMusic "bass" 3
\relative c, {
  %% 1-3
  \repeat unfold 3 {
    \include "notes/bass-III.ily"
    \include "notes/bass-IIIa.ily"
  }

  %% 4
  \include "notes/bass-III.ily"
  \include "notes/bass-IIIb.ily"
}

\gridCompileCell "bass" 3
