\include "global.ily"

\gridPutMusic "guitar" 9
\relative c {
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

\gridCompileCell "guitar" 9
