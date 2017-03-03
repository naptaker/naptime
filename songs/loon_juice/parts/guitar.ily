\gridPutMusic "guitar" 1 \relative c' {
  \include "notes/guitar-I.ily"
}

\gridPutMusic "guitar" 3 {
  << { \relative c' { \include "notes/guitar-III.ily" } } \\
     { \relative c' { \include "notes/guitar-I.ily"   } } >>
}

\gridPutMusic "guitar" 4 \relative c {
  \repeat volta 2 {
    <<
      {
        \stopStaff
        \once \override Staff.BarLine.break-visibility = #begin-of-line-invisible
        \once \omit Staff.Clef \once \omit Staff.ClefModifier
        s1*3
        \startStaff
        s1
      } \\ {
        \include "notes/guitar-IV.ily"
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
