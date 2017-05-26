\gridPutMusic "bass" 1 {
  \once \override Staff.InstrumentName.extra-offset = #'(62.5 . 0)
  \bye s1*4
}

\gridPutMusic "bass" 2 \relative c,, {
  \hi \Key
  \include "notes/riff-II.ily"
}

\gridPutMusic "bass" 3 \relative c,, {
  \include "notes/bass-III.ily"
}

\gridPutMusic "bass" 4 \relative c,, {
  \include "notes/bass-IV.ily"
}

\gridPutMusic "bass" 5 \relative c {
  \include "notes/bass-V.ily"
}

\gridPutMusic "bass" 6 \relative c, {
  f4
}
