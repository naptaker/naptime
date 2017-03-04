
\gridPutMusic "drums up" 5
\drummode {
  \set countPercentRepeats = ##t
  \repeat percent 4 {
    \include "notes/drums_up-Va.ily"
  }
  \repeat percent 4 {
    \include "notes/drums_up-Vb.ily"
  }
}

\gridCompileCell "drums up" 5
