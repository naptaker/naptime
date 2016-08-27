\include "global.ily"

\gridPutMusic "guitar" 5
\relative c {
  \fuzzOn
  \stopStaffNotTabStaff
  \include "notes/guitar-V.ily"
  %% \restartStaff
}

\gridCompileCell "guitar" 5
