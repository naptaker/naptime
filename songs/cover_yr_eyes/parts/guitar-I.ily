\include "global.ily"

\gridPutMusic "guitar" 1
\relative c'' {
  s1*4
  \break
  \ottava #1
  %% \set TabStaff.minimumFret = #12
  \appoggiatura { \stemDown \slurUp \include "notes/guitar-Ia.ily" }
  \repeat percent 3 {
    \include "notes/guitar-Ib.ily"
    \include "notes/guitar-Ic.ily"
  }
  %% \include "notes/guitar-Ib.ily"
  %% r8 r4 |
  \include "notes/guitar-Id.ily"
  \ottava #0
  \break
}

\gridCompileCell "guitar" 1
