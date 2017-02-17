\include "global.ily"

\gridPutMusic "guitar" 4
\relative c'' {
  << {
    s1*7
    %% HACK
    s2. s4^\markup { \translate #'(-5 . 2) "D.S. al Fine" }
  } \\ {
    \fuzzOn
    \ottava #1
    \repeat percent 6 {
      d4. f4 c8( c cis) |
    }

    \slurUp
    \include "notes/guitar-Id.ily"
    \ottava #0
    \makeClusters { b,8 a gis g fis f e d } |
  } >>
}

\gridCompileCell "guitar" 4
