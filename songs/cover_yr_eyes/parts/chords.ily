%%% ============================================================= [ chords.ily ]

\include "predefined-guitar-fretboards.ly"

%%% ======================================================== [ Fuzz Fret Table ]

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

\storePredefinedDiagram #fuzz-fret-table
\chordmode { a }
#guitar-open-d-tuning
#'((place-fret 6 7)
   (place-fret 4 7)
   (barre 6 4 7))

\storePredefinedDiagram #fuzz-fret-table
\chordmode { gis }
#guitar-open-d-tuning
#'((place-fret 6 6)
   (place-fret 4 6)
   (barre 6 4 6))

%%% ================================================================= [ Chords ]

\gridPutMusic "chords" 1
\chordmode {
  \set predefinedDiagramTable = #fuzz-fret-table
  \set noChordSymbol = ""
  \include "notes/guitar_strum-I.ily"
  s1*7 |
}

\gridPutMusic "chords" 3
\chordmode {
  \set predefinedDiagramTable = #fuzz-fret-table
  \include "notes/guitar_strum-III.ily"
}

\gridPutMusic "chords" 5
\chordmode {
  \set predefinedDiagramTable = #fuzz-fret-table
  d4
}

%%% ==================================================================== [ EOF ]
