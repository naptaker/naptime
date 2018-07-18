\gridPutMusic "guitar strum" 1 \relative c {
  d4_. r r2 |
  b4_. r r2 |
  d4_. r r2 |
  r4 r b4_. r |
  d4_. r r2 |
  b4_. r r2 |
  d4_. r r2 |
  R1 |
}


\gridPutMusic "guitar strum" 2 \relative c {
  \include "notes/guitar_strum-II.ily"
}


\gridPutMusic "guitar strum" 4 \relative c {
  \repeat unfold 2 {
    \include "notes/guitar_strum-II.ily"
  }
}


\gridPutMusic "guitar strum" 5 \relative d, {
  \repeat unfold 2 {
    \include "notes/guitar_strum-Va.ily"
  }
  \alternative {
    { \include "notes/guitar_strum-Vb.ily" }
    { } % HACK
  }
}
