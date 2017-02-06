\include "global.ily"

\gridPutMusic "guitar" 3 {
  % \bar ".|:"
  % \repeat volta 2 {
    << { \relative c' { \include "notes/guitar-III.ily" } } \\
       { \relative c' { \include "notes/guitar-I.ily"   } } >>
  % }
  % \bar ":|."
}

\gridCompileCell "guitar" 3
