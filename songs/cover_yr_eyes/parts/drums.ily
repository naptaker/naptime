\gridPutMusic "drums up" 1 \drummode {
  \repeat percent 2 {
    \repeat percent 2 {
      cymc4 \repeat unfold 6 { hho8 } |
    }
  }

  \repeat percent 3 {
    cymc4 \repeat unfold 6 { hho8 } |
  }
  cymc16 sn sn sn tomh sn sn sn tomh tomh \repeat unfold 6 { toml } |
}

\gridPutMusic "drums down" 1 \drummode {
  \repeat percent 2 {
    \repeat percent 2 {
      \include "notes/drums_down-Ia.ily"
    }
  }

  \once \omit Staff.TimeSignature
  \repeat percent 3 {
    \include "notes/drums_down-Ia.ily"
  }
  \include "notes/drums_down-Ib.ily"
}


\gridPutMusic "drums up" 2 \drummode {
  \repeat volta 4 {
    cymr4 <toml sn>8 toml toml toml <toml sn> toml |
    \repeat percent 5 {
      toml8 toml <toml sn> toml toml toml <toml sn> toml |
    }
  }
  \alternative {
    { \repeat unfold 8 { toml8 } |
      cymr4 cymr tomh16 tomh \repeat unfold 6 { tommh } | }
    { \repeat unfold 8 { toml8 } |
      toml8 toml toml toml cymr4 tomh16 tomh toml toml | }
    { \repeat unfold 8 { toml8 } |
      toml8 toml cymr2. | }
  }
}

\gridPutMusic "drums down" 2 \drummode {
  \repeat volta 4 {
    bd4 r8 bd r bd r bd |
    \repeat percent 5 {
      r8 bd r bd r bd r bd |
    }
  }
  \alternative {
    { << { \omit Flag \slurDown
           s8 s sn s s s sn \drag sn } \\
         { r8 bd r bd r bd r bd } >> |
      bd16 sn <bd sn> sn bd sn <bd sn> sn bd8 bd bd bd | }
    { << { \omit Flag \slurDown
           s8 s sn s s s sn s |
           s8 s \drag sn s } \\
         { r8 bd r bd r bd r bd |
           r8 bd r bd } >>
      bd16 sn <bd sn> sn bd4 | }
    { << { \omit Flag \slurDown
           sn8 s sn s sn s sn s | sn8 \drag sn } \\
         { r8 bd r bd r bd r bd | r8 bd } >>
      bd16 sn \repeat unfold 5 { <bd sn> sn } | }
  }
}


\gridPutMusic "drums up" 3 \drummode {
  \tieDown
  cymc4 cyms cyms cyms |
  cyms4 cyms toml8[ toml toml] cymc8 ~ |
  cymc4 cymr cymr cymr |
  cymr4 cymr4 cymr2 |
  \repeat unfold 2 {
    #(make-music 'DoublePercentEvent 'length (ly:make-moment 2/1))
  }
}

\gridPutMusic "drums down" 3 \drummode {
  \slurUp \tieUp
  \repeat volta 2 {
    bd4 sn8[ bd] sn[ bd] sn[ bd] |
    sn8[ bd] sn[ bd] << { \omit Flag sn8 sn sn } \\ { bd8[ bd bd] } >> bd ~ |
    bd4 sn8 \drag sn bd bd sn bd ~ |
    bd8 bd sn bd16 \flam sn bd \flam sn << { sn4.:16 } \\ { bd8 bd bd } >> |
    \repeat unfold 2 {
      #(make-music 'DoublePercentEvent 'length (ly:make-moment 2/1))
    }
  }
  \slurNeutral
}


\gridPutMusic "drums up" 4 \drummode {
  \repeat percent 2 {
    \repeat percent 2 {
      cymc4 \repeat unfold 6 { cyms8 } |
    }
  }
  cymc4 \repeat unfold 6 { cyms8 } |
  \repeat unfold 8 { cyms8 } |
  \repeat unfold 4 { cyms16 sn sn sn } |
  cyms16 sn sn sn tomh sn sn sn tomh tomh \repeat unfold 6 { toml } |
}

\gridPutMusic "drums down" 4 \drummode {
  \repeat percent 2 {
    \repeat percent 2 {
      \include "notes/drums_down-Ia.ily"
    }
  }
  \repeat unfold 2 {
    \include "notes/drums_down-Ia.ily"
  }
  \repeat unfold 2 {
    \include "notes/drums_down-Ib.ily"
  }
}


\gridPutMusic "drums up" 5 \drummode {
  cymr4\fermata
}

\gridPutMusic "drums down" 5 \drummode {
  bd4
}
