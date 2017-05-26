\gridPutMusic "drums up" 1 \drummode {
  \override MultiMeasureRest.staff-position = #2
  \override Rest.staff-position = #0
  \repeat volta 2 {
    R1 |
    r2 s |
  }
  \alternative {
    { R1 |
      r2 s | }
    { R1 |
      sn16 sn sn sn tomml sn sn sn tomml tomml toml toml toml toml toml toml | }
  }
}

\gridPutMusic "drums down" 1 \drummode {
  \once \override Staff.InstrumentName.extra-offset = #'(41 . 0)
  \repeat volta 2 {
    \bye s1 |
    s2 \hi \once \set Staff.forceClef = ##t <bd sn>4 <bd sn> |
  }
  \alternative {
    { \bye s1 |
      s2 \hi <bd sn>4 <bd sn> | }
    { \bye s1 |
      \hi bd4 bd bd bd | }
  }
}


\gridPutMusic "drums up" 2 \drummode {
  \repeat volta 2 {
    cymr1 ~ |
    cymr2
%{
    <<
      {
%}
        hho4 cymc |
%{
      } \new DrumStaff \with {
        drumStyleTable = #preston-drums
        instrumentName = "Drums"
        \omit TimeSignature
      } {
        <<
          \new DrumVoice {
            \voiceOne
            cymr4 hho |
          }
          \new DrumVoice {
            \voiceTwo
            bd8 bd <bd sn> \once \slurUp \flam <bd sn> |
          }
        >>
      }
    >>
%}
  }
  \alternative {
    { hh4 s2. |
      s1 | }
    { hhho4 s2. |
      cymr4 cymr cymr2 | }
  }
}

\gridPutMusic "drums down" 2 \drummode {
  \slurUp
  \repeat volta 2 {
    bd4 <toml sn>8 toml <bd toml> toml <toml sn> toml |
    <bd toml>8 toml <toml sn> <bd toml sn> bd bd sn bd |
  }
  \alternative {
    { bd4 <toml sn>8 toml <bd toml> toml <toml sn> toml |
      <bd toml>8 toml <toml sn> toml <bd toml> <toml sn> <bd toml sn> <toml sn> | }
    { bd4 <toml sn>8 toml <bd toml> toml <toml sn> \flam <bd toml sn> |
      bd8[ \flam sn] bd[ \flam sn] bd sn <bd sn> sn | }
  }
}


\gridPutMusic "drums up" 3 \drummode {
  \slurDown
  \repeat volta 4 {
    cymr4 hhho8 hhho hhho hhho hhho hhho |
    hhho8 hhho hhho hhho cymc4 cymr |
  }
  \alternative {
    { cymr4 hhho8 hhho hhho hhho hhho hhho |
      hhho8 hhho hhho hhho cymc4 cymr | }
    { cymc4 cymr8 cymr cymr cymr cymr cymr |
      cymr16 \flam sn sn sn tomml sn sn sn tomml tomml toml toml toml toml toml toml | }
  }
}

\gridPutMusic "drums down" 3 \drummode {
  \slurUp
  \repeat volta 4 {
    bd4 sn8 \flam sn bd bd sn \flam sn |
    bd8 r sn8 \flam <bd sn> bd4 sn |
  }
  \alternative {
    { bd4 sn8 \flam sn bd bd sn \flam <bd sn> |
      bd8 r sn8 \flam sn bd4 sn | }
    { bd4 sn8 sn r bd sn \flam <bd sn> |
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
      r4 r8 s hhho4 hhho4 | }
    { cyms4 hhho8 hhho hhho hhho hhho hhho  |
      cymr16 sn sn sn tomml sn sn sn tomml tomml toml toml toml toml toml toml | }
  }
}

\gridPutMusic "drums down" 5 \drummode {
  \repeat volta 2 {
    bd4 \bye s s2 |
%{
    <<
      {
%}
        s2 \hi <bd sn>4 <bd sn> |
%{
      }
      \new DrumStaff \with {
        drumStyleTable = #preston-drums
        instrumentName = "Drums"
        \omit Clef
        \omit TimeSignature
      } {
        <<
          \new DrumVoice {
            \voiceOne s2
            hhho4 hhho |
          }
          \new DrumVoice {
            \voiceTwo
            \bye s4 s8 \hi bd sn bd sn bd |
          }
        >>
      }
    >>
%}
  }
  \alternative {
    { \bye s1 |
      s4 s8 \hi bd sn bd sn bd | }
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
