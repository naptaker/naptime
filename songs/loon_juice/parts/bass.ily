\gridPutMusic "bass" 1 \relative c, {
  \include "notes/bass-I.ily"
}


\gridPutMusic "bass" 2 \relative c, {
  \include "notes/bass-II.ily"
}


\gridPutMusic "bass" 3 {
  \gridGetCellMusic "bass" 2
}


\gridPutMusic "bass" 4 \relative c, {
  \repeat volta 2 {
    \include "notes/bass-IV.ily"
  }
}


\gridPutMusic "bass" 5 \relative c, {
  \include "notes/bass-V.ily"
}


\gridPutMusic "bass" 6 \relative c, {
  g4
}
