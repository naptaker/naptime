\gridPutMusic "drums up" 1 \drummode {
  \override MultiMeasureRest.staff-position = #2
  \override Rest.staff-position = #0
  \repeat volta 2 {
    R1 |
    r2 sn4 sn |
  }
  \alternative {
    { R1 |
      r2 sn4 sn | }
    { R1 |
      sn16 sn sn sn tomml sn sn sn tomml tomml toml toml toml toml toml toml | }
  }
}

\gridPutMusic "drums down" 1 \drummode {
  \repeat volta 2 {
    s1 |
    s2 bd4 bd |
  }
  \alternative {
    { s1 |
      s2 bd4 bd | }
    { s1 |
      bd4 bd bd bd | }
  }
}


\gridPutMusic "drums up" 2 \drummode {
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

\gridPutMusic "drums down" 2 \drummode {
  \repeat volta 2 {
    bd2 bd |
    bd4. bd8 bd bd4 bd8 | % bd4. bd8 bd \once \tieUp bd ~ bd bd |
    % bd4. bd8 bd bd bd bd |
  }
  \alternative {
    { bd2 bd |
      bd2 bd4 bd | }
    { bd2 bd4. bd8 |
      bd4 bd bd bd | }
  }
}


\gridPutMusic "drums up" 3 \drummode {
  \slurDown
  \repeat volta 4 {
    cymr4 <sn hhho>8 \flam <sn hhho> hhho8 hhho <sn hhho> \flam <sn hhho> |
    hhho8 hhho <sn hhho> \flam <sn hhho> cymc4 <sn cymr> |
  }
  \alternative {
    { cymr4 <sn hhho>8 \flam <sn hhho> hhho8 hhho <sn hhho> \flam <sn hhho> |
      hhho8 hhho <sn hhho> \flam <sn hhho> cymc4 <sn cymr> | }
    { cymc4 <sn cymr>8 <sn cymr> cymr cymr <sn cymr> \flam <sn cymr> |
      cymr16 \flam sn sn sn tomml sn sn sn tomml tomml toml toml toml toml toml toml | }
  }
}

\gridPutMusic "drums down" 3 \drummode {
  \repeat volta 4 {
    bd2 bd8 bd s4 |
    bd4. bd8 bd2 |
  }
  \alternative {
    { bd2 bd8 bd4 bd8 |
      bd2 bd | }
    { bd2 s8 bd s bd | % FIXME
      bd8 bd bd bd bd bd bd bd | }
  }
}


\gridPutMusic "drums up" 4 \drummode {
  \repeat volta 2 {
    cymr4 cymr8 cymr cymr cymr cyms4 |
    cymc8 cymr cymr cymr cymr cymr cyms4 |
    cymc8 cymr cymr cymr cymr cymr cyms4 |
    cyms8 cyms cyms cyms cyms32 \drag sn sn sn tomml sn sn sn tomml tomml
    \repeat unfold 6 { toml } |
  }
}

\gridPutMusic "drums down" 4 \drummode {
  \slurUp \tieUp
  \repeat volta 2 {
    bd4 sn8 r16 bd ~ bd \flam sn16 bd bd sn bd8 bd16 |
    bd4 sn8 r16 bd ~ bd \flam sn16 bd bd sn bd
    << { sn:32 sn:32 } \\ { bd bd } >> |
    bd4 sn8 r16 bd ~ bd \flam sn16 bd bd sn bd8 bd16 |
    \repeat unfold 4 { <bd sn>16 bd } \repeat unfold 8 { bd16 } |
  }
}

\gridPutMusic "drums up" 5 \drummode {
  \repeat volta 2 {
    cymc4^+ r r2 |
    r2 hhho4 hhho |
  }
  \alternative {
    { R1 |
      r2 hhho4 hhho4 | }
    { cyms4 hhho8 hhho hhho hhho hhho hhho  |
      cymr16 sn sn sn tomml sn sn sn tomml tomml toml toml toml toml toml toml | }
  }
}

\gridPutMusic "drums down" 5 \drummode {
  \repeat volta 2 {
    bd4 s s2 |
    <<
      { s2 <bd sn>4 <bd sn> | }
      \new DrumStaff \with {
        drumStyleTable = #preston-drums
        instrumentName = "Drums"
      } {
        <<
          \new DrumVoice {
            \voiceOne
            \override Rest.staff-position = #0 r4 r8 s
            hhho4 hhho |
          }
          \new DrumVoice {
            \voiceTwo
            s4 s8 bd sn bd sn bd |
          }
        >>
      }
    >>
  }
  \alternative {
    { s1 |
      s4 s8 bd sn bd sn bd | }
    { bd4 sn8 sn bd bd sn \flam <bd sn> |
      \repeat unfold 8 { bd8 } | }
  }
}


\gridPutMusic "drums up" 6 \drummode {
  cymr4
}

\gridPutMusic "drums down" 6 \drummode {
  <bd sn>4
}
