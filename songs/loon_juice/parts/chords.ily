\gridPutMusic "chords" 2 \chordmode {
  \set predefinedDiagramTable = #trem-fret-table
  \repeat volta 2 {
    g1 ~ |
    g2 d'4 a |
  }
  \alternative {
    { bes1 ~ |
      bes2 des4 ges, | }
    { bes2 bes |
      \set predefinedDiagramTable = #high-fret-table
      \once \set chordChanges = ##f
      bes8 bes bes bes a4 aes | }
  }
}

\gridPutMusic "chords" 4 \chordmode {
  \set predefinedDiagramTable = #stoner-fret-table
  \repeat volta 2 {
    \include "notes/guitar_strum-IV.ily"
  }
}
