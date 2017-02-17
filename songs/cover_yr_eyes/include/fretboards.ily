\include "predefined-guitar-fretboards.ly"

%%% Fuzz Fret Table

#(define fuzz-fret-table (make-fretboard-table))

\storePredefinedDiagram #fuzz-fret-table
\chordmode { d }
#guitar-open-d-tuning
#'((place-fret 6 12)
   (place-fret 4 12)
   (barre 6 4 12))

\storePredefinedDiagram #fuzz-fret-table
\chordmode { f }
#guitar-open-d-tuning
#'((place-fret 6 15)
   (place-fret 4 15)
   (barre 6 4 15))

\storePredefinedDiagram #fuzz-fret-table
\chordmode { c }
#guitar-open-d-tuning
#'((place-fret 6 10)
   (place-fret 4 10)
   (barre 6 4 10))

\storePredefinedDiagram #fuzz-fret-table
\chordmode { cis }
#guitar-open-d-tuning
#'((place-fret 6 11)
   (place-fret 4 11)
   (barre 6 4 11))
