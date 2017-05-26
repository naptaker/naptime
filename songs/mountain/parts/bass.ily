\gridPutMusic "bass" 1 {
  \relative c, {
    \repeat unfold 7 {
      \include "notes/bass-Ia.ily"
    }
    \include "notes/bass-Ib.ily"
  }

  \relative c, {
    \repeat volta 2 {
      \set countPercentRepeats = ##t
      \repeat percent 3 {
        \include "notes/bass-Ia.ily"
      }
    }
    \alternative {
      { \include "notes/bass-Ic.ily" }
      { \include "notes/bass-Ib.ily" }
    }
  }
}

\gridPutMusic "bass" 2 \relative c,, {
  \include "notes/bass-IIa.ily"
  \include "notes/bass-IIb.ily"
  \include "notes/bass-IIc.ily"
  \include "notes/bass-IId.ily"
}

\gridPutMusic "bass" 3 \relative c, {
  \repeat volta 4 {
    \include "notes/bass-IIIa.ily"
    \include "notes/bass-IIIb.ily"
  }
}

\gridPutMusic "bass" 4 \relative c, {
  \repeat volta 4 {
    \set countPercentRepeats = ##f
    \repeat percent 2 {
      \include "notes/bass-IIIa.ily"
      \include "notes/bass-IV.ily"
    }
  }
}

\gridPutMusic "bass" 5 {
  \relative c, {
    \set countPercentRepeats = ##t
    \repeat percent 4 {
      \include "notes/bass-IIIa.ily"
      \include "notes/bass-IIIb.ily"
    }
    \relative c, {
      \repeat percent 7 {
        \include "notes/bass-Ia.ily"
      }
      \include "notes/bass-Ib.ily"
    }
  }
}

\gridPutMusic "bass" 6 {
  \relative c, {
    \repeat percent 3 {
      \include "notes/bass-Ia.ily"
    }
    \include "notes/bass-Ic.ily"
  }
  \relative c, {
    \repeat percent 3 {
      \include "notes/bass-Ia.ily"
    }
    \include "notes/bass-Ib.ily"
  }
}

\gridPutMusic "bass" 7 \relative c, {
  \repeat volta 2 {
    \repeat percent 3 {
      \include "notes/bass-Ia.ily"
    }
  }
  \alternative {
    { \include "notes/bass-Ib.ily" }
    { \include "notes/bass-Ic.ily" }
  }
}
