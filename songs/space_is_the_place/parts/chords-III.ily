\include "global.ily"

\gridPutMusic "chords" 3
\chordmode {
  \set predefinedDiagramTable = #verse-fret-table
  \repeat unfold 4 {
    \repeat unfold 3 {
      s4 ees8:7 s4 ges8:7 bes4 |
    }
    s1
  }
}
