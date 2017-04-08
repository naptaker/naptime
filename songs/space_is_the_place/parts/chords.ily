%%% ============================================================ [ Fret Boards ]

\include "predefined-guitar-fretboards.ly"

%%% Intro Fret Table

#(define intro-fret-table (make-fretboard-table))

\storePredefinedDiagram #intro-fret-table
\chordmode { ees:7 }
#guitar-open-d-tuning
#'((capo 3)
   (place-fret 5 6)
   (place-fret 4 5)
   (place-fret 3 4)
   (place-fret 2 4)
   (mute 1))

\storePredefinedDiagram #intro-fret-table
\chordmode { d:7 }
#guitar-open-d-tuning
#'((capo 3)
   (place-fret 5 5)
   (place-fret 4 4)
   (open 3)
   (open 2)
   (mute 1))

%%% Verse Fret Table

#(define verse-fret-table (make-fretboard-table))

\storePredefinedDiagram #verse-fret-table
\chordmode { ees:7 }
#guitar-open-d-tuning
#"x;x;6;8;7;6;"

\storePredefinedDiagram #verse-fret-table
\chordmode { ges:7 }
#guitar-open-d-tuning
#"x;x;9;11;10;9;"

\storePredefinedDiagram #verse-fret-table
\chordmode { bes }
#guitar-open-d-tuning
#"x;x;8;8;8;8;"

%%% Fuzz Fret Table

#(define fuzz-fret-table (make-fretboard-table))

\storePredefinedDiagram #fuzz-fret-table
\chordmode { b }
#guitar-open-d-tuning
#"x;9;9;9;9;x"

\storePredefinedDiagram #fuzz-fret-table
\chordmode { fis }
#guitar-open-d-tuning
#'((capo 3)
   (mute 6)
   (place-fret 5 4)
   (place-fret 4 4)
   (place-fret 3 4)
   (place-fret 2 4)
   (mute 1))

\storePredefinedDiagram #fuzz-fret-table
\chordmode { f }
#guitar-open-d-tuning
#'((capo 3) (open 6) (open 5) (open 4) (open 3) (open 2) (open 1))

%%% Stoner Jam Fret Table

#(define stoner-jam-fret-table (make-fretboard-table))

\addChordShape #'power-e #guitar-open-d-tuning #"14;14;14;14;x;x;"

\storePredefinedDiagram #stoner-jam-fret-table
\chordmode { e }
#guitar-open-d-tuning
#(chord-shape 'power-e guitar-open-d-tuning)

\storePredefinedDiagram #stoner-jam-fret-table
\chordmode { d }
#guitar-open-d-tuning
#(offset-fret -2 (chord-shape 'power-e guitar-open-d-tuning))

\storePredefinedDiagram #stoner-jam-fret-table
\chordmode { b }
#guitar-open-d-tuning
#(offset-fret -5 (chord-shape 'power-e guitar-open-d-tuning))

\storePredefinedDiagram #stoner-jam-fret-table
\chordmode { bes }
#guitar-open-d-tuning
#(offset-fret -6 (chord-shape 'power-e guitar-open-d-tuning))

\storePredefinedDiagram #stoner-jam-fret-table
\chordmode { a }
#guitar-open-d-tuning
#(offset-fret -7 (chord-shape 'power-e guitar-open-d-tuning))

\storePredefinedDiagram #stoner-jam-fret-table
\chordmode { fis }
#guitar-open-d-tuning
#'((capo 3)
   (place-fret 6 4)
   (place-fret 5 4)
   (place-fret 4 4)
   (place-fret 3 4)
   (muts 2)
   (mute 1))

%%% Magic Fret Table

#(define magic-fret-table (make-fretboard-table))

\storePredefinedDiagram #magic-fret-table
\chordmode { aes }
#guitar-open-d-tuning
#(offset-fret -8 (chord-shape 'power-e guitar-open-d-tuning))

\storePredefinedDiagram #magic-fret-table
\chordmode { b }
#guitar-open-d-tuning
#(offset-fret -5 (chord-shape 'power-e guitar-open-d-tuning))

%%% ================================================================= [ Chords ]

\gridPutMusic "chords" 2 \chordmode {
  \set predefinedDiagramTable = #intro-fret-table
  \repeat volta 2 {
    ees2:7 d:7 |
    ees2:7 s   |
    ees2:7 d:7 |
    s1         |
  }
}

\gridPutMusic "chords" 3 \chordmode {
  \set predefinedDiagramTable = #verse-fret-table
  \repeat volta 4 {
    \repeat percent 3 {
      s4 ees8:7 s4 ges8:7 bes4 |
    }
  }
  \alternative {
    { s1 }
    { s1 }
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

%%% ==================================================================== [ EOF ]
