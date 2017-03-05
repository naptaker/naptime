\gridPutMusic "guitar strum" 1 \relative es {
  % \stopStaff
  % \override Beam.extra-offset = #'(0 . -9.35)
  % \override Dots.extra-offset = #'(0 . -9.35)
  % \override NoteHead.no-ledgers = ##t
  % \override Rest.extra-offset = #'(0 . -9.35)
  % \override Staff.BarLine.extra-offset = #'(0 . -9.35)
  % \override Staff.NoteHead.extra-offset = #'(0 . -9.35)
  % \override Staff.StaffSymbol.extra-offset = #'(0 . -9.35)
  % \override Stem.extra-offset = #'(0 . -9.35)
  % \override TupletNumber.extra-offset = #'(0 . -9.35)

  % \override Score.ChordName.extra-offset = #'(0 . -9.35)
  % \override Score.FretBoard.extra-offset = #'(0 . -9.35)

  s1*4
  % \once \override Staff.BarLine.bar-extent = #'(-8 . -8)

  % \startStaff
  \include "notes/guitar_strum-I.ily"
}

\gridPutMusic "guitar strum" 2 \relative es {
  \repeat volta 3 {
    s1*4
    \include "notes/guitar_strum-I.ily"
  }
}

\gridPutMusic "guitar strum" 4 \relative es {
  \include "notes/guitar_strum-IV.ily"
  s1*4
}

\gridPutMusic "guitar strum" 7 \relative es, {
  \include "notes/guitar_strum-VII.ily"
}

\gridPutMusic "guitar strum" 8 \relative es, {
  d1 |
  ees1\stopTrillSpan |
}
