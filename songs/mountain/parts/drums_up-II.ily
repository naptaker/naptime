\include "global.ily"

\gridPutMusic "drums up" 2
\drummode {
  \repeat unfold 3 {
    \include "notes/drums_up-IIa.ily"
  }
  \include "notes/drums_up-IIb.ily"
}

\gridCompileCell "drums up" 2
