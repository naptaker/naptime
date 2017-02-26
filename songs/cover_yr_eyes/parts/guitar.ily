\gridPutMusic "guitar" 1 \with {
  opening = {
    \once \omit Staff.Clef
    \once \omit Staff.ClefModifier
    \once \omit Staff.TimeSignature
    \stopStaff
  }
  music = \relative c'' {
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
}

\gridPutMusic "guitar" 3 \relative c'' {
  \fuzzOn
  a4 a a a |
  a4 a a8( b a gis) ~ |
  gis1 |
  a1 |
  \ottava #1
  f'4 f f f |
  f4 f f8( g f e) ~ |
  e1 |
  f2. \ottava #0 \parenthesize a,,4 |
}

\gridPutMusic "guitar" 4 \relative c'' {
  \fuzzOn
  \ottava #1
  \repeat percent 6 {
    d4. f4 c8( c cis) |
  }

  \slurUp
  \include "notes/guitar-Id.ily"
  \ottava #0
  \makeClusters { b,8 a gis g fis f e d } |
  \stopStaff
}
