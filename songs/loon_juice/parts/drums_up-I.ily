\include "global.ily"

\gridPutMusic "drums up" 1
\drummode {
  \override MultiMeasureRest.staff-position = #2
  \override Rest.staff-position = #0
  \repeat volta 2 {
    R1 |
    r2 sn4 sn |
  }
  \alternative {
    { R1 |
      r2 sn4 sn | }
    { R1 |
      sn16 sn sn sn tomml sn sn sn tomml tomml toml toml toml toml toml toml | }
  }
}

\gridCompileCell "drums up" 1
