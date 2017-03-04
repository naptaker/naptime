\gridPutMusic "drums up" 1 \drummode {
  \repeat unfold 2 {
    \include "notes/drums_up-I.ily"
  }
}

\gridPutMusic "drums down" 1 \drummode {
  \repeat unfold 2 {
    \include "notes/drums_down-I.ily"
  }
}


\gridPutMusic "drums up" 2 \drummode {
  \repeat unfold 2 {
    \include "notes/drums_up-I.ily"
  }
}

\gridPutMusic "drums down" 2 \drummode {
  \repeat unfold 2 {
    \include "notes/drums_down-I.ily"
  }
}


\gridPutMusic "drums up" 3 \drummode {
  \repeat unfold 4 {
    \include "notes/drums_up-III.ily"
  }
}

\gridPutMusic "drums down" 3 \drummode {
  \repeat unfold 4 {
    \include "notes/drums_down-III.ily"
  }
}


\gridPutMusic "drums up" 4 \drummode {
  \include "notes/drums_up-IVa.ily"
  \include "notes/drums_up-IVb.ily"
}

\gridPutMusic "drums down" 4 \drummode {
  \repeat unfold 2 {
    \include "notes/drums_down-IV.ily"
  }
}


\gridPutMusic "drums up" 9
\drummode {
  \repeat unfold 3 {
    \include "notes/drums_up-IVa.ily"
    \include "notes/drums_up-IVb.ily"
  }
}

\gridPutMusic "drums down" 9 \drummode {
  \repeat unfold 3 {
    \repeat unfold 2 {
      \include "notes/drums_down-IV.ily"
    }
  }
}
