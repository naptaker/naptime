\include "global.ily"

\gridPutMusic "drums down" 2
\drummode {
  \repeat unfold 3 {
    \include "notes/drums_down-IIa.ily"
    \include "notes/drums_down-IIb.ily"
  }
  \include "notes/drums_down-IIa.ily"
  \include "notes/drums_down-IIc.ily"
}

\gridCompileCell "drums down" 2