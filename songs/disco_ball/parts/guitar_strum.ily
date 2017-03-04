\gridPutMusic "guitar strum" 3 \relative c {
  \repeat unfold 3 {
    \include "notes/guitar_strum-III.ily"
  }
}

\gridPutMusic "guitar strum" 4 \relative d, {
  \repeat unfold 2 {
    \include "notes/guitar_strum-IVa.ily"
  }
  \alternative {
    { \include "notes/guitar_strum-IVb.ily" }
    { } % HACK
  }
}
