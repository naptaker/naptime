\include "global.ily"

\gridPutMusic "drums up" 6
\drummode {
  \repeat unfold 2 {
    \include "notes/drums_up-VIa.ily"
    \include "notes/drums_up-VIb.ily"
    \include "notes/drums_up-VIa.ily"
    \include "notes/drums_up-VIc.ily"
  }
}

\gridCompileCell "drums up" 6
