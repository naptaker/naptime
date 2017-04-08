\gridPutMusic "guitar strum" 3 {
  <<
    { f1 ~ |
      f1 |
    } \\ {
      s1\startTrillSpan |
      s2. s8. s16\stopTrillSpan
    }
  >>
}

\gridPutMusic "guitar strum" 4 {
  \repeat volta 4 {
    f4. f f4 |
    as4-! r bes-! c-! |
  }
  \alternative {
    { f4. f f4 |
      as4-! b-! bes-! ges-! }
    { c8 c c c as as c as |
      b8 b g g bes bes ges \parenthesize ges | }
  }
}

\gridPutMusic "guitar strum" 5 {
  \repeat unfold 2 {
    #(make-music 'DoublePercentEvent 'length (ly:make-moment 2/1))
  }
  f4. f f4 |
  << { f1 } \\ { s2.\startTrillSpan s8. s16\stopTrillSpan } >> |
}

\gridPutMusic "guitar strum" 6 {
  f4
}
