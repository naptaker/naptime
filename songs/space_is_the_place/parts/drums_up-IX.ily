\include "global.ily"

\gridPutMusic "drums up" 9
\drummode {
  \repeat unfold 3 {
    \include "notes/drums_up-IVa.ily"
    \include "notes/drums_up-IVb.ily"
  }
}

\gridCompileCell "drums up" 9
