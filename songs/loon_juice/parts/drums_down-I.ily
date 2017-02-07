\include "global.ily"

\gridPutMusic "drums down" 1
\drummode {
  \repeat volta 2 {
    s1 |
    s2 bd4 bd |
  }
  \alternative {
    { s1 |
      s2 bd4 bd | }
    { s1 |
      bd4 bd bd bd | }
  }
}

\gridCompileCell "drums down" 1
