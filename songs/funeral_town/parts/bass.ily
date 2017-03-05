\gridPutMusic "bass" 1 \relative es, {
  \override Glissando.breakable = ##t
  \override Glissando.after-line-breaking = ##t
  \omit Staff.Clef \omit Staff.ClefModifier
  \once \omit Staff.TimeSignature
  \stopStaff \hideNotes \omit MultiMeasureRest
  R1*7 |
  r2

  \startStaff \unHideNotes \undo \omit MultiMeasureRest
  \undo \omit Staff.Clef \undo \omit Staff.ClefModifier
  \set Staff.forceClef = ##t
  \clef "bass_8"
  \Key
  bes2\glissando |
}

\gridPutMusic "bass" 2 {
  \repeat volta 3 {
    \relative es, {
      \include "notes/bass-IIa.ily"
    }
    \relative es, {
      \include "notes/bass-IIb.ily"
    }
  }
}

\gridPutMusic "bass" 3 \relative es, {
  \repeat unfold 3 {
    ees1 |
    d2 b2 |
  }
}

\gridPutMusic "bass" 4 \relative es,, {
  \include "notes/bass-VIa.ily"
  \include "notes/bass-VIb.ily"
}


\gridPutMusic "bass" 5 \relative es, {
  es2 ~ es8 es es es |
  d8 d d d b b b ges |
}

\gridPutMusic "bass" 6 \relative es, {
  es4 es8 es es es es es |
  d8 d d d b b b b |
  es8 es es es es es es es |
  d8 d d d b b es4\glissando |

}

\gridPutMusic "bass" 7 \relative es,, {
  aes1 |
  g2 e |
  a1 |
  aes1 |
  bes1 |
  a2\glissando % FIXME: \bendAfter #2
  ges2\glissando |
}

\gridPutMusic "bass" 8 \relative es, {
  \once \tieDown
  es1 ~ | es1 |
}
