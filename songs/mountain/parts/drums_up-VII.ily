\include "global.ily"

\gridPutMusic "drums up" 7
\drummode {
  \repeat volta 2 {
    \repeat percent 3 {
      \repeat unfold 2 { \include "notes/drums_up-Ia.ily" } |
    }
  }
  \alternative {
    { \include "notes/drums_up-Ia.ily" cymc2 | }
    { % #(make-music 'PercentEvent 'length (ly:make-moment 1)) |
      \include "notes/drums_up-Ia.ily" cymc2 | }
  }
}

\gridCompileCell "drums up" 7
