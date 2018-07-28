\gridPutMusic "guitar strum" 2 {
  \bye s1*15 |
  s2 s8
}


\gridPutMusic "guitar strum" 3 {
  \hi
  \repeat volta 4 {
    bes8 bes bes |
    c4 c8 c4 g8 g g |
    a4 a8 a4 a8 a g |
    ees'8 ees ees ees ees f f c |
  }
  \alternative {
    { c4 c8 c4 }
    { c4 c8 c4. b4 }
  }
}


\gridPutMusic "guitar strum" 4 {
  \repeat volta 3 {
    \repeat percent 4 {
      bes4 bes8 bes4. g4 |
    }
  }
  \alternative {
    { ees'8 ees ees ees f4 des | }
    { ees8 ees ees ees d d des des | }
    { ees8 ees ees ees d }
  }
}


\gridPutMusic "guitar strum" 5 {
  r8 r4 |
  \bye s1*2 |
}