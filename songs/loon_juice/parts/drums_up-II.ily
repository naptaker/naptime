\include "global.ily"

\gridPutMusic "drums up" 2
\drummode {
  \repeat volta 2 {
    cymr4 <toml sn>8 toml toml toml <toml sn> toml |
    %% <<
    %%   {
    toml8 toml <toml sn> \flam <toml sn> hho4 <sn cymc> |
    %%   } \new DrumStaff \with {
    %%     \omit TimeSignature
    %%   } {
    %%     \drummode {
    %%       <<
    %%         { toml8 toml <toml sn> \flam <toml sn> cymr4 <sn hho>8 \flam sn | } \\
    %%         { bd4. bd8 bd bd bd bd | }
    %%       >>
    %%     }
    %%   }
    %% >>
  }
  \alternative {
    { hh4 <toml sn>8 toml toml toml <toml sn> toml |
      toml8 toml <toml sn> toml toml <toml sn> <toml sn> <toml sn> | }
    { hhho4 <toml sn>8 toml toml toml <toml sn> \flam <toml sn> |
      cymr8 \flam sn cymr \flam sn cymr sn sn sn | }
  }
}

\gridCompileCell "drums up" 2
