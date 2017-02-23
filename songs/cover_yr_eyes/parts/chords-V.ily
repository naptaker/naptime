\include "global.ily"

\gridPutMusic "chords" 5
\chordmode {
  \set predefinedDiagramTable = #fuzz-fret-table
  s1*7 % HACK
  d4
}

\gridCompileCell "chords" 5
