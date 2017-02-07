\include "global.ily"

\gridPutMusic "guitar" 3 {
  << { \relative c' { \include "notes/guitar-III.ily" } } \\
     { \relative c' { \include "notes/guitar-I.ily"   } } >>
}

\gridCompileCell "guitar" 3
