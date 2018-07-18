%%% ============================================================ [ Fret Boards ]

\include "predefined-guitar-fretboards.ly"

%%% Trem Fret Table

#(define trem-fret-table (make-fretboard-table))

\storePredefinedDiagram #trem-fret-table
\chordmode { g }
#guitar-open-d-tuning
#'((capo 3)
   (place-fret 6 5 1)
   (place-fret 3 5 1)
   (barre 6 3 5))

\storePredefinedDiagram #trem-fret-table
\chordmode { d }
#guitar-open-d-tuning
#'((capo 3)
   (mute 6)
   (place-fret 5 5 2)
   (place-fret 3 4 1)
   (place-fret 2 5 3)
   (mute 1))

\storePredefinedDiagram #trem-fret-table
\chordmode { a }
#guitar-open-d-tuning
#'((capo 3)
   (place-fret 6 7 2)
   (place-fret 3 7 2)
   (barre 6 3 7))

\storePredefinedDiagram #trem-fret-table
\chordmode { bes }
#guitar-open-d-tuning
#'((capo 3)
   (place-fret 6 8 3)
   (place-fret 3 8 3)
   (barre 6 3 8))

\storePredefinedDiagram #trem-fret-table
\chordmode { des }
#guitar-open-d-tuning
#'(;(capo 3)
   (place-fret 6 11 3)
   (place-fret 3 11 3)
   (barre 6 3 11))

\storePredefinedDiagram #trem-fret-table
\chordmode { ges }
#guitar-open-d-tuning
#'((capo 3)
   (place-fret 6 4 1)
   (place-fret 3 4 1)
   (barre 6 3 4))


%%% High Fret Table

#(define high-fret-table (make-fretboard-table))

\storePredefinedDiagram #high-fret-table
\chordmode { bes }
#guitar-open-d-tuning
#'((capo 3)
   (place-fret 3 8 3)
   (place-fret 1 8 3)
   (barre 3 1 8))

\storePredefinedDiagram #high-fret-table
\chordmode { a }
#guitar-open-d-tuning
#'((capo 3)
   (place-fret 3 7 2)
   (place-fret 1 7 2)
   (barre 3 1 7))

\storePredefinedDiagram #high-fret-table
\chordmode { aes }
#guitar-open-d-tuning
#'((capo 3)
   (place-fret 3 6 1)
   (place-fret 1 6 1)
   (barre 3 1 6))


%%% Stoner Fret Table

#(define stoner-fret-table (make-fretboard-table))

\storePredefinedDiagram #stoner-fret-table
\chordmode { g }
#guitar-open-d-tuning
#'((capo 3)
   (place-fret 6 5 1)
   (place-fret 4 5 1)
   (barre 6 4 5))

\storePredefinedDiagram #stoner-fret-table
\chordmode { a }
#guitar-open-d-tuning
#'((capo 3)
   (place-fret 6 7 2)
   (place-fret 4 7 2)
   (barre 6 4 7))

\storePredefinedDiagram #stoner-fret-table
\chordmode { bes }
#guitar-open-d-tuning
#'((capo 3)
   (place-fret 6 8 3)
   (place-fret 4 8 3)
   (barre 6 4 8))

\storePredefinedDiagram #stoner-fret-table
\chordmode { c }
#guitar-open-d-tuning
#'(;(capo 3)
   (place-fret 6 10 3)
   (place-fret 4 10 3)
   (barre 6 4 10))

\storePredefinedDiagram #stoner-fret-table
\chordmode { des }
#guitar-open-d-tuning
#'(;(capo 3)
   (place-fret 6 11 3)
   (place-fret 4 11 3)
   (barre 6 4 11))

\storePredefinedDiagram #stoner-fret-table
\chordmode { ees }
#guitar-open-d-tuning
#'(;(capo 3)
   (place-fret 6 13 3)
   (place-fret 4 13 3)
   (barre 6 4 13))

\storePredefinedDiagram #stoner-fret-table
\chordmode { f }
#guitar-open-d-tuning
#'(;(capo 3)
   (place-fret 6 15 3)
   (place-fret 4 15 3)
   (barre 6 4 15))


%%% ================================================================= [ Chords ]

\gridPutMusic "chords" 2 \chordmode {
  \set predefinedDiagramTable = #trem-fret-table
  \repeat volta 2 {
    g1 ~ |
    g2 d'4 a |
  }
  \alternative {
    { bes1 ~ |
      bes2 des4 ges, | }
    { bes2 bes |
      \set predefinedDiagramTable = #high-fret-table
      \once \set chordChanges = ##f
      bes8 bes bes bes a4 aes | }
  }
}


\gridPutMusic "chords" 4 \chordmode {
  \set predefinedDiagramTable = #stoner-fret-table
  \repeat volta 2 {
    \include "notes/guitar_strum-IV.ily"
  }
}


%%% ==================================================================== [ EOF ]
