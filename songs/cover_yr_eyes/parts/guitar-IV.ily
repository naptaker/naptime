\include "global.ily"

\gridPutMusic "guitar" 4
\relative c'' {
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

\gridCompileCell "guitar" 4
