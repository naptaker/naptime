\include "predefined-guitar-fretboards.ly"

%%% Trem Fret Table

#(define trem-fret-table (make-fretboard-table))

\storePredefinedDiagram #trem-fret-table
\chordmode { g }
#guitar-open-d-tuning
#'((capo 3) (barre 6 3 5))

\storePredefinedDiagram #trem-fret-table
\chordmode { d }
#guitar-open-d-tuning
#'((capo 3)
   (mute 6)
   (place-fret 5 5)
   (place-fret 3 4)
   (place-fret 2 5)
   (mute 1))

\storePredefinedDiagram #trem-fret-table
\chordmode { a }
#guitar-open-d-tuning
#'((capo 3)
   (barre 6 3 7))

\storePredefinedDiagram #trem-fret-table
\chordmode { bes }
#guitar-open-d-tuning
#'((capo 3)
   (barre 6 3 8))

\storePredefinedDiagram #trem-fret-table
\chordmode { des }
#guitar-open-d-tuning
#'((capo 3)
   (barre 6 3 11))


%%% High Fret Table

#(define high-fret-table (make-fretboard-table))

\storePredefinedDiagram #high-fret-table
\chordmode { d }
#guitar-open-d-tuning
#'((capo 3)
   (barre 3 1 8))

\storePredefinedDiagram #high-fret-table
\chordmode { des }
#guitar-open-d-tuning
#'(;(capo 3)
   (barre 3 1 7))

\storePredefinedDiagram #high-fret-table
\chordmode { c }
#guitar-open-d-tuning
#'(;(capo 3)
   (barre 3 1 6))
