\include "global.ily"

\gridPutMusic "guitar" 7
\relative c {
  \tempo 4=240
  \include "notes/guitar-VIIa.ily"
  \include "notes/guitar-VIIa.ily"
  \repeat unfold 2 {
    \include "notes/guitar-VIIa.ily"
    \include "notes/guitar-VIIa.ily"
    \relative c' {
      \stemDown
      \include "notes/guitar-VIIb.ily"
      \include "notes/guitar-VIIb.ily"
      \stemNeutral
      \ottava 1
      \include "notes/guitar-VIIc.ily"
      \include "notes/guitar-VIIc.ily"
      \include "notes/guitar-VIId.ily"
      \include "notes/guitar-VIId.ily"
      \stemDown
      \include "notes/guitar-VIIe.ily"
      \stemNeutral
      \ottava 0
    }
  }
}

\gridCompileCell "guitar" 7
