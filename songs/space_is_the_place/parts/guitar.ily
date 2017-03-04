\gridPutMusic "guitar" 2 \relative c {
  \repeat unfold 2 {
    \include "notes/guitar-II.ily"
  }
}

\gridPutMusic "guitar" 3 \relative c {
  %% 1-3
  \repeat unfold 3 {
    \repeat unfold 3 { \include "notes/guitar-III.ily" }
    \include "notes/guitar-IIIa.ily"
  }

  %% 4
  \repeat unfold 3 { \include "notes/guitar-III.ily" }
  \include "notes/guitar-IIIb.ily"
}

\gridPutMusic "guitar" 4 \relative c {
  \repeat unfold 2 {
    \include "notes/guitar-IV.ily"
  }
}

\gridPutMusic "guitar" 9 \relative c {
  \include "notes/guitar-IV.ily"
  \fuzzOn
  \relative {
    \include "notes/guitar-IX.ily"
  }
  \relative {
    \include "notes/guitar-IV.ily"
  }
  \relative {
    \include "notes/guitar-IX.ily"
  }
  \relative {
    \include "notes/guitar-IV.ily"
  }
  \relative {
    \include "notes/guitar-IX.ily"
  }
}
