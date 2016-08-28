\include "global.ily"

\gridPutMusic "drums down" 9
\drummode {
  \repeat unfold 3 {
    \repeat unfold 2 {
      \include "notes/drums_down-IV.ily"
    }
  }
}

\gridCompileCell "drums down" 9
