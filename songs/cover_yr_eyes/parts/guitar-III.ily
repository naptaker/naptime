\include "global.ily"

\gridPutMusic "guitar" 3
\relative c'' {
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

\gridCompileCell "guitar" 3
