\gridPutMusic "guitar strum" 1 \relative c {
  \repeat percent 2 {
    \repeat percent 2 {
      \include "notes/guitar_strum-I.ily"
    }
  }
  \stopStaff
  \once \omit Staff.TimeSignature
  s1*4
}

\gridPutMusic "guitar strum" 3 \relative c {
  \startStaff
  \include "notes/guitar_strum-III.ily"
  \stopStaff
}

\gridPutMusic "guitar strum" 5 \relative c {
  \startStaff
  d4
}
