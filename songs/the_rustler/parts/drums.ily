\gridPutMusic "drums up" 1 \drummode {
  cymc4 hh hh hh |
  hh4 hh hh hh |
  hh4 hh hh hh |
  r4 tomml8 tomml toml toml toml toml |
}

\gridPutMusic "drums down" 1 \drummode {
  bd4 r sn r |
  bd8 bd r4 sn r |
  bd4 r sn r8 bd |
  \slurUp
  \drag sn8 <bd sn> r bd r bd r bd |
}


\gridPutMusic "drums up" 2 \drummode {
  cymr4 hh hh hh |
  hh4 hh hh hho |
  hh4 hh hh hh |
  hh4 hh hh hho |
  hh4 hh cyms hh |
  hh4 hh hh hho |
  cyms4 cymr cymr cymr |
  cymr4 cymr cymr cymr |
}

\gridPutMusic "drums down" 2 \drummode {
  bd4 r sn r |
  bd4 bd8 bd sn bd8 r \drag <bd sn>8 |
  bd4 r sn r |
  bd4 bd8 bd sn bd sn bd |
  bd4 r sn r |
  bd4 bd8 bd8 sn4 r8 \drag <bd sn> |
  bd4 r sn r8 bd ~ |
  bd4 \drag <bd sn>8 bd sn bd8 r bd8 |
}


\gridPutMusic "drums up" 3 \drummode {
  cymr4.
  \slurDown
  \once \override Stem.length = #4
  \once \override Slur.height-limit = #0.5
  \appoggiatura { toml8 [ toml ] }
  toml4.
  \once \override Stem.length = #4
  \once \override Slur.height-limit = #0.5
  \appoggiatura { toml8 [ toml ] }
  toml4:16 |
  toml1:16 |
}

\gridPutMusic "drums down" 3 \drummode {
  bd4. bd bd4 |
  bd4 bd bd bd |
}


\gridPutMusic "drums up" 4 \drummode {
  \repeat volta 4 {
    cymr4 cymr8 cymr cymr cymr cymr cymr |
    cyms4 cymc cyms tomml16 tomml toml toml |
  }
  \alternative {
    { cymr4 cymr8 cymr cymr cymr cymr cymr |
      cyms4 cymc <toml sn>8 r <toml sn>4 | }
    { cymr4 cymr8 cymr cymr cymr cymr cymr |
      cymr8 cymr cymr cymr cymr cymr cymr cymr | }
  }
}

\gridPutMusic "drums down" 4 \drummode {
  \repeat volta 4 {
    bd4 sn8 bd r bd sn \drag <bd sn> |
    bd4 sn bd16 sn <bd sn> sn bd4 |
    %% << { \voiceTwoStyle sn16 sn sn sn } \\ { bd4 } >> |
  }
  \alternative {
    { bd4 sn8 bd r bd sn \drag <bd sn> |
      bd4 sn bd8 bd r4 | }
    { bd4 sn8 sn bd bd sn sn |
      r8 bd sn sn r bd sn \drag <bd sn> | }
  }
}


\gridPutMusic "drums up" 5 \drummode {
  cymc4 hhho8 hhho hhho hhho hhho hhho |
  hhho8 hhho hhho hhho hhho hhho hhho cyms |
  cymr4 <toml sn>8 <toml sn> toml toml <toml sn> <toml sn> |
  toml8 toml <toml sn> \drag sn cymr4 tomml16 tomml toml toml |
  \gridGetCellMusic "drums up" 3
}

\gridPutMusic "drums down" 5 \drummode {
  bd4 sn8 sn bd bd sn sn |
  bd8 bd sn sn bd bd sn \drag <bd sn> |
  bd4 r bd8 r r4 |
  bd8 r r <bd toml> bd16 sn <bd sn> sn bd8 bd |
  bd4. bd bd4 |
  bd4 bd8 bd bd bd bd bd |
}


\gridPutMusic "drums up" 6 \drummode {
  cyms4
}

\gridPutMusic "drums down" 6 \drummode {
  <bd sn>4
}
