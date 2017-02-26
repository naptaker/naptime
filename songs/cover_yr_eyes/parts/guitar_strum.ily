\gridPutMusic "guitar strum" 1 \relative c {
  \repeat percent 2 {
    \repeat percent 2 {
      \include "notes/guitar_strum-Ia.ily"
      \include "notes/guitar_strum-Ib.ily"
    }
  }
  \stopStaff
  \once \omit Staff.TimeSignature
  s1*4
}

\gridPutMusic "guitar strum" 3 \with {
  opening = { \startStaff }
  music = \relative c {
    d4 d d d |
    d4 d d8 d c a ~ |
    a2 a8 a a gis ~ |
    gis2. a4 |
    f'4 f f f |
    f4 f f8 f d c ~ |
    c4 c c8 c c cis8 ~ |
    cis2 r2 |
  }
  closing = { \stopStaff }
}

\gridPutMusic "guitar strum" 4 \relative c {
  s1*7
  %% HACK
  s2. s4^\markup { \translate #'(-9.5 . 0) "D.S. al Fine" }
}

\gridPutMusic "guitar strum" 5 \with {
  opening = { \startStaff }
  music = \relative c { d4 }
}
