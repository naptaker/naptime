\gridPutMusic "vox" 3
\with {
  lyrics = \lyricmode {
    Loon "Juice!"
    Loon "Juice!"
    Loon "Juice!"
  }
  music = {
    \deadNotesOn
    \repeat volta 4 {
      R1 |
      r2 d4 f |
    }
    \alternative {
      { R1 |
        r2 des4 ges, | }
      { R1*2 }
    }
  }
}
