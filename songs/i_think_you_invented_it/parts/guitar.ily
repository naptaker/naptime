\gridPutMusic "guitar" 1 \relative c' {
  \include "notes/guitar-I.ily"
}

\gridPutMusic "guitar" 2 \relative c' {
  \repeat unfold 2 {
    \include "notes/guitar-I.ily"
  }
}

\gridPutMusic "guitar" 3 \relative c' {
  \include "notes/guitar-III.ily"
}

\gridPutMusic "guitar" 4 {
  \ottava #-1
  \relative c {
    \include "notes/guitar-IV.ily"
  }
  \ottava #0
  \relative c' {
    \include "notes/guitar-I.ily"
  }
}

\gridPutMusic "guitar" 5 \relative c' {
  \include "notes/guitar-V.ily"
}

\gridPutMusic "guitar" 6 \relative c {
  \include "notes/guitar-VI.ily"
  \bar "||"
}

\gridPutMusic "guitar" 7 {
  \tempo 4=240
  \relative c {
    \include "notes/guitar-VIIa.ily"
    \include "notes/guitar-VIIa.ily"
  }
  \repeat unfold 2 {
    \relative c {
      \include "notes/guitar-VIIa.ily"
      \include "notes/guitar-VIIa.ily"
    }
    \relative c' {
      \stemDown
      \include "notes/guitar-VIIb.ily"
      \include "notes/guitar-VIIb.ily"
      \stemNeutral
      \ottava #1
      \include "notes/guitar-VIIc.ily"
      \include "notes/guitar-VIIc.ily"
      \include "notes/guitar-VIId.ily"
      \include "notes/guitar-VIId.ily"
      \stemDown
      \include "notes/guitar-VIIe.ily"
      \stemNeutral
      \ottava #0
    }
  }
}

\gridPutMusic "guitar" 8 \relative c {
  \include "notes/guitar-VIII.ily"
}

\gridPutMusic "guitar" 9 {
  \ottava #-1
  \relative c {
    \include "notes/guitar-II.ily"
  }
  \ottava #0
  \relative c' {
    \include "notes/guitar-I.ily"
  }
  \relative c' {
    \include "notes/guitar-III.ily"
  }
  \relative c {
    \include "notes/guitar-IX.ily"
  }
}
