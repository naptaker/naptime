\gridPutMusic "drums up" 1 \drummode {
  cymr4 <toml sn> toml <toml sn> |
  \repeat percent 6 {
    \repeat unfold 2 { toml4 <toml sn> } |
  }
  toml4 \slurDown \drag sn8 sn tomml8 tomml toml toml |
}

\gridPutMusic "drums down" 1 \drummode {
  \repeat unfold 4 { bd4 } |
  \repeat percent 6 {
    bd4 bd bd bd |
  }
  bd4 bd8 r bd r bd r |
}


\gridPutMusic "drums up" 2 \drummode {
  \repeat unfold 2 {
    cymr4 <toml sn> toml <toml sn> |
    \repeat percent 2 {
      \repeat unfold 2 { toml4 <toml sn> } |
    }
  }
  \alternative {
    { \repeat unfold 2 { toml8 sn sn sn } | }
    { toml4 \slurDown \drag sn8 sn tomml8 tomml toml toml | }
  }
}

\gridPutMusic "drums down" 2 \drummode {
  \repeat unfold 2 {
    bd4 bd bd bd |
    \repeat percent 2 {
      bd4 bd bd bd |
    }
  }
  \alternative {
    { bd8 r bd r bd r bd r | }
    { bd4 bd8 r bd r bd r | }
  }
}


\gridPutMusic "drums down" 3 \drummode {
  \todoOn
  \repeat unfold 8 { \repeat unfold 4 { bd4 } }
  \todoOff
}


\gridPutMusic "drums down" 4 \drummode {
  \todoOn
  \repeat unfold 16 { \repeat unfold 4 { bd4 } }
  \todoOff
}


\gridPutMusic "drums down" 5 \drummode {
  \todoOn
  \repeat unfold 14 { \repeat unfold 4 { bd4 } }
  \todoOff
}

\gridPutMusic "drums down" 6 \drummode {
  \todoOn
  \repeat unfold 2 { \repeat unfold 4 { bd4 } }
  \todoOff
}
