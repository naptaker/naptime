\include "global.ily"

\gridPutMusic "guitar strum" 4
\relative c {
  s1*7
  %% HACK
  s2. s4^\markup { \translate #'(-9.5 . 0) "D.S. al Fine" }
}

\gridCompileCell "guitar strum" 4
