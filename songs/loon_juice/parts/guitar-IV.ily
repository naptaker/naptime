\include "global.ily"

\gridPutMusic "guitar" 4
\relative c {
  \repeat volta 2 {
    <<
      {
        \stopStaff
        \once \omit Staff.BarLine
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

\gridCompileCell "guitar" 4
