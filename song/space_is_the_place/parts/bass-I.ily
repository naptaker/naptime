\include "include/global.ily"

\gridPutMusic "bass" 1
\relative c {
  \clef "bass"
  %% \key ees \minor
  \repeat unfold 2 {
    \include "notes/bass-I.ily"
  }
}

\gridCompileCell "bass" 1
