
\gridPutMusic "drums down" 1
\drummode {
  \repeat unfold 2 {
    \repeat unfold 3 {
      \repeat unfold 2 { \include "notes/drums_down-Ia.ily" } |
    }
    \include "notes/drums_down-Ia.ily"
    \include "notes/drums_down-Ib.ily"
  }
  \repeat volta 2 {
    \repeat percent 3 {
      \include "notes/drums_down-Ia.ily"
      s2 |
    }
  }
  \alternative {
    { \include "notes/drums_down-Ia.ily"
      \include "notes/drums_down-Ib.ily" }
    {
      s1
    }
  }
}

\gridCompileCell "drums down" 1
