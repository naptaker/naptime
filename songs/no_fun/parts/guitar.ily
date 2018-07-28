\gridPutMusic "guitar" 1 \relative c' {
  \once \override Staff.InstrumentName.extra-offset = #'(52.5 . 0)

  \repeat percent 4 {
    \include "notes/guitar-I.ily"
  }
}


\gridPutMusic "guitar" 2 \relative c' {
  \repeat unfold 4 {
    \include "notes/guitar-I.ily"
  }
  \alternative {
    { e4 \include "notes/guitar-IIa.ily"
      \include "notes/guitar-IIb.ily" }
    { dis8( e) \include "notes/guitar-IIa.ily"
      \include "notes/guitar-IIc.ily" }
    { dis'8( e) \include "notes/guitar-IIa.ily"
      \include "notes/guitar-IIb.ily" }
    { dis8( e) \include "notes/guitar-IIa.ily"
      \include "notes/guitar-IId.ily" }
  }
}


\gridPutMusic "guitar" 5 \relative c' {
  s8 s4 |
  \hi \include "notes/guitar-I.ily"
  e4\( g8 c4.\) r4 |
}
