\gridPutMusic "bass" 2 \relative c, {
  \repeat unfold 2 {
    \include "notes/bass-II.ily"
  }
}

\gridPutMusic "bass" 3 \relative c, {
  \repeat unfold 2 {
    \include "notes/bass-III.ily"
  }
}

\gridPutMusic "bass" 4 \relative c, {
  \repeat unfold 2 {
    \include "notes/bass-IV.ily"
  }
}

\gridPutMusic "bass" 5 \relative c, {
  \repeat unfold 2 {
    \include "notes/bass-V.ily"
  }
}

\gridPutMusic "bass" 6 \relative c, {
  \include "notes/bass-VI.ily"
  \bar "||"
}

\gridPutMusic "bass" 7 \relative c, {
  R1*4
  \repeat percent 24 {
    \include "notes/bass-VII.ily"
  }
}

\gridPutMusic "bass" 8 \relative c, {
  \include "notes/bass-VIII.ily"
}

\gridPutMusic "bass" 9 {
  \relative c, {
    \repeat unfold 2 {
      \include "notes/bass-II.ily"
    }
  }
  \relative c, {
    \repeat unfold 2 {
      \include "notes/bass-III.ily"
    }
    \include "notes/bass-IX.ily"
  }
}
