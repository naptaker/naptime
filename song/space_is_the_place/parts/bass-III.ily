\include "global.ily"

\gridPutMusic "bass" 3
\relative c {
  %% \key ees \minor

  %% 1-3
  \repeat unfold 3 {
    \include "notes/bass-III.ily"
    \include "notes/common-IIIa.ily"
  }

  %% 4
  \include "notes/bass-III.ily"
  \include "notes/common-IIIb.ily"
}

\gridCompileCell "bass" 3
