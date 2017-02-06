\set minimumFret = #3
\repeat volta 3 {
  g4 g8([ f g bes]) f( fis) |
  g4 g8( f) d'4\3 f\2 |
}
\alternative {
  { g,4 g8([ f g bes]) f( fis) |
    g4 g8( f) des'4\3 ges, | }
% g4 g8([ f g bes]) f( fis) |
% g4 g8( f) d'4\3 f\2 |
  { \set minimumFret = #6
    bes4 bes8( a bes4) aes8( a) |
    bes8([ d a des c aes] g4\4) | }
}
\set minimumFret = #3
