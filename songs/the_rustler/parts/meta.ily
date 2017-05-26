\gridPutMusic "meta" 1 {
  \once \override Score.MetronomeMark.extra-offset = #'(-5 . -14)
  \global s1*4
}

\gridPutMusic "meta" 2 {
  \repeat volta 2 {
    s1*8
  }
  \break
}

\gridPutMusic "meta" 3 {
  s1*2 \noBreak
}

\gridPutMusic "meta" 4 {
  \set Score.repeatCommands = #'(start-repeat)
  s1 \noBreak
  s1 \break
  \set Score.repeatCommands = #'((volta "1, 3"))
  s1 \noBreak
  s1 \noBreak
  \set Score.repeatCommands = #'((volta #f) (volta "2, 4") end-repeat)
  s1 \noBreak
  s1
  \bar ":|."
  \break
}

\gridPutMusic "meta" 5 {
  s1*5
  s2.
  \once \override Score.RehearsalMark.extra-offset = #'(7 . -7)
  \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \mark "D.C. al Fine"
  s4
  \bar "||"
  \noBreak
}

\gridPutMusic "meta" 6 {
  s4
  \bar "|."
}
