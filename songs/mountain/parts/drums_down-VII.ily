\include "global.ily"

\gridPutMusic "drums down" 7
\drummode {
  \repeat unfold 4 {
    \include "notes/drums_down-VIIa.ily"
  }
  \repeat unfold 2 {
    \include "notes/drums_down-VIIb.ily"
  }
}

\gridCompileCell "drums down" 7
