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
      bd4 sn8 bd r bd sn << { \slurUp \stemDown \drag \once \omit Flag sn } \\ { bd } >> |
    }
  }

  \once \omit Staff.TimeSignature
  \repeat percent 3 {
    bd4 sn8 bd r bd sn << { \slurUp \stemDown \drag \once \omit Flag sn } \\ { bd } >> |
  }
  \repeat unfold 8 { bd8 }
}


\gridPutMusic "drums up" 2 \drummode {
  \repeat volta 4 {
    cymr4 \repeat unfold 6 { toml8 } |
    \repeat unfold 5 {
      %% \repeat unfold 8 { toml8 } |
      #(make-music 'PercentEvent 'length (ly:make-moment 1))
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
    << { \omit Flag
         s4  sn8 s  s s  sn s  } \\
       { bd4 r8  bd r bd r  bd } >> |
    \repeat unfold 5 {
      %% r8 bd sn bd r bd sn bd |
      #(make-music 'PercentEvent 'length (ly:make-moment 1))
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
      bd4 sn8 bd r bd sn << { \slurUp \stemDown \drag \once \omit Flag sn } \\ { bd } >> |
    }
  }
  \repeat unfold 2 {
    bd4 sn8 bd r bd sn << { \slurUp \stemDown \drag \once \omit Flag sn } \\ { bd } >> |
  }
  \repeat unfold 2 {
    \repeat unfold 8 { bd8 } |
  }
}


\gridPutMusic "drums up" 5 \drummode {
  cymr4\fermata
}

\gridPutMusic "drums down" 5 \drummode {
  bd4
}
