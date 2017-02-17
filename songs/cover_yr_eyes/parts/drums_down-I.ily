\include "global.ily"

\gridPutMusic "drums down" 1
\drummode {
  \repeat percent 2 {
    \repeat percent 2 {
      bd4 sn8 bd r bd sn << { \slurUp \stemDown \drag \once \omit Flag sn } \\ { bd } >> |
    }
  }
  \repeat percent 3 {
    bd4 sn8 bd r bd sn << { \slurUp \stemDown \drag \once \omit Flag sn } \\ { bd } >> |
  }
  <hhp bd>16 sn <bd sn> sn bd sn <bd sn> sn bd8 bd bd bd |
}

\gridCompileCell "drums down" 1
