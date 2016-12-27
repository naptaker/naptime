\include "global.ily"

\gridPutMusic "drums up" 1
\drummode {
  \repeat unfold 2 {
    \repeat unfold 3 {
      \repeat unfold 2 { \include "notes/drums_up-Ia.ily" } |
    }
    \include "notes/drums_up-Ia.ily"
    \include "notes/drums_up-Ib.ily"
  }
  \repeat volta 2 {
    \set countPercentRepeats = ##t
    \repeat percent 3 {
      \repeat percent 2 {
        \include "notes/drums_up-Ic.ily"
      } |
    }
  }
  \alternative {
    { \include "notes/drums_up-Ic.ily"
      \include "notes/drums_up-Ib.ily" }
    {
      #(make-music 'PercentEvent 'length (ly:make-moment 1))
    }
  }
}

\gridCompileCell "drums up" 1
