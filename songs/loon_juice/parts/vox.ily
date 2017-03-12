\gridPutMusic "vox" 3
\with {
  lyrics = \lyricmode {
    Loon "Juice!"
    Loon "Juice!"
    Loon "Juice!"
  }
  music = {
    \once \omit Staff.BarLine
    \deadNotesOn
    \repeat volta 4 {
      \bye R1 |
      r2 \hi d4 f |
    }
    \alternative {
      { \bye R1 |
        r2 \hi des4 ges, | }
      { \bye R1*2 }
    }
  }
}
