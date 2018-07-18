%%% ================================================================= [ Chords ]

\gridPutMusic "chords" 1 \chordmode {
  \repeat unfold 2 {
    d4 s s2 |
    b4 s s2 |
    d4 s s2 |
  }
  \alternative {
    { s4 s b s | }
    { s1 | }
  }
}


\gridPutMusic "chords" 2 \chordmode {
  \repeat unfold 2 {
    s4 \once \set chordChanges = ##f d s cis |
    s8 c4 b8 s2 |
    s4 d s8
  }
  \alternative {
    { cis4 b8 | s1 | }
    { c4 b8 | s1 | }
  }
}


\gridPutMusic "chords" 4 \chordmode {
  \repeat unfold 2 {
    \gridGetCellMusic "chords" 2
  }
}


%%% ==================================================================== [ EOF ]
