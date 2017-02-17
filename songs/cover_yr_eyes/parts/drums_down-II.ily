\include "global.ily"

\gridPutMusic "drums down" 2
\drummode {
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

\gridCompileCell "drums down" 2
