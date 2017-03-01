\gridPutMusic "bass" 1 \relative c, {
  \repeat percent 2 {
    \include "notes/bass-Ia.ily"
    \include "notes/bass-Ib.ily"
    \include "notes/bass-Ia.ily"
    \include "notes/bass-Ic.ily"
  }

  \once \omit Staff.TimeSignature
  \repeat percent 4 {
    \include "notes/bass-Ia.ily"
    \include "notes/bass-Ib.ily"
  }
}

\gridPutMusic "bass" 2 \relative c, {
  \repeat volta 4 {
    \repeat percent 6 {
      \include "notes/bass-Ia.ily"
      \include "notes/bass-Ib.ily"
    }
  }
  \alternative {
    { \include "notes/bass-II.ily" }
    { #(make-music 'DoublePercentEvent 'length (ly:make-moment 2/1)) }
    { \relative c, { \include "notes/bass-V.ily" } }
  }
}

\gridPutMusic "bass" 3 \relative c, {
  \repeat volta 2 {
    \include "notes/bass-III.ily"
  }
}

\gridPutMusic "bass" 4 {
  << { \gridGetCellMusic "bass" 1 } \\
     { s1 s1_\markup \italic "bridge only" } >>
}

\gridPutMusic "bass" 5 \relative c, { d4 }
