\include "global.ily"

\gridPutMusic "drums up" 9
\drummode {
  \repeat unfold 2 {
    \repeat unfold 3 {
      \repeat unfold 2 { \include "notes/drums_up-Ia.ily" } |
    }
    \include "notes/drums_up-Ia.ily"
    cymc2 |
  }
}

\gridCompileCell "drums up" 9