\include "global.ily"

\gridPutMusic "drums down" 3
\drummode {
  \repeat volta 4 {
    bd2 bd8 bd s4 |
    bd4. bd8 bd2 |
  }
  \alternative {
    { bd2 bd8 bd4 bd8 |
      bd2 bd | }
    { bd2 s8 bd s bd | % FIXME
      bd8 bd bd bd bd bd bd bd | }
  }
}

\gridCompileCell "drums down" 3
