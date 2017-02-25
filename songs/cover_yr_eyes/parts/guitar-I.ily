\include "global.ily"

\gridPutMusic "guitar" 1
\relative c'' {
  \once \omit Staff.Clef
  \once \omit Staff.ClefModifier
  \once \omit Staff.TimeSignature
  \stopStaff
  s1*4
  \startStaff
  \set Staff.forceClef = ##t
  \time 4/4

  \ottava #1
  %% \appoggiatura { \stemDown \slurUp \include "notes/guitar-Ia.ily" }
  \repeat percent 3 {
    \include "notes/guitar-Ib.ily"
    \include "notes/guitar-Ic.ily"
  }
  \include "notes/guitar-Id.ily"
  \ottava #0
}

\gridCompileCell "guitar" 1
