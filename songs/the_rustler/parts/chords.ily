%%% ================================================================= [ Chords ]

\gridPutMusic "chords" 3 \chordmode {
  f1 ~ |
  f1 |
}


\gridPutMusic "chords" 4 \chordmode {
  \repeat volta 4 {
    \once \set chordChanges = ##f
    f4. f f4 |
    as4 r bes c |
  }
  \alternative {
    { f4. f f4 |
      as4 b bes ges }
    { \once \set chordChanges = ##f
      c8 c c c as as c as |
      b8 b g g bes bes ges ges | }
  }
}


\gridPutMusic "chords" 5 \chordmode {
  s1*4
  f4. f f4 |
  f1
}


\gridPutMusic "chords" 6 \chordmode {
  f4
}


%%% ==================================================================== [ EOF ]
