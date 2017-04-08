\gridPutMusic "drums up" 1 \drummode {
  \repeat volta 2 {
    \include "notes/drums_up-I.ily"
  }
}

\gridPutMusic "drums down" 1 \drummode {
  \repeat volta 2 {
    \include "notes/drums_down-I.ily"
  }
}


\gridPutMusic "drums up" 2 \drummode {
  \repeat volta 2 {
    \include "notes/drums_up-I.ily"
  }
}

\gridPutMusic "drums down" 2 \drummode {
  \repeat volta 2 {
    \include "notes/drums_down-I.ily"
  }
}


\gridPutMusic "drums up" 3 \drummode {
  \repeat volta 4 {
    \include "notes/drums_up-III.ily"
  }
  \alternative {
    %% 1-3.
    { \include "notes/drums_up-IIIa.ily" }
    %% 4.
    { \include "notes/drums_up-IIIa.ily" }
  }
}

\gridPutMusic "drums down" 3 \drummode {
  \repeat volta 4 {
    \include "notes/drums_down-III.ily"
  }
  \alternative {
    %% 1-3.
    { \include "notes/drums_down-IIIa.ily" }
    %% 4.
    { \include "notes/drums_down-IIIa.ily" }
  }
}


\gridPutMusic "drums up" 4 \drummode {
  \include "notes/drums_up-IV.ily"
}

\gridPutMusic "drums down" 4 \drummode {
  \repeat volta 2 {
    \include "notes/drums_down-IV.ily"
  }
}


\gridPutMusic "drums up" 9 \drummode {
  \repeat unfold 2 {
    \include "notes/drums_up-IV.ily"
  }
  \repeat volta 2 {
    \repeat unfold 2 {
      \include "notes/drums_up-IV.ily"
    }
  }
}

\gridPutMusic "drums down" 9 \drummode {
  \repeat unfold 2 {
    \include "notes/drums_down-IV.ily"
  }
  \repeat volta 2 {
    \repeat unfold 2 {
      \include "notes/drums_down-IV.ily"
    }
  }
}
