\include "global.ily"

\gridPutMusic "guitar" 8
\relative c {
  \fuzzOff
  %% \stopStaffNotTabStaff
  \include "notes/guitar-VIII.ily"
  \restartStaff
}

\gridCompileCell "guitar" 8
