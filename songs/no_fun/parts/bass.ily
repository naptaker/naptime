\gridPutMusic "bass" 2 \relative c, {
  \repeat unfold 4 {
    c4 c8 c4 g8 g g |
    a4 a8 a4 a8 a g |
  }
  \alternative {
    { ees'8 ees ees ees ees f f c |
      c4 c8 c4 bes8 bes bes | }
    { ees8 ees ees ees ees f f c |
      c4 c8 c4 bes8 bes bes | }
    { ees8 ees ees ees ees f f c |
      c4 c8 c4 bes8 bes bes | }
    { ees8 ees ees ees ees f f c |
      c4 c8 c4 }
  }
}


\gridPutMusic "bass" 3 \relative c, {
  \repeat volta 4 {
    \include "notes/bass-IIIa.ily"
  }
  \alternative {
    { \include "notes/bass-IIIb.ily" }
    { \include "notes/bass-IIIc.ily" }
  }
}


\gridPutMusic "bass" 4 \relative c, {
  \repeat volta 3 {
    \repeat percent 4 {
      bes4 bes8 bes4. g4 |
    }
  }
  \alternative {
    { ees'8 ees ees ees f4 des | }
    { ees8 ees ees ees d4 des | }
    { ees8 ees ees ees d }
  }
}


\gridPutMusic "bass" 5 \relative c, {
  r8 r4 |
  \bye R1*2 |
}
