\gridPutMusic "bass" 1 \relative c, {
  \repeat volta 2 {
    \include "notes/bass-I.ily"
  }
}

\gridPutMusic "bass" 2 \relative c, {
  \repeat volta 2 {
    \include "notes/bass-I.ily"
  }
}

\gridPutMusic "bass" 3 \relative c, {
  \repeat volta 4 {
    \include "notes/bass-III.ily"
  }
  \alternative {
    %% 1-3.
    { \include "notes/bass-IIIa.ily" }
    %% 4.
    { \include "notes/bass-IIIb.ily" }
  }
}

\gridPutMusic "bass" 4 \relative c, {
  \repeat volta 2 {
    \include "notes/bass-IV.ily"
  }
}

\gridPutMusic "bass" 9 \relative c, {
  \repeat unfold 2 {
    \include "notes/bass-IV.ily"
  }
  \repeat volta 2 {
    \include "notes/bass-IX.ily"
    \include "notes/bass-IV.ily"
  }
}
