\include "global.ily"

\gridPutMusic "bass" 4 {
  << {
    \gridGetCellMusic "bass" 1
  } \\ {
    s1 s1_\markup \italic "bridge only"
  } >>
}

\gridCompileCell "bass" 4
