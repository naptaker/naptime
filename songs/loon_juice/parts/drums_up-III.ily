\include "global.ily"

\gridPutMusic "drums up" 3
\drummode {
  \slurDown
  \repeat volta 4 {
    cymr4 <sn hhho>8 \flam <sn hhho> hhho8 hhho <sn hhho> \flam <sn hhho> |
    hhho8 hhho <sn hhho> \flam <sn hhho> cymc4 <sn cymr> |
  }
  \alternative {
    { cymr4 <sn hhho>8 \flam <sn hhho> hhho8 hhho <sn hhho> \flam <sn hhho> |
      hhho8 hhho <sn hhho> \flam <sn hhho> cymc4 <sn cymr> | }
    { cymc4 <sn cymr>8 <sn cymr> cymr cymr <sn cymr> \flam <sn cymr> |
      cymr16 \flam sn sn sn tomml sn sn sn tomml tomml toml toml toml toml toml toml | }
  }
}

\gridCompileCell "drums up" 3
