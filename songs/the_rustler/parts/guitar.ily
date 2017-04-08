\gridPutMusic "guitar" 1 {
  \once \override Staff.InstrumentName.extra-offset = #'(62.5 . 0)
  \bye s1*4
}


\gridPutMusic "guitar" 2 \relative c, {
  \hi \Key
  \include "notes/riff-II.ily"
}
