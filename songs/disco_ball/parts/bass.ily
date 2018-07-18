\gridPutMusic "bass" 2 \relative c, {
  \repeat percent 4 {
    \include "notes/bass-IIa.ily"
    \include "notes/bass-IIb.ily"
  }
}


\gridPutMusic "bass" 3 \gridGetCellMusic "bass" 2


\gridPutMusic "bass" 4 \relative c, {
  \include "notes/bass-IV.ily"
}


\gridPutMusic "bass" 5 \relative c, {
  \repeat unfold 4 {
    e4-> e,8 e'4-> e,8 e'4-> |
    e,8 e'4-> e,8 e'4-> e,4-- |
  }
  \alternative {
    { g4-! r r2 | R1 | }
    { } % HACK
  }
}


\gridPutMusic "bass" 6 \relative c, {
  g4 r g r |
  g4 g fis f |
}
