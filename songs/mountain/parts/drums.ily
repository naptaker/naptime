\gridPutMusic "drums up" 1 \drummode {
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

\gridPutMusic "drums down" 1 \drummode {
  \repeat unfold 2 {
    \repeat unfold 3 {
      \repeat unfold 2 { \include "notes/drums_down-Ia.ily" } |
    }
    \include "notes/drums_down-Ia.ily"
    \include "notes/drums_down-Ib.ily"
  }
  \repeat volta 2 {
    \repeat percent 3 {
      \include "notes/drums_down-Ia.ily"
      s2 |
    }
  }
  \alternative {
    { \include "notes/drums_down-Ia.ily"
      \include "notes/drums_down-Ib.ily" }
    {
      s1
    }
  }
}


\gridPutMusic "drums up" 2 \drummode {
  \include "notes/drums_up-IIa.ily"
  \include "notes/drums_up-IIb.ily"
  \include "notes/drums_up-IIb.ily"
  \include "notes/drums_up-IIc.ily"
}

\gridPutMusic "drums down" 2 \drummode {
  \include "notes/drums_down-IIa.ily"
  \include "notes/drums_down-IIb.ily"
  \include "notes/drums_down-IIb.ily"
  \include "notes/drums_down-IIc.ily"
}


\gridPutMusic "drums up" 3 \drummode {
  \repeat volta 4 {
    \include "notes/drums_up-III.ily"
  }
}


\gridPutMusic "drums up" 4 \drummode {
  \repeat volta 4 {
    \set countPercentRepeats = ##f
    \repeat percent 2 {
      \include "notes/drums_up-IVa.ily"
    }
    %% \include "notes/drums_up-IVb.ily"
  }
}


\gridPutMusic "drums up" 5 \drummode {
  \set countPercentRepeats = ##t
  \repeat percent 4 {
    \include "notes/drums_up-Va.ily"
  }
  \repeat percent 4 {
    \include "notes/drums_up-Vb.ily"
  }
}

\gridPutMusic "drums down" 5 \drummode {
  \repeat percent 4 {
    \include "notes/drums_down-Va.ily"
  }
  \repeat percent 4 {
    \include "notes/drums_down-Vb.ily"
  }
}


\gridPutMusic "drums up" 6 \drummode {
  \include "notes/drums_up-VIa.ily"
  \include "notes/drums_up-VIb.ily"
}

\gridPutMusic "drums down" 6 \drummode {
  \repeat percent 2 {
    \include "notes/drums_down-Vb.ily"
  }
  \repeat percent 3 {
    \repeat percent 2 {
      \repeat unfold 2 {
        s8 bd8
      }
    }
  }
  \repeat unfold 4 {
    s8 bd8
  }
}


\gridPutMusic "drums up" 7 \drummode {
  \repeat volta 2 {
    \repeat percent 3 {
      \repeat unfold 2 { \include "notes/drums_up-Ia.ily" } |
    }
  }
  \alternative {
    { \include "notes/drums_up-Ia.ily" cymc2 | }
    { % #(make-music 'PercentEvent 'length (ly:make-moment 1)) |
      \include "notes/drums_up-Ia.ily" cymc2 | }
  }
}

\gridPutMusic "drums down" 7 \drummode {
  \repeat volta 2 {
    \repeat percent 3 {
      \repeat unfold 2 { \include "notes/drums_down-Ia.ily" } |
    }
  }
  \alternative {
    { \include "notes/drums_down-Ia.ily" s2 | }
    { \include "notes/drums_down-Ia.ily" s2 | }
  }
}
