
\gridPutMusic "drums up" 4
\drummode {
  \repeat volta 4 {
    \set countPercentRepeats = ##f
    \repeat percent 2 {
      \include "notes/drums_up-IVa.ily"
    }
    %% \include "notes/drums_up-IVb.ily"
  }
}

\gridCompileCell "drums up" 4
