\gridPutMusic "guitar" 1 \relative c'' {
  \once \omit Staff.Clef
  \once \omit Staff.ClefModifier
  \once \omit Staff.TimeSignature
  \stopStaff
  s1*4
  \startStaff
  \set Staff.forceClef = ##t
  %% \time 4/4

  \ottava #1
  \repeat percent 3 {
    \include "notes/guitar-Ia.ily"
  }
  \include "notes/guitar-Ib.ily"
  \ottava #0
}

\gridPutMusic "guitar" 3 \relative c'' {
  \fuzzOn
  \include "notes/guitar-III.ily"
}

\gridPutMusic "guitar" 4 \relative c'' {
  \fuzzOn
  \ottava #1
  \repeat percent 6 {
    \include "notes/guitar-IV.ily"
  }

  \slurUp
  \include "notes/guitar-Ib.ily"
  \ottava #0
  \makeClusters { b,8 a gis g fis f e d } |
  \stopStaff
}
