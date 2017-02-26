%%% DRUMS UP

\gridPutMusic "drums up" 1 \drummode {
  \repeat percent 2 {
    \repeat percent 2 {
      cymc4 \repeat unfold 6 { hho8 } |
    }
  }
  \repeat percent 3 {
    cymc4 \repeat unfold 6 { hho8 } |
  }
  cymc4 tomh4 tomh16 tomh \repeat unfold 6 { toml } |
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


%%% DRUMS DOWN

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
  <hhp bd>16 sn <bd sn> sn bd sn <bd sn> sn bd8 bd bd bd |
}

\gridPutMusic "drums down" 2 \drummode {
  \repeat volta 4 {
    bd4 sn8 bd r bd sn bd |
    \repeat unfold 5 {
      %% r8 bd sn bd r bd sn bd |
      #(make-music 'PercentEvent 'length (ly:make-moment 1))
    }
  }
  \alternative {
    { r8 bd sn bd r bd sn << { \slurUp \stemDown \drag \once \omit Flag sn } \\ { bd } >> |
      bd16 sn <bd sn> sn bd sn <bd sn> sn bd8 bd bd bd | }
    { r8 bd sn bd r bd sn bd |
      r8 bd sn << { \slurUp \stemDown \drag \once \omit Flag sn } \\ { bd } >>
      bd16 sn <bd sn> sn bd4 | }
    { sn8 bd sn bd sn bd sn bd |
      sn8 << { \slurUp \stemDown \drag \once \omit Flag sn } \\ { bd } >>
      bd16 sn <bd sn> sn
      <bd sn> sn <bd sn> sn
      <bd sn> sn <bd sn> sn | }
  }
}

\gridPutMusic "drums down" 3 \drummode {
  \repeat volta 2 {
    \repeat percent 8 {
      bd4 sn bd sn |
    }
  }
}


\gridPutMusic "drums down" 4 \drummode {
  \repeat percent 8 {
    bd4 sn bd sn |
  }
}


\gridPutMusic "drums down" 5 \drummode {
  sn4
}
