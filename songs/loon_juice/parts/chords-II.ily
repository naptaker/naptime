\include "global.ily"

\gridPutMusic "chords" 2
\chordmode {
  \set predefinedDiagramTable = #trem-fret-table
  \repeat volta 2 {
    g1 ~ |
    g2 d'4 a |
  }
  \alternative {
    { bes1 ~ |
      bes2 des4 des | }
    { bes2 bes |
      \set predefinedDiagramTable = #high-fret-table
      d8 d d d des4 c | }
  }
}

\gridCompileCell "chords" 2
