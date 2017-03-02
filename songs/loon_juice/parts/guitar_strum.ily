\gridPutMusic "guitar strum" 2 \relative c {
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

\gridPutMusic "guitar strum" 4 \relative c {
  \repeat volta 2 {
    \include "notes/guitar_strum-IV.ily"
  }
}
