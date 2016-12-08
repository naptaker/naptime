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

\addChordShape #'arp-seven
#guitar-open-d-tuning
#'(;(capo 3)
     (place-fret 5 6)
     (place-fret 4 8)
     (place-fret 3 7)
     (place-fret 2 6)
     (mute 1))
\storePredefinedDiagram #verse-fret-table
\chordmode { ees:7 }
#guitar-open-d-tuning
#(chord-shape 'arp-seven guitar-open-d-tuning)
\storePredefinedDiagram #verse-fret-table
\chordmode { ges:7 }
#guitar-open-d-tuning
#(offset-fret 3 (chord-shape 'arp-seven guitar-open-d-tuning))

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
