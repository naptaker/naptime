\include "global.ily"

\gridPutMusic "drums up" 1
\drummode {
  \repeat unfold 2 {
    \repeat unfold 3 {
      \repeat unfold 2 { \include "notes/drums_up-Ia.ily" } |
    }
    \include "notes/drums_up-Ia.ily"
    \include "notes/drums_up-Ib.ily"
  }
  %% \bar "||"
  \repeat unfold 2 {
    \repeat unfold 3 {
      \repeat unfold 2 { \include "notes/drums_up-Ic.ily" } |
    }
    \include "notes/drums_up-Ic.ily"
    \include "notes/drums_up-Ib.ily"
  }
}

\gridCompileCell "drums up" 1
