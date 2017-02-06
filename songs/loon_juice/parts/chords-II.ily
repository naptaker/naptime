\include "global.ily"

\gridPutMusic "chords" 2
\chordmode {
  \set predefinedDiagramTable = #trem-fret-table
  g1 ~ |
  g2 d'4 a |
  bes1 ~ |
  bes2 des4 des |

  g1 ~ |
  g2 d'4 a |
  bes2 bes |
  \set predefinedDiagramTable = #high-fret-table
  d8 d d d des4 c |
}

\gridCompileCell "chords" 2
