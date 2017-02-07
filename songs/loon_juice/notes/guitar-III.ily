\set minimumFret = #3
\repeat volta 4 {
  b4_\markup { \tiny \italic "bottoms up!" }
  b8([ ais b   d]) a(  ais) |
  b4    b8( a)  e'4    g          |
}
\alternative {
  { b,4   b8([ a   b   d]) a(  ais) |
    b4    b8( a)  e'4    bes        | }
  { \set minimumFret = #6
    f'4    f8  f   f4     f8  f      |
    f8  f f   f   e4     ees^\markup { \translate #'(-4 . 2) "D.S. al Fine" } % HACK
  }
}
\set minimumFret = #3
