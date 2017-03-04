\gridPutMusic "guitar" 1 {
  \relative c {
    \repeat unfold 7 {
      \include "notes/guitar-Ia.ily"
    }
    \include "notes/guitar-Ib.ily"
  }

  \relative c {
    \repeat volta 2 {
      \set countPercentRepeats = ##t
      \override PercentRepeatCounter.staff-padding = #1
      \repeat percent 3 {
        \include "notes/guitar-Ia.ily"
      }
    }
    \alternative {
      { \include "notes/guitar-Ic.ily" }
      { \include "notes/guitar-Ib.ily" }
    }
  }
}

\gridPutMusic "guitar" 2 {
  \relative c, {
    \include "notes/guitar-IIa.ily"
    \include "notes/guitar-IIb.ily"
  }
  \relative c' {
    \include "notes/guitar-IIc.ily"
  }
  \relative c' {
    \include "notes/guitar-IId.ily"
  }
}

\gridPutMusic "guitar" 3 {
  \repeat volta 4 {
    R1*2
  }
}

\gridPutMusic "guitar" 4 \relative c {
  \repeat volta 4 {
    \include "notes/guitar-IVa.ily"
    \include "notes/guitar-IVb.ily"
  }
}

\gridPutMusic "guitar" 5 \relative c' {
  \repeat unfold 2 {
    \include "notes/guitar-V.ily"
  }
}

\gridPutMusic "guitar" 6 \relative c {
  \include "notes/guitar-IVa.ily"
  \include "notes/guitar-IVb.ily"
  \set countPercentRepeats = ##t
  %% \override PercentRepeatCounter.staff-padding = #1
  %% \omit TabStaff.PercentRepeatCounter
  \repeat unfold 2 {
    #(make-music 'DoublePercentEvent 'length (ly:make-moment 2/1))
  }
}

\gridPutMusic "guitar" 7 \relative c {
  \repeat volta 2 {
    \repeat percent 3 {
      \include "notes/guitar-Ia.ily"
    }
  }
  \alternative {
    { \include "notes/guitar-Ib.ily" }
    { \include "notes/guitar-VII.ily" }
  }
}
