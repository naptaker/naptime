\include "global.ily"

\gridPutMusic "guitar strum" 2
\relative c {
  <<
    {
      \include "notes/guitar_strum-II.ily" }
    \\ {
      \repeat volta 2 {
        s1.\startTrillSpan s4\stopTrillSpan s4 |
      }
      \alternative {
        { s1.\startTrillSpan s4\stopTrillSpan s4 | }
        { s1\startTrillSpan | s1\stopTrillSpan | }
      }
    }
  >>
}

\gridCompileCell "guitar strum" 2
