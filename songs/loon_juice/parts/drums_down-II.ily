\include "global.ily"

\gridPutMusic "drums down" 2
\drummode {
  \repeat volta 2 {
    bd2 bd |
    bd4. bd8 bd bd4 bd8 | % bd4. bd8 bd \once \tieUp bd ~ bd bd |
    % bd4. bd8 bd bd bd bd |
  }
  \alternative {
    { bd2 bd |
      bd2 bd4 bd | }
    { bd2 bd4. bd8 |
      bd4 bd bd bd | }
  }
}

\gridCompileCell "drums down" 2
