\include "global.ily"

\gridPutMusic "drums up" 1
\drummode {
  \repeat percent 2 {
    \repeat percent 2 {
      cymc4 \repeat unfold 6 { hho8 } |
    }
  }
  \repeat percent 3 {
    cymc4 \repeat unfold 6 { hho8 } |
  }
  cymc4 tomh4 tomh16 tomh \repeat unfold 6 { toml } |
}

\gridCompileCell "drums up" 1
