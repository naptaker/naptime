\include "global.ily"

\gridPutMusic "guitar" 3
\chordmode {
  \stopStaffNotTabStaff
  \repeat unfold 3 {
    \include "notes/guitar-III.ily"
  }
  %% \restartStaff
}

\gridCompileCell "guitar" 3
