\include "global.ily"

\gridPutMusic "drums down" 9
\drummode {
  \repeat unfold 2 {
    \repeat unfold 3 {
      \repeat unfold 2 { \include "notes/drums_down-Ia.ily" } |
    }
    \include "notes/drums_down-Ia.ily"
    s2 |
  }
}

\gridCompileCell "drums down" 9
