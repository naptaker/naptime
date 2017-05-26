\gridPutMusic "guitar strum" 1 \relative c {
  #(let ((y -7.24))
     #{
       \override Beam.extra-offset = #`(0 . ,y)
       \override Dots.extra-offset = #`(0 . ,y)
       \override NoteHead.no-ledgers = ##t
       \override Rest.extra-offset = #`(0 . ,y)
       \override Staff.BarLine.extra-offset = #`(0 . ,y)
       \override Staff.NoteHead.extra-offset = #`(0 . ,y)
       \override Staff.StaffSymbol.extra-offset = #`(0 . ,y)
       \override Stem.extra-offset = #`(0 . ,y)
       \override TupletNumber.extra-offset = #`(0 . ,y)
       \override PercentRepeat.extra-offset = #`(0 . ,y)
       \override DoublePercentRepeat.extra-offset = #`(0 . ,y)
       \override Staff.TimeSignature.extra-offset = #`(0 . ,y)
     #})

  \repeat percent 2 {
    \repeat percent 2 {
      \include "notes/guitar_strum-I.ily"
    }
  }

  \once \override Staff.BarLine.bar-extent = #'(-7.24 . -7.24)
  \stopStaff
  \once \omit Staff.TimeSignature
  s1*4
}

\gridPutMusic "guitar strum" 3 \relative c {
  \revert Beam.extra-offset
  \revert Dots.extra-offset
  \revert NoteHead.no-ledgers
  \revert Rest.extra-offset
  \revert Staff.BarLine.extra-offset
  \revert Staff.NoteHead.extra-offset
  \revert Staff.StaffSymbol.extra-offset
  \revert Stem.extra-offset
  \revert TupletNumber.extra-offset
  \revert PercentRepeat.extra-offset
  \revert DoublePercentRepeat.extra-offset
  \revert Staff.TimeSignature.extra-offset
  \startStaff
  \include "notes/guitar_strum-III.ily"
  \stopStaff
}

\gridPutMusic "guitar strum" 5 \relative c {
  #(let ((y -7.24))
     #{
       \override Beam.extra-offset = #`(0 . ,y)
       \override Dots.extra-offset = #`(0 . ,y)
       \override NoteHead.no-ledgers = ##t
       \override Rest.extra-offset = #`(0 . ,y)
       \override Staff.BarLine.extra-offset = #`(0 . ,y)
       \override Staff.NoteHead.extra-offset = #`(0 . ,y)
       \override Staff.StaffSymbol.extra-offset = #`(0 . ,y)
       \override Stem.extra-offset = #`(0 . ,y)
       \override TupletNumber.extra-offset = #`(0 . ,y)
       \override PercentRepeat.extra-offset = #`(0 . ,y)
       \override DoublePercentRepeat.extra-offset = #`(0 . ,y)
       \override Staff.TimeSignature.extra-offset = #`(0 . ,y)
       \once \override Staff.BarLine.bar-extent = #`(,y . ,y)
     #})

  \startStaff
  d4
}
