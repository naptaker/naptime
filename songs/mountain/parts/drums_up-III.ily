\include "global.ily"

\gridPutMusic "drums up" 3 {
  \drummode {
    << { \gridGetCellMusic "drums up" 1 } \\
       { cymc1 } >>
  }
}

\gridCompileCell "drums up" 3
