\gridPutMusic "guitar" 1 \relative c' {
  \include "notes/guitar-I.ily"
}


\gridPutMusic "guitar" 3 {
  <<
    {
      \relative c' {
        \walkerHeadsMinor
        \override TabNoteHead.font-size = #-4.5
        \include "notes/guitar-III.ily"
      }
    } \\ {
      \relative c' {
        \include "notes/guitar-I.ily"
      }
    }
  >>
}


\gridPutMusic "guitar" 4 \relative c {
  \voiceNeutralStyle
  \repeat volta 2 {
    <<
      {
        \bye
        \once \override Staff.BarLine.break-visibility = #begin-of-line-invisible
        s1*3
        \startStaff
        s1
      } \\ {
        s1*3 |
        \ottava #1
        \include "notes/guitar-IV.ily"
        \ottava #0
      }
    >>
  }
}


\gridPutMusic "guitar" 5 \relative c' {
  \include "notes/guitar-V.ily"
}


\gridPutMusic "guitar" 6 \relative c {
  <g d' g b>4
}
