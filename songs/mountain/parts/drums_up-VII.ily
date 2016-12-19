\include "global.ily"

\gridPutMusic "drums up" 7
\drummode {
  \repeat unfold 4 {
    \include "notes/drums_up-VIIa.ily"
  }
  \repeat unfold 2 {
    \include "notes/drums_up-VIIb.ily"
  }
}

\gridCompileCell "drums up" 7
