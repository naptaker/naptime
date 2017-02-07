\include "global.ily"

\gridPutMusic "chords" 4
\chordmode {
  \set predefinedDiagramTable = #stoner-fret-table
  \repeat volta 2 {
    \include "notes/guitar_strum-IV.ily"
  }
}

\gridCompileCell "chords" 4
