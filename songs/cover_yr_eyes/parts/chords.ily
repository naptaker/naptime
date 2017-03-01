\include "fretboards.ily"

\gridPutMusic "chords" 1
\chordmode {
  \set predefinedDiagramTable = #fuzz-fret-table
  \set noChordSymbol = ""
  \include "notes/guitar_strum-I.ily"
  s1*7 |
}

\gridPutMusic "chords" 3
\chordmode {
  \set predefinedDiagramTable = #fuzz-fret-table
  \include "notes/guitar_strum-III.ily"
}

\gridPutMusic "chords" 5
\chordmode {
  \set predefinedDiagramTable = #fuzz-fret-table
  d4
}
