\include "global.ily"

\gridPutMusic "drums down" 7
\drummode {
  \repeat volta 2 {
    \repeat percent 3 {
      \repeat unfold 2 { \include "notes/drums_down-Ia.ily" } |
    }
  }
  \alternative {
    { \include "notes/drums_down-Ia.ily" s2 | }
    { \include "notes/drums_down-Ia.ily" s2 | }
  }
}

\gridCompileCell "drums down" 7
