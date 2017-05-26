\gridPutMusic "guitar" 2 \relative c {
  \repeat volta 2 {
    \include "notes/guitar-II.ily"
  }
}

\gridPutMusic "guitar" 3 \relative c {
  \repeat volta 4 {
    \repeat percent 3 { \include "notes/guitar-III.ily" }
  }
  \alternative {
    %% 1-3.
    { \include "notes/guitar-IIIa.ily" }
    %% 4.
    { \include "notes/guitar-IIIb.ily" }
  }
}

\gridPutMusic "guitar" 4 \relative c {
  \repeat volta 2 {
    \include "notes/guitar-IV.ily"
  }
}

\gridPutMusic "guitar" 9 \relative c {
  \include "notes/guitar-IV.ily"
  \fuzzOn
  \relative {
    \include "notes/guitar-IX.ily"
  }
  \repeat volta 2 {
    \relative {
      \include "notes/guitar-IV.ily"
    }
    \relative {
      \include "notes/guitar-IX.ily"
    }
  }
}
