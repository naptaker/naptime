\include "global.ily"

\gridPutMusic "drums up" 2
\drummode {
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

\gridCompileCell "drums up" 2
