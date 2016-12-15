\include "global.ily"

\gridPutMusic "drums down" 1
\drummode {
  \repeat unfold 4 {
    \repeat unfold 3 {
      \repeat unfold 2 { \include "notes/drums_down-Ia.ily" } |
    }
    \include "notes/drums_down-Ia.ily"
    \include "notes/drums_down-Ib.ily"
  }
}

\gridCompileCell "drums down" 1
