\gridPutMusic "drums up" 1 \drummode {
  \temporary \override MultiMeasureRest.staff-position = #2
  \temporary \override Rest.staff-position = #0

  R1*3 |

  \temporary \override NoteHead.color = #red
  \temporary \override Stem.color     = #red

  r2 sn2:16 |
}


\gridPutMusic "drums up" 2 \drummode {
  \temporary \override NoteHead.color = #red
  \temporary \override Stem.color     = #red

  \repeat unfold 4 {
    r4 sn8 r4 r8 sn4 |
    r4 sn8 r4 r8 sn4 |
  }
  \alternative {
    { r4 sn8 r4 r8 sn4 |
      r4 sn8 r4 r8 sn4 | }
    { r4 sn8 r4 r8 sn4 |
      r4 sn8 r4 r8 sn4 | }
    { r4 sn8 r4 r8 sn4 |
      r4 sn8 r4 r8 sn4 | }
    { r4 sn8 r4 r8 sn4 |
      r4 sn8 r4 }
  }
}

\gridPutMusic "drums down" 2 \drummode {
  \temporary \override NoteHead.color = #red
  \temporary \override Stem.color     = #red

  \repeat unfold 4 {
    bd4 r8 bd4 bd8 r4 |
    bd4 r8 bd4 bd8 r4 |
  }
  \alternative {
    { bd4 r8 bd4 bd8 r4 |
      bd4 r8 bd4 bd8 r4 | }
    { bd4 r8 bd4 bd8 r4 |
      bd4 r8 bd4 bd8 r4 | }
    { bd4 r8 bd4 bd8 r4 |
      bd4 r8 bd4 bd8 r4 | }
    { bd4 r8 bd4 bd8 r4 |
      bd4 r8 bd4 }
  }
}
