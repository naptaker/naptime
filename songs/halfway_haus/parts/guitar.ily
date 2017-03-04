\include "notation-snippets/guitar-string-bending/definitions.ily"

\gridPutMusic "guitar" 1 \relative c {
  \repeat unfold 4 {
    \include "notes/guitar-I.ily"
  }
}

\gridPutMusic "guitar" 2 {
  \relative fis, {
    \repeat unfold 3 {
      \include "notes/guitar-IIa.ily"
      \include "notes/guitar-IIb.ily"
    }
  }
  \relative fis, {
    \include "notes/guitar-IIa.ily"
    \include "notes/guitar-IIc.ily"
  }
}
