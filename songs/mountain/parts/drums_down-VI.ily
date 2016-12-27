\include "global.ily"

\gridPutMusic "drums down" 6
\drummode {
  \repeat percent 2 {
    \include "notes/drums_down-Vb.ily"
  }
  \repeat percent 3 {
    \repeat percent 2 {
      \repeat unfold 2 {
        s8 bd8
      }
    }
  }
  \repeat unfold 4 {
    s8 bd8
  }
}

\gridCompileCell "drums down" 6
