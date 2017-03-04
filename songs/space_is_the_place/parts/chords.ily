\gridPutMusic "chords" 2 \chordmode {
  \set predefinedDiagramTable = #intro-fret-table
  \repeat unfold 2 {
    ees2:7 d:7 |
    ees2:7 s   |
    ees2:7 d:7 |
    s1         |
  }
}

\gridPutMusic "chords" 3 \chordmode {
  \set predefinedDiagramTable = #verse-fret-table
  \repeat unfold 4 {
    \repeat unfold 3 {
      s4 ees8:7 s4 ges8:7 bes4 |
    }
    s1
  }
}

%{
\gridPutMusic "chords" 4 \chordmode {
  \repeat unfold 2 {
    ees1 |
    bes1 |
    aes1 |
    ges1 |
  }
}
%}

\gridPutMusic "chords" 5 \chordmode {
  \set predefinedDiagramTable = #fuzz-fret-table
  \repeat unfold 3 {
    b1   |
    fis1 |
  }
  f1 ~ |
  f1   |
}

\gridPutMusic "chords" 6 \chordmode {
  \include "notes/guitar_strum-VI.ily"
}


\gridPutMusic "chords" 7 \chordmode {
  \set predefinedDiagramTable = #stoner-jam-fret-table
  e2.        16    d8.              |
  b2   s8    b16   bes b   d8.      |
  e2   16 d  e     g8      e8.      |
  b2   16 16 bes16 16  a16 16  fis8 |
  e2.                  16  d8.      |
  b2   s8.         s16 b   e   b8   |
  bes1                              |
}


\gridPutMusic "chords" 8 \chordmode {
  \set predefinedDiagramTable = #magic-fret-table
  aes2 b |
}

%{
\gridPutMusic "chords" 9 \chordmode {
  \repeat unfold 6 {
    ees1 |
    bes1 |
    aes1 |
    ges1 |
  }
}
%}
