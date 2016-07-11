\include "global.ily"

\gridPutMusic "guitar" 7
\chordmode {
  \stopStaffNotTabStaff
  \fuzzOn
  \repeat unfold 2 {
    \include "notes/guitar-VII.ily"
  }
  \fuzzOff
  \restartStaff
}

\gridCompileCell "guitar" 7
